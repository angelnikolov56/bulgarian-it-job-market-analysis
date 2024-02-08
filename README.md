# Introduction

This repository is an analysis of the Bulgarian IT job market. The data
is scraped from the biggest IT job board in the country -
[DEV.BG](https://dev.bg/), with their explicit consent.

**Disclaimer:** Included scraping code is provided solely for
educational and illustrative purposes. It is strongly advised that you
ensure that any web scraping activities you undertake are in full
compliance with the website’s terms of service and its robots.txt file
guidelines.

The data has been scraped, saved as RDS file and cleaned. The code for
these steps is included.

# Objectives of the Analysis

The analysis is driven by a desire to uncover insights into:

-   **Companies Dominating the Job Market**: Identifying which companies
    are actively seeking talent.
-   **Work Models**: Exploring the variety of employment models offered.
-   **Job Locations**: Pinpointing where opportunities are concentrated
    geographically.
-   **Required Seniority Levels**: Understanding experience
    expectations.
-   **Technology Demand**: Highlighting which technical skills are
    currently most sought after.
-   **Technology Count**: Assessing the average number of technologies
    candidates are expected to know.
-   **Category and Specialization Demand**: Identifying the most
    in-demand fields and specializations.
-   **Salary Insights**: Analyzing salary ranges and how they vary by
    category, seniority, and technological expertise. Identifying which
    skills are most lucrative.

# Who Stands to Benefit?

The insights garnered from this analysis are intended to guide:

-   Individuals aiming to kickstart their career in the tech industry.
-   IT professionals contemplating their next career move.
-   HR specialists and hiring managers looking to optimize their
    recruitment strategies.

# Analysis

## Data Import and Preliminary View

    ## Rows: 1,848
    ## Columns: 11
    ## $ job_title       <chr> "Software Developers and Electronics Engineers", "Software Developers and Electronics Engineers", "Software Developers an…
    ## $ company_name    <chr> "Broadcom Bulgaria", "Broadcom Bulgaria", "Broadcom Bulgaria", "TelebidPro", "Luxoft", "iCard", "Sirma", "Catenate Bulgar…
    ## $ job_link        <chr> "https://dev.bg/company/jobads/broadcom-bulgaria-software-developers-and-electronics-engineers/", "https://dev.bg/company…
    ## $ tech_stack      <list> <"English", "Verilog">, <"English", "Verilog">, <"English", "Verilog">, "English", <"English", "Java", "PostgreSQL", "Sp…
    ## $ categories      <list> <"Backend Development", "Junior / Intern">, <"Backend Development", "Junior / Intern">, <"Backend Development", "Junior …
    ## $ work_model      <chr> "Office-based", "Office-based", "Office-based", "Office-based", "Office-based", "Office-based", "Office-based", "Fully Re…
    ## $ location        <chr> "Пловдив", "Варна", "София", "София", "София", "Варна", "Казанлък", "Fully Remote", "София", "София", "София", "София", "…
    ## $ salary_min      <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
    ## $ salary_max      <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
    ## $ job_description <chr> "\n\t\t\t\tDid you know Broadcom is a 200 Billion dollar company?\nDo you want to be a part of this multi-billion company…
    ## $ seniority       <chr> "intern", "intern", "intern", "intern", "intern", "intern", "intern", "intern", "intern", "intern", "intern", "intern", "…

After data validation and cleaning the dataset contains 1,848 rows and
11 columns. Each row represents a unique job offer.

## Who is hiring?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-2-1.png)

The companies are arranged in descending order of job offers, with
“People and Places” - an IT recruiting agency, having the highest number
at 43 job offers. This is closely followed by “Sirma” with 41 offers,
and “Bosch Engineering Center Sofia” with 40 offers. The chart
effectively highlights which companies are the most active employers in
the IT job market, which could be a critical piece of information for
job seekers in the tech industry. It may also reflect the companies’
growth and investment in talent acquisition within the IT sector.

## What working models are offered?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-3-1.png)

-   **Office-based** work model dominates the job market with a
    significant lead, showing 1,012 job offers. This suggests that
    despite the growing trend of remote work, the traditional
    office-based model remains the most common among the listed job
    opportunities.
-   **Hybrid** work model, which typically allows for a combination of
    office and remote work, comes in second with 519 job offers. This
    indicates a substantial presence in the job market, reflecting a
    flexible approach to work arrangements.
-   **Fully Remote** jobs are the least common among the three
    categories, with 317 job offers. While it’s clear that there are
    opportunities for remote work, they are less frequent compared to
    the other work models.

This distribution can provide insights into the current preferences or
policies of companies in the IT sector regarding workplace arrangements.
It also highlights the job market’s response to the evolving demands of
work-life balance and the technological capabilities that enable
different work models.

## Where are jobs located?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-4-1.png)

-   Unsurprisingly, **Sofia** stands out as the leading location with a
    substantial margin, indicating it as the central hub for job offers
    in the IT sector with 1,248 job postings.
-   **Fully Remote** jobs are also significant, with 317 postings,
    demonstrating the availability and acceptance of remote working
    arrangements in the industry.
-   Other locations such as **Varna and Plovdiv** follow, with 120 and
    86 job offers respectively, reflecting a smaller but still notable
    IT job market presence.
-   The rest of the locations, including **Burgas, Ruse, Veliko
    Tarnovo**, and others, have a comparatively lower number of job
    postings, ranging from 23 down to just 1 in **Tutrakan**. These
    figures suggest a steep drop-off in IT job availability outside the
    major cities and remote options.

## What are the expected seniority levels?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-5-1.png)

-   **Mid-level** roles are most prevalent, with 918 job offers,
    showcasing a strong demand for professionals who have gained a solid
    foundation of experience and are likely seeking growth opportunities
    to further their careers.
-   **Senior** positions follow, with 593 opportunities available,
    indicating a significant need within the market for experienced
    individuals who can bring a deeper level of expertise and leadership
    to their roles.
-   **Junior** roles have a notably lower count of 150 job offers. This
    could suggest that the market is currently more oriented towards
    building and strengthening teams with experienced members rather
    than onboarding novices.
-   **Intern** positions number at 108, pointing to a modest but
    important segment focused on inducting new entrants into the
    industry, potentially shaping the future workforce.
-   The **Grand-master** category, which represents Team Lead positions
    and above, has the fewest listings at 79. The lower number of job
    postings for such high-level roles is likely reflective of the fewer
    vacancies that occur at the top of the professional hierarchy,
    coupled with a smaller pool of candidates who possess the necessary
    qualifications and leadership experience to fill these impactful
    positions.

This distribution illustrates a job market with ample opportunities for
mid-career professionals, a robust need for seasoned experts, and a more
selective landscape for both burgeoning talent at the entry-level and
seasoned veterans aspiring to leadership roles. It implies a competitive
environment for those seeking to enter the field, as well as for those
aiming to ascend to the highest echelons of their career trajectory.

## What technologies are required?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-6-1.png)

-   **SQL** leads the chart as the most in-demand technology with 383
    job listings mentioning it, emphasizing its fundamental role in data
    management and analysis across various IT sectors.
-   **Java**, a versatile and widely-used programming language, is also
    highly sought after, appearing in 356 listings. Its prominence
    reflects its longstanding importance in the development of robust
    and scalable applications.
-   **JavaScript**, essential for web development, shows a significant
    demand with 333 mentions. This aligns with the ongoing growth of
    web-based services and applications.
-   **Python** comes next with 279 listings, indicating its strong
    presence, likely due to its simplicity and effectiveness in areas
    such as data science and automation.
-   The list continues with other technologies such as **Git, Linux,
    AWS, React**, and **Docker**, each varying between 192 and 213
    mentions, suggesting a balanced demand for tools related to version
    control, operating systems, cloud services, front-end frameworks,
    and containerization.
-   Technologies like **Kubernetes, C#, .NET, Azure**, and **MySQL**
    range from 127 to 140 mentions, highlighting their relevance in
    areas such as container orchestration, software development, cloud
    computing, and database management.
-   The remaining technologies, including **TypeScript, PostgreSQL,
    Spring, Angular, Node.js**, and **Jira**, each with 100 to 122
    mentions, complete the top 20, showcasing a diverse set of skills
    that employers are seeking, from programming languages to project
    management tools.

The chart offers a clear view of the current technology landscape within
the job market, indicating which skills are most valuable to employers.
It can serve as a guide for job seekers and professionals looking to
upskill or reskill in high-demand areas.

## What number of technologies candidates are expected to know?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-7-1.png)

-   At the top of the list, **Fullstack Development** shows the highest
    average number of technologies required, with 7.64, suggesting that
    full-stack roles demand a broad range of skills, reflecting the
    versatile nature of these positions that encompass both front-end
    and back-end development.
-   **Infrastructure** roles follow closely with an average of 7.33
    technologies. This high number underlines the complexity of managing
    modern IT infrastructures, which may include cloud services,
    networks, and systems administration.
-   **Data Science** positions have an average of 6.56 technologies,
    indicating the multidisciplinary nature of the field, which
    typically requires knowledge of programming, data analysis, machine
    learning, and often domain-specific expertise.
-   **Frontend Development** and **Backend Development** categories
    require an average of 6.27 and 5.84 technologies, respectively.
    These figures highlight the diverse set of tools and frameworks that
    developers must master in their fields.
-   Categories such as **Mobile Development**, **Technical Support**,
    and **Quality Assurance** show a moderate requirement for
    technological diversity, with averages ranging from 4.43 to 5.19.
    These roles are specialized but still require familiarity with a
    variety of tools and platforms.
-   **UI/UX**, **Arts**, and **PM/BA** and more categories reflect lower
    averages, at 3.52 and 2.92, pointing to more focused roles that may
    not require as broad a technical skill set but instead emphasize
    design, project management, or business analysis skills.
-   The **Customer Support** and **Hardware and Engineering** categories
    show the lowest averages, at 1.9 and 1.69, suggesting that these
    roles may be more specialized or have a narrower technological
    focus.

Overall, the chart illustrates the varying degrees of technological
breadth required across different job categories. This information could
be vital for professionals when considering upskilling paths and for
newcomers to identify which fields may align with their interests and
current expertise.

## WHat is the distribution of the number of technologies required by category?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-8-1.png)

-   **Backend Development** exhibits a wide distribution, with several
    outliers indicating that certain job listings demand a significantly
    higher number of technologies than the norm within this category.
-   **Customer Support** has a narrower interquartile range but also
    features outliers, suggesting that while most customer support roles
    require a relatively small set of technologies, there are
    exceptional roles that require a broader technical knowledge.
-   **Data Science** positions show a considerable spread in the number
    of required technologies, reflecting the diverse nature of the field
    which often necessitates a mix of programming, statistical, and
    machine learning skills. There are also two notable outliers with
    over 20 required techonologies.
-   **Frontend Development** and **Fullstack Development** display a
    broad interquartile range, denoting variability in the roles.
    Fullstack roles, in particular, show a skew towards higher
    technology counts, aligning with the expectation for full-stack
    developers to possess a wide-ranging skill set.
-   **Infrastructure** displays a wide interquartile range, indicating
    significant variability in the number of technologies required for
    these jobs. The presence of outliers suggests that certain positions
    may demand an even broader range of technical expertise. This
    variability reflects the diverse set of skills needed to manage and
    support the wide array of systems and networks in the field of IT
    infrastructure.
-   **Hardware and Engineering** and **Mobile Development** categories
    show moderate variability with some outliers, indicating specialized
    roles that may occasionally call for a wider range of technical
    skills.

The presence of outliers across several categories highlights that while
there are standard expectations in terms of technology proficiency,
certain positions may require exceptionally broad or specialized
knowledge. The boxplot visualization effectively captures both the
typical and atypical job requirements, which can inform job seekers
about the range of qualifications needed to be competitive in various
sectors within the IT industry.

## What’s the distribution of the number of technologies required by seniority?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-9-1.png)

-   **Intern** positions show the most compact box, suggesting that
    internships tend to require a smaller and more consistent set of
    technologies, likely reflecting the learning and entry-level nature
    of these roles.
-   **Junior** roles display a slightly larger range but also a number
    of outliers, indicating that while most junior positions may have
    moderate requirements, some demand a much broader range of skills.
-   **Mid-level** positions have the widest interquartile range, which
    suggests greater variability in the number of technologies required.
    This could be due to the diversity of mid-level roles that can range
    from specialized to more generalized positions within the industry.
-   **Senior** roles show a wide spread and numerous outliers,
    reflecting the expectation for senior professionals to be proficient
    in a larger array of technologies, possibly due to the complex and
    varied nature of senior-level projects and responsibilities.
-   **Grand-master** level, which we’ve established refers to Team Lead
    roles or higher, has a narrower box but with outliers as well. This
    may indicate that while many leadership roles require a standard set
    of core competencies, there are also positions that demand an
    exceptional breadth of technical knowledge, perhaps to guide diverse
    teams or handle highly specialized projects.

Overall, the chart suggests that as professionals progress from intern
to senior levels, the diversity of technology requirements tends to
increase. The presence of outliers at each level indicates that there
are roles which deviate significantly from the median, requiring a much
wider or narrower range of technical knowledge. This can serve as a
guide for professionals at different stages of their careers, helping
them to understand the potential requirements for advancement and the
breadth of skills they might need to acquire or hone.

## Which categories are in demand?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-10-1.png)

-   **Backend Development** leads with the highest number of job
    postings at 518. This indicates a strong demand for skills
    associated with server-side development, databases, and application
    logic.
-   **Infrastructure** related roles follow with 242 postings,
    underscoring the importance of systems architecture, networking, and
    maintenance in the current job market.
-   **PM/BA and more**, which includes project management, product
    management, and business analysis roles, show a significant presence
    with 206 job postings, reflecting the need for professionals who can
    oversee projects and translate business needs into technical
    requirements.
-   Categories such as **Quality Assurance**, **Fullstack Development**,
    and **Frontend Development** have job postings in the range of 146
    to 155, highlighting the steady demand for professionals skilled in
    ensuring software quality, as well as in comprehensive and front-end
    centric development.
-   **Data Science** roles are also notable with 131 postings,
    indicating the growing relevance of data-driven decision-making and
    the need for expertise in data analysis, machine learning, and
    statistical modeling.
-   **Mobile Development** and **Technical Support** categories are
    represented with 68 job postings each, pointing to a moderate demand
    for mobile app development and IT support services.
-   Roles in **Hardware and Engineering** and **UI/UX**, Arts have fewer
    postings, 48 and 44 respectively, which could suggest a more niche
    market or a lower turnover in these areas.
-   **Customer Support** shows the lowest count at 29 job postings,
    which may indicate either a lower demand in this area or possibly
    that such roles are often filled through other channels or job
    boards.

The chart provides a snapshot of the job market, with demand for backend
developers at the forefront, and a diverse array of opportunities across
different technology disciplines. This information is crucial for job
seekers to understand where their skills may be best utilized and for
companies to recognize the competitive landscape for attracting talent
in various specialties.

## What do the salary ranges look like?

    ## # A tibble: 1 × 6
    ##   avg_min_salary avg_max_salary median_min_salary median_max_salary sd_min_salary sd_max_salary
    ##            <dbl>          <dbl>             <dbl>             <dbl>         <dbl>         <dbl>
    ## 1          5215.          8218.              5000              8050         1849.         3251.

Salary ranges are listed for only 106 job offers in the dataset. Given
the small sample size, caution is advised when interpreting the data.
The salary ranges represent net salary and are in BGN.

-   The **average lower salary range** across all job postings is
    approximately 5,215 BGN. This figure represents the average starting
    salary point for the listed positions.
-   The **average upper salary range** is notably higher, at
    approximately 8,218 BGN, indicating the average potential upper
    salary limit for these roles, which suggests room for salary growth
    or negotiation.
-   The **median lower salary range** is 5,000 BGN. This median value
    indicates that half of the job postings offer a lower salary range
    below this amount, and the other half offer more.
-   The **median upper salary range** is 8,050 BGN, closely mirroring
    the average maximum salary. This alignment suggests a relatively
    even distribution of maximum salary offerings across the sample.
-   The **standard deviation for the lower salary range**, around 1,849
    BGN, signifies that the minimum salaries offered by different job
    postings vary to a moderate extent from the average.
-   The **standard deviation for the upper salary range** is quite
    large, at approximately 3,251 BGN. This greater variability in
    maximum salaries implies a wide range in the upper salary limits,
    possibly reflecting the diverse levels of expertise, experience, and
    specializations required for the various roles.

These statistics provide a snapshot of the salary expectations one might
have when considering various positions within the dataset. The standard
deviations highlight the diversity in salary offerings and suggest that
some roles may offer significantly higher maximum salaries, potentially
due to advanced skills, experience requirements, or negotiation space.
The relatively high standard deviation for the maximum salary also
suggests that for those in the job market, there’s a wider range to
consider when looking at potential earnings growth.

## What is the distribution of salary ranges?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-12-1.png)![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-12-2.png)

Lower salary range distribution:

The most common lower salary range, where the highest bars are located,
is between 5,000 and 7,500. The distribution is slightly right-skewed,
meaning there are more jobs with lower salaries and fewer jobs with
higher salaries in the dataset. Salary ranges on the low end (around
2,500) and the high end (around 10,000) have fewer jobs, as indicated by
the shorter bars.

Upper salary range distribution:

The distribution is wider, with the most common upper salary ranges
appearing between 5,000 BGN and 10,000 BGN, peaking around 7,500 BGN.
There’s a significant decrease in the number of jobs offering upper
salary ranges above 10,000 BGN, with very few jobs offering more than
15,000 BGN.

Together, these histograms indicate that while there is a variety of
salary expectations across the job market, the majority of roles offer
lower salary ranges in the mid-thousand BGN, with upper salary ranges
typically not exceeding the low ten-thousands. The spread of the upper
salary range is broader than the lower range, suggesting that there’s
more variability in the potential earnings growth or maximum salary
offered. This information could be useful for job seekers in setting
their salary expectations and for employers to benchmark their offers
against the market.

## How do the salary ranges look broken down by seniority?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-13-1.png)![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-13-2.png)

Lower Range Salaries by Seniority Level:

-   **Intern** roles show the lowest median minimum salary, with a very
    narrow interquartile range, indicating little variation in the
    starting salaries for these entry-level positions.
-   **Junior** positions have a higher median minimum salary than intern
    roles, with a wider interquartile range, suggesting a bit more
    variability in the starting salaries for professionals at the
    beginning of their career.
-   **Mid-level** positions exhibit a further increase in the median
    minimum salary.
-   **Senior** roles show a noticeably higher median minimum salary with
    a wide spread. There is a notable overlap with the Mid-level
    category suggesting that some Mid-level positions offer higher
    salaries than some Senior ones, likely due to differences in the job
    category, which would be observed in the following plots.
-   **Grand-master** roles, which we’ve identified as Team Lead roles or
    higher, have the highest median minimum salary and small
    variability.

Upper Range Salaries by Seniority Level:

-   **Intern** roles display the lowest median maximum salary, aligned
    with the expectations for entry-level positions.
-   **Junior** roles have a higher median maximum salary, with some
    variability shown by the length of the box.
-   **Mid-level** roles see a significant increase in the median maximum
    salary, suggesting a substantial rise in potential earnings as one
    progresses from Junior to Mid-level.
-   **Senior** roles have a higher median maximum salary with a
    relatively wide interquartile range, indicating a broad spectrum of
    salary potentials within this seniority level.
-   **Grand-master** level positions show the highest median maximum
    salary amongst all categories, demonstrating the premium placed on
    top-tier leadership and expertise.

These visualizations collectively depict a clear trend of increasing
salary potential with higher seniority levels, with both the lower and
upper salary ranges expanding significantly as one moves from intern to
grand-master roles. There is a overlap between Mid-level and Senior
roles, likely explained by the higher salaries in certain categories.

## How do the salary ranges look broken down by category?

    ## # A tibble: 11 × 9
    ##    categories            avg_min_salary avg_max_salary median_min_salary median_max_salary min_min_salary max_max_salary sd_min_salary sd_max_sal…¹
    ##    <chr>                          <dbl>          <dbl>             <dbl>             <dbl>          <dbl>          <dbl>         <dbl>        <dbl>
    ##  1 Backend Development            6097.          9251.              6000              9000           3500          20000        1664.         2816.
    ##  2 Customer Support               1150           1700               1150              1700           1100           2000          70.7         424.
    ##  3 Data Science                   6220          11520               6100              9000           5000          20000        1301.         5812.
    ##  4 Frontend Development           4983.          7542.              5000              7000           1300          11000        1550.         2330.
    ##  5 Fullstack Development          4267.          8122.              4200              8500           2400          12500        1763.         3336.
    ##  6 Infrastructure                 5583.          8767.              6000              9500           3000          13000        1717.         2892.
    ##  7 Mobile Development             5542.          8917.              5500              9250           3000          12000        1514.         2265.
    ##  8 PM/BA and more                 4457.          6571.              4900              6200           1800           9400        1287.         1923.
    ##  9 Quality Assurance              4500           7050               5000              7550           3000           8100        1000          1462.
    ## 10 Technical Support              3200           4140               3000              4200           2000           5000         837.         1024.
    ## 11 UI/UX, Arts                    2700           3500               2700              3500           2700           3500          NA            NA 
    ## # … with abbreviated variable name ¹​sd_max_salary

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-14-1.png)![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-14-2.png)

