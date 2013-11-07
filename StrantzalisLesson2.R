# The is.leap function returns a boolean according if the year passed as
# argument is leap or not. The argument should be numeric between 1700 and 3500


is.leap<-function(year){
  output<-FALSE
  
# check if the argument is numeric.   
  if(is.numeric(year)){
    
#check if argument is in the desired range
    if(year >1700 && year<3500) {
      
# calculate if the year is leap 
      if(year%%400==0){
        output<-TRUE
      }
      else if(year%%100==0){
        output<-FALSE
      }
      else if(year%%4==0){
        output<-TRUE
      }
    }

# error message: the numeric argument is out of range    
    else {
      output=paste(year,"is out of the valid range")
    }    
  }
  
# error message: The argument is not numeric
  else {
    stop("argument of class numeric expected")
  }
  
  
  return(output)    
  
}
  
    
  

      
              
  
  
    
  