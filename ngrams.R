blogs <- readLines("SampleBlogs.txt")
news <- readLines("SampleNews.txt")
twitter <- readLines("SampleTwitter.txt")

blog1gram <- as.data.frame(blogs) %>% unnest_tokens(gram1, input = blogs, token = "ngrams", n = 1)
blog1gram <- sort(table(blog1gram), decreasing = TRUE)
blog1gram <- blog1gram[1:min(which(blog1gram < 20))]

news1gram <- as.data.frame(news) %>% unnest_tokens(gram1, input = news, token = "ngrams", n = 1)
news1gram <- sort(table(news1gram), decreasing = TRUE)
news1gram <- news1gram[1:min(which(news1gram < 20))]

twit1gram <- as.data.frame(twitter) %>% unnest_tokens(gram1, input = twitter, token = "ngrams", n = 1)
twit1gram <- sort(table(twit1gram), decreasing = TRUE)
twit1gram <- twit1gram[1:min(which(twit1gram < 20))]

blog2gram <- as.data.frame(blogs) %>% unnest_tokens(gram2, input = blogs, token = "ngrams", n = 2)
blog2gram <- sort(table(blog2gram), decreasing = TRUE)
blog2gram <- blog2gram[1:min(which(blog2gram < 20))]

news2gram <- as.data.frame(news) %>% unnest_tokens(gram2, input = news, token = "ngrams", n = 2)
news2gram <- sort(table(news2gram), decreasing = TRUE)
news2gram <- news2gram[1:min(which(news2gram < 20))]

twit2gram <- as.data.frame(twitter) %>% unnest_tokens(gram2, input = twitter, token = "ngrams", n = 2)
twit2gram <- sort(table(twit2gram), decreasing = TRUE)
twit2gram <- twit2gram[1:min(which(twit2gram < 20))]

blog3gram <- as.data.frame(blogs) %>% unnest_tokens(gram3, input = blogs, token = "ngrams", n = 3)
blog3gram <- sort(table(blog3gram), decreasing = TRUE)
blog3gram <- blog3gram[1:min(which(blog3gram < 20))]

news3gram <- as.data.frame(news) %>% unnest_tokens(gram3, input = news, token = "ngrams", n = 3)
news3gram <- sort(table(news3gram), decreasing = TRUE)
news3gram <- news3gram[1:min(which(news3gram < 20))]

twit3gram <- as.data.frame(twitter) %>% unnest_tokens(gram3, input = twitter, token = "ngrams", n = 3)
twit3gram <- sort(table(twit3gram), decreasing = TRUE)
twit3gram <- twit3gram[1:min(which(twit3gram < 20))]

rm(blogs)
rm(news)
rm(twitter)