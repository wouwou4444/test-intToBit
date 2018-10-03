separator <- c("_",".", "-")
text_sample <- c("serveur_ADBCRD01,nom1-nom2-nom3. test de differents sep, EM:listener_ORAADB01_dg_DG01_12654","Autre fichier avec des adresses IP 123.34.213.2 mais pas eulement. et inum ut corpus.")


#### transform string based on different separators
for (j in 1:(i-1)) {
  # print(j)
  # print(separator[(intToBits(j) == 1)[1:3]])
  gexpr <- paste("[",paste(separator[(intToBits(j) == 1)[1:3]], collapse = ""),"]",sep = "")
  print(gexpr)
  print(gsub(pattern = gexpr, replacement = " ",x = text_sample))
}

#### transform string based on different separators 
#### and store result in a array
list_description_tokenizations <- sapply(1:(i-1), function(j) {
  print(j)
  gexpr <- paste("[",paste(separator[(intToBits(j) == 1)[1:3]], collapse = ""),"]",sep = "")
  print(gexpr)
  temp <- (gsub(pattern = gexpr, replacement = " ",x = text_sample)) 
  return(strsplit(split = "[\t ]",x = temp))
})

#### concatenate the different tokens from each regexp transformation 
#### into on single list of unique tokens
list_tokens <- apply(list_description_tokenizations, 1, FUN = function (x) { unique(unlist(c(x)))})