Lower Salary Range:

-   **Backend Development** category has the widest distribution,
    indicating a varied range of entry salary points.
-   **Data Science** has the highest median indicating high-paying
    opportunities.
-   **Customer Support** and **UI/UX, Arts** have the narrowest salary
    ranges, which is likely due to the small representation of the
    categories in the sample.

Upper Salary Range:

-   **Fullstack Development** and **Infrastructure** show a broad range
    in potential earnings, with distributions shifted to the left,
    indicating the presence of job offers with exceptionally lower upper
    salary ranges.
-   **Data Science** stands out with the widest distribution in the
    upper salary range and its distribution is shifted to the right
    indicating the presence of upper salary ranges way above the median
    value.
-   **Customer Support** shows the lowest upper salary range, aligning
    with its position in the lower salary distribution.

## Do the number of technologies affect the salary?

    ## # A tibble: 15 × 3
    ##    tech_count median_min_salary median_max_salary
    ##         <int>             <dbl>             <dbl>
    ##  1         11              8500             13200
    ##  2         10              5750             10000
    ##  3          3              5250              9250
    ##  4         12              6900              9250
    ##  5          7              7000              9000
    ##  6          2              4950              8950
    ##  7          4              5000              8100
    ##  8          6              5000              7750
    ##  9          5              5000              7500
    ## 10          8              4500              7000
    ## 11          9              5000              7000
    ## 12         13              4500              7000
    ## 13         14              4000              7000
    ## 14          1              3600              6250
    ## 15          0              5500              6200

