blogs <- readLines("SampleBlogs.txt")
news <- readLines("SampleNews.txt")
twitter <- readLines("SampleTwitter.txt")

blog2gram <- as.data.frame(blogs) %>% unnest_tokens(gram2, input = blogs, token = "ngrams", n = 2)
blog2gram <- sort(table(blog2gram), decreasing = TRUE)
blog2gram <- blog2gram[1:min(which(blog2gram < 20))]

news2gram <- as.data.frame(news) %>% unnest_tokens(gram2, input = news, token = "ngrams", n = 2)
news2gram <- sort(table(news2gram), decreasing = TRUE)
news2gram <- news2gram[1:min(which(news2gram < 20))]

twit2gram <- as.data.frame(twitter) %>% unnest_tokens(gram2, input = twitter, token = "ngrams", n = 2)
twit2gram <- sort(table(twit2gram), decreasing = TRUE)
twit2gram <- twit2gram[1:min(which(twit2gram < 20))]

