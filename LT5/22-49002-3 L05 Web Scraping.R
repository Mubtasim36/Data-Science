#List of required packages
packages <- c("rvest", "stringr")

# Install any packages that are not already installed
installed_packages <- rownames(installed.packages())
for (pkg in packages) {
  if (!(pkg %in% installed_packages)) {
    install.packages(pkg)
  }
  library(pkg, character.only = TRUE)
}


#this part is for extracting data from the homepage
# Define the URL of the page to scrape
url <- "https://en.prothomalo.com/"

# Read the HTML from the URL
webpage <- read_html(url)


#this is for showing all links'title with class=tilte-no-link-parent
titles_raw <- webpage %>%
  html_nodes(".tilte-no-link-parent") %>%
  html_text2()
titles_raw

#this is for showing all links with class=title-link

links <- webpage %>%
  html_nodes(".title-link") %>%
  html_attr("href")
links


years <- webpage %>%
  html_elements(".xuoYp") %>%
  html_text2()
years


#this part is for extracting data from 1 news:
n1 <- "https://www.prothomalo.com/world/middle-east/3dlgsflvpj"
nweb<- read_html(n1)


#extract title
title_extract <- nweb %>%
  html_nodes(".IiRps") %>%     #IiRps is the class id for titles inside the news link
  html_text2()
title_extract


#extract text

news_text <- nweb %>%
  html_nodes(".story-element") %>%   #story-element is the class id for the actual news text inside the news link
  html_text2()
news_text

#extract time
news_time <- nweb %>%
  html_elements(".xuoYp") %>%    #xuoYp is the class for news time in news links
  html_text2()
news_time


# Create a data frame for 1 news
news_df <- data.frame(
  
  Title = title_extract,
  Links = n1,
  Time = news_time,
  NewsText = news_text 
)
head(news_df)











news_df <- data.frame(
  Title = character(),
  Links = character(),
  Time = character(),
  NewsText = character(),
  stringsAsFactors = FALSE
)

for(i in 1:length(links)) {
  nweb<- read_html(links[i])
  
  
  #extract title
  title_extract <- nweb %>%
    html_nodes(".IiRps") %>%     #IiRps is the class id for titles inside the news link
    html_text2()
  
  
  #extract text
  
  news_text <- nweb %>%
    html_nodes(".story-element") %>%
    html_text2() %>%
    paste(collapse = "\n") %>%  # IMPORTANT: Combine all paragraphs
    trimws()
  #extract time
  news_time <- nweb %>%
    html_elements(".xuoYp") %>%    #xuoYp is the class for news time in news links
    html_text2()
  
  
  
  news_df <- rbind(news_df, data.frame(       #rbind is used to add new values in dataframe
    
    Title = title_extract,
    Links = links[i],
    Time = news_time,
    NewsText = news_text,
    stringsAsFactors = FALSE
  ))
  
  
}
cat("Total rows:", nrow(news_df), "\n")     #to show how many total rows
head(news_df)
write.csv(news_df, "I:/AIUB courses/OneDrive - American International University-Bangladesh/All Semesters/Fall 25-26/Data Science/Lab task/LT5/prothomalo_news.csv", row.names = FALSE, fileEncoding = "UTF-8")

