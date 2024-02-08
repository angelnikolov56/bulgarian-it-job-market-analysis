library(tidyverse)

all_jobs_data <- readRDS("data/dev.bg-jobs.rds")

glimpse(all_jobs_data)

# Check for duplicates
sum(duplicated(all_jobs_data))

# Check if all duplicate rows have multiple categories 
all_jobs_data %>% 
  filter(duplicated(.)) %>%
  mutate(item_count = map_int(categories, length)) %>%
  filter(item_count == 1) 

# Remove duplicates
all_jobs_data_clean <- all_jobs_data %>% distinct()

# Transform the hybrid column to have more valuable information
all_jobs_data_clean <- all_jobs_data_clean %>% mutate(hybrid = case_when(hybrid == TRUE ~ "Hybrid",
                                                                         hybrid == FALSE & location == "Fully Remote" ~ "Fully Remote",
                                                                         TRUE ~ "Office-based")) %>% 
  rename(work_model = hybrid)

# Seperate the salary range column into 2 columns with minimum and maximum value, convert the new columns to numeric type to enable aggregation operations
all_jobs_data_clean <- all_jobs_data_clean %>% separate(col = salary,
                                                        into = c("salary_min", "salary_max"),
                                                        sep = "-") %>% 
  mutate(salary_min = str_remove_all(salary_min, " "),
         salary_max = str_remove_all(salary_max, " ")) %>% 
  mutate(across(c(salary_min, salary_max),
                as.numeric)) 

# Trim each category in the category list column
all_jobs_data_clean <- all_jobs_data_clean %>% 
  mutate(categories = map(categories, str_trim))

glimpse(all_jobs_data_clean)

write_rds(all_jobs_data_clean, "data/dev.bg-jobs-clean.rds")