Although there is a correlation between the number of technologies and
the salary ranges, there are notable outliers such as job offers with 3
technologies required with the third highest median upper salary range
and job offers with 13 and 14 required technologies with considerably
lower median salary ranges. This is consistent with the relatively low
number of required technologies for high-paying Team Lead and above
positions, and the wide salary ranges of Full Stack and Infrastructure
positions which require a high number of technologies.

## Which technologies pay the most?

![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-16-1.png)![](dev.bg-analysis_files/figure-markdown_strict/unnamed-chunk-16-2.png)

Given that this project is conducted in R, the first plot definitely
brings a smile to the author’s face. However, it should be noted that
those results are likely based on one the of the exceptionally
high-paying senior Data Science job offers, the presence of which we
observed in previous graphs. When we filter the visualization to only
include technologies that are present in at least 10 job offers we get a
different picture. AWS leads the pack with median upper salary ranges
above 10,000 BGN. Data enthusiasts would still be happy to see that
Python and SQL are both among the top 12 skills.

# Summary

-   **Job Distribution by Category**: Backend Development and
    Infrastructure are among the most in-demand categories, suggesting a
    robust need for development, systems architecture, networking, and
    maintenance.
-   **Salary Analysis**: There is a clear trend of increasing salaries
    with seniority, with mid-level and senior roles offering higher
    earning potentials. The Data Science field offers the most lucrative
    opportunities for individuals with the required experience and/or
    negotiation skills. Additionally, the breadth of technology
    knowledge positively correlates with salary ranges.
-   **Seniority Levels**: The job market is ripe with opportunities for
    mid-level professionals, while entry-level (junior) and leadership
    (grand-master) positions are less frequent.
-   **Technological Demand**: SQL, Java, and JavaScript are the top
    technologies required, reflecting their integral role in current IT
    operations and development.
-   **Work Models**: Office-based roles dominate the market, but there
    is a significant presence of hybrid and remote opportunities,
    indicating a shift towards flexible work arrangements.
-   **Geographical Distribution**: Job opportunities are concentrated in
    urban areas, with Sofia being the central hub, but remote work is
    offering a broader geographical spread.
-   **Most Active Companies**: “People and Places”(an IT recruiting
    agency),“Sirma”, and “Bosch Engineering Center Sofia” have the most
    job offers.

These findings serve as a compass for both job seekers looking to align
their skills with market demand and employers aiming to understand the
competitive landscape of the IT job market in Bulgaria. The analysis
suggests a strong market for skilled IT professionals, with
opportunities for career advancement and a need for a diverse range of
technological competencies.
