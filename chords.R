
#list of chords
m <- matrix(c('C','#C','D','#D','E','F','#F','G','#G','A','#A','B','C'))


#chords function
ind <- function(x) {
	which(m==x)[1] -> x	
	A <- matrix(c(x,2,2,1,2,2,2,1))
	apply(A,2,cumsum)->A
	A <- ifelse(A<13,A,A-12)
	for (i in 1:8){
		print(m[A[i]])
			   }
}

#get C and D chords
ind('C')
ind('F')





