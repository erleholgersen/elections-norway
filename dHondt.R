dhondt <- function(n, votes) {
  seats = rep(0, length(votes))
  
  div_votes = votes

  for(i in 1:n) {
    max_index = which.max(div_votes)
    seats[max_index] = seats[max_index] + 1
    
    div_votes[max_index] = votes[max_index]/(2*seats[max_index] + 1)
  }
  
  return(seats)
}