pollutantmean <- function(directory,id) {
directory_path <- paste(getwd(),"/",directory, sep="")
file_path_vector <- paste(directory_path, "/", as.character(list.files(directory_path)), sep="")
for (i in id) { ## previous version could read only 1 id, but not a range
    frame <- read.csv(file_path_vector[i],header=T)
    }
}
