pollutantmean <- function(directory,id) {
directory_path <- paste(getwd(),"/",directory, sep="")
file_path_vector <- paste(directory_path, "/", as.character(list.files(directory_path)), sep="")
frame <- read.csv(file_path_vector[id])
list(frame)
}
