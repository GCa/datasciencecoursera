pollutantmean <- function(directory) {
directory_path <- paste(getwd(),"/",directory, sep="")
file_path_vector <- paste(directory_path, as.character(list.files(directory_path)), sep="")
list(file_path_vector)
}
