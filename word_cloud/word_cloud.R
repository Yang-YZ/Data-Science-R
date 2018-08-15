# source
# http://www.sthda.com/english/wiki/print.php?id=159
# http://www.sthda.com/english/wiki/word-cloud-generator-in-r-one-killer-function-to-do-everything-you-need

# Install packages and load libraries
install.packages("RColorBrewer")
install.packages("wordcloud")
install.packages("NLP")
install.packages("tm")
library("NLP")
library("tm")
library("SnowballC")
library("RColorBrewer")
library("wordcloud")
getwd()

# Save the txt file at the working directory
fileName = "wordcloud_machinelearning.txt"
content=file(fileName,open="r")
txt=readLines(content)

docs=Corpus(VectorSource(txt))
inspect(docs)
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
docs <- tm_map(docs, toSpace, "/")
docs <- tm_map(docs, toSpace, "@")
docs <- tm_map(docs, toSpace, "\\|")

# Convert the text to lower case
docs <- tm_map(docs, content_transformer(tolower))

# Remove numbers
docs <- tm_map(docs, removeNumbers)

# Remove english common stopwords
docs <- tm_map(docs, removeWords, stopwords("english"))

# Remove your own stop word, specify your stopwords as a character vector
docs <- tm_map(docs, removeWords, c("blah1", "blah2"))

# Remove punctuations
docs <- tm_map(docs, removePunctuation)

# Eliminate extra white spaces
docs <- tm_map(docs, stripWhitespace)

# Text stemming (NOT recommended)
# docs <- tm_map(docs, stemDocument)

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)
set.seed(1234)

# Plot
wordcloud(words = d$word, freq = d$freq, scale=c(2,.5), min.freq = 1,
max.words=50, random.order=FALSE, rot.per=0.35,
colors=brewer.pal(8, "RdBu"), vfont=c("Courier New","plain"))
