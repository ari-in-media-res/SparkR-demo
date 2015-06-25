library(SparkR)


# Initialize Spark context

lines <- textFile(sc, "/demo/data/speeches-test-set.txt")

words <- flatMap(lines,
                 function(line) {
                   strsplit(line, " ")[[1]]
                 })
wordCount <- lapply(words, function(word) { list(word, 1L) })

counts <- reduceByKey(wordCount, "+", 2L)
output <- collect(counts)

for (wordcount in output) {
  cat(wordcount[[1]], ": ", wordcount[[2]], "\n")
}
