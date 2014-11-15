pollutantmean <- function(directory,pollutant,id = 1:332) {
directory_path <- paste(getwd(),"/",directory, sep="")
file_path_vector <- paste(directory_path, "/", as.character(list.files(directory_path)), sep="")
data_vector <- vector(mode = "numeric", length = 0) ## define vector to store the values
for (i in id) { ## previous version could read only 1 id, but not a range
    frame <- read.csv(file_path_vector[i],header=T)
    data_vector <-c(data_vector,frame[[pollutant]]) ## store pollutant data in vector
	}
mean_data <- mean(data_vector, na.rm = TRUE)
return(round(mean_data,3))
}
