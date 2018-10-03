separator <- c("_",".", "-")
for (j in 0:(i-1)) {
  # print(j)
  # print(separator[(intToBits(j) == 1)[1:3]])
  print(paste(separator[(intToBits(j) == 1)[1:3]], collapse = ""))
}

text_sample <- 