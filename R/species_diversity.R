#' Compute a species diversity index
#' @param species list of species (names, or code) 
#' @return list with the following items
#' \describe{
#' \item{total_species}{Total number of species}
#' \item{rarest_species}{Name of the least occuring species}
#' \item{abundant_species}{Name of the most frequently occuring species}
#' }
#data is called 'possible_fish'

species_diversity = function(possible_fish) {
  
  # data as a vector 
  species_vector = as.vector(possible_fish[,1])
  
  # change vector to factor  
  species_factor = as.factor(species_vector)
  
  # total # of species
  total_species = length(summary(species_factor))
  
  # rarest species
  rarest_species = which.min(summary(species_factor))
  
  # most abundant species
  abundant_species = which.max(summary(species_factor))
  
  # output from function
  return(list(total_species, rarest_species, abundant_species ))
}


