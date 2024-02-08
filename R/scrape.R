library(tidyverse)
library(rvest)
library(progress)

home_page <- read_html("https://dev.bg/")
categories <- home_page %>% html_nodes(".category-name") %>% html_attr("href")

get_job_info <- function(job_link, seniority) {
  job_page <- read_html(job_link)
  job_title <- job_page %>% html_nodes(".ab-cb-title-placeholder") %>% html_text() %>% str_trim()
  company_name <- job_page %>% html_nodes(".company-name") %>% html_text() %>% str_trim()
  tech_stack <- job_page %>% html_nodes(".size-medium") %>% html_attr("title") 
  categories <- job_page %>% html_nodes(".pill") %>% html_text(trim = TRUE) %>% str_extract("\\D+")
  hybrid <- if_else(length(job_page %>% html_node("span.suffix-hybrid")) > 0, "TRUE", "FALSE")
  node <- job_page %>% html_node("span.badge.blue.has-hidden-text.has-tooltip")
  if (length(node) > 0) {
    salary <- job_page %>% html_node("span.badge.blue.has-hidden-text.has-tooltip") %>% html_text(trim = TRUE) %>% str_extract("\\d{1,3}(?:\\s?\\d{3})* - \\d{1,3}(?:\\s?\\d{3})*")
  } else {
    salary <- NA_character_
  }
  location <- job_page %>% html_node("span.badge") %>% html_text(trim = TRUE)
  job_description <- job_page %>% html_node(".job_description") %>% html_text() 
  tibble(job_title, company_name, job_link, tech_stack = list(tech_stack), categories = list(categories), hybrid, location, salary, job_description, seniority) %>% 
    mutate(location = if_else(hybrid == TRUE, str_trim(str_extract(location, "^(?:\\s*)([\\p{Cyrillic}]+(?:\\s+[\\p{Cyrillic}]+)*)(?:\\s+|\\s+Hybrid)")), location))
}

process_page <- function(url, seniority) {
  page <- tryCatch(read_html(url), error = function(e) return(NULL))
  if (is.null(page)) return(tibble())  # Return an empty tibble if the page couldn't be read (e.g., 404 error)

  job_links <- page %>% html_nodes(".listing-content-wrap .ab-trigger") %>% html_attr("href")
  if (length(job_links) == 0) return(NULL)  # Return NULL if no job links found

  map_dfr(job_links, function(link) get_job_info(link, seniority))
}

seniorities <- c("intern", "junior", "mid-level", "senior", "grand-master")
all_jobs_info <- tibble()

pb <- progress_bar$new(format = "[:bar] :percent :etas", total = length(categories) * length(seniorities), clear = FALSE)

for (category in categories) {
  for (seniority in seniorities) {
   page_number <- 1
   while(TRUE) {
     url <- paste0(category,"?_seniority=", seniority, "&_paged=", page_number)
     page_data <- process_page(url, seniority)
  
     if (is.null(page_data)) break  # Break the loop if no data was returned
  
     all_jobs_info <- bind_rows(all_jobs_info, page_data)
  
     Sys.sleep(5)  # Sleep for a second before the next request
     page_number <- page_number + 1
   }
   pb$tick()
 }
}

saveRDS(all_jobs_info, "data/dev.bg-jobs.rds")