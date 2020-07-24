set.seed(1313)
blogs <- readLines("en_US.blogs.txt")
news <- readLines("en_US.news.txt")
twitter <- readLines("en_US.twitter.txt")

l1 <- length(blogs) 
select1 <- rbinom(l1, 1, 0.25)
select1 <- (select1 == 1)
blogs <- blogs[select1]
blogs <- removePunctuation(blogs)
blogs <- stripWhitespace(blogs)
blogs <- tolower(blogs)
blogs <- removeNumbers(blogs)
writeLines(blogs, "SampleBlogs.txt")

l1 <- length(news) 
select1 <- rbinom(l1, 1, 0.25)
select1 <- (select1 == 1)
news <- news[select1]
news <- removePunctuation(news)
news <- stripWhitespace(news)
news <- tolower(news)
news <- removeNumbers(news)
writeLines(news, "SampleNews.txt")

l1 <- length(twitter) 
select1 <- rbinom(l1, 1, 0.25)
select1 <- (select1 == 1)
twitter <- twitter[select1]
twitter <- removePunctuation(twitter)
twitter <- stripWhitespace(twitter)
twitter <- tolower(twitter)
twitter <- removeNumbers(twitter)

writeLines(twitter, "SampleTwitter.txt")

