#Problem 3

#Adapt the code you wrote in Problem 2 as the basis for a function that will generate the first 
#**n** digits of the Fibonacci sequence, given a user-input value of n. You should be able to save 
#the function output as an object using the assignment arrow `<-` (for example, `outputvector <- FIBfunction(inputvalue)`). 
#Once you have defined your function, use it with n = 100, save the vector containing the generated sequence, and print it out.


#original fibonnacci sequence
FIB <- numeric(10)
FIB[2] <- 1

for (i in 3:10) {
  FIB[i] <- FIB[i - 1] + FIB[i - 2]
}
FIB


#fib funtion
n <- integer(length = 0L)

FIBfunc <- function(n) {
  FIB <- numeric(n)
  FIB[2] <- 1
  for (n in 3:n) {
    FIB[n] <- FIB[n - 1] + FIB[n - 2]
  }
  FIB 
}
sprintf("%1.0f", FIBfunc(100))

#Problem 4
#Suppose we want to simulate a game of Rock, Paper, Scissors, Lizard, Spock. 
#Write a repeat loop using the sample function to represent a player’s choice of what to play on each turn. 
#Sample from a vector like the one you created in Problem 1, assuming that all options are equally likely, 
#and break the loop when Spock is first played. Print out the results of each play as the loop is running 
#and the number of the turn on which Spock occurred at the end. 
#(Note: There is roughly a 90% chance that number of turns will be 10 or fewer.)

TURN <- 1
repeat {
  PLAY <- sample(c("rock", "paper", "scissors", "lizard", "Spock"), 1)
  print(PLAY)
  if (PLAY == "Spock") 
    break
  TURN <-  TURN + 1
  }
print(TURN)











#**Problem 5**
#Create a dataframe containing the information in the `Project1ClassList.xlsx` spreadsheet. 
#Later in the course you will learn to read the data into R from a `.csv` or `.xlsx` file, but for now, 
#create a vector for each column and use the `data.frame` function to turn them into a data frame like 
#you did in Chapter 5 of the [Introduction to R](https://www.datacamp.com/courses/free-introduction-to-r) 
#course in DataCamp. Use `str`, `head`, and `tail` to show the structure and contents of your data frame.




Name <- c("Atwell, Kaleb L.", "Bass, Nicholas W.", "Baxter, Jamie A.", "Baxter, Madelyn M.", "Carter, Nicholas A.", "Daniels, Samantha B.", "Fennell, Charles T.", "Goodman, Madeline M.", "Harrison, Seth W.", "Haylett, Elise C.", "Higginbotham, Baylie", "Lee, Sebastien J.", "McCook, Mary E.", "McCrimmon, Kyera K.", "Miranda-Hernandez, Daniela P.", "Nilsson, Connor S.", "Renko, Anna F.", "Rodriguez Guzman, Bianca D.", "Smith, Joel S.", "Stansberry, Amanda L.", "Tosto, Christopher H.", "Tyndall, Matthew B.", "Ugboro, Hope U.", "Watkins, Alyssa M.", "White, Joseph D.")

PreferredName <- c("", "Nick", "Jamie", "Madelyn", "Alex", "Sam", "", "Maddy", "Seth", "", "", "Sebastien", "Maribeth", "Kyera", "Danni", "Connor", "", "", "", "", "Chris", "", "", "", "Daniel")

Email <- c("atwellkl1@appstate.edu", "bassnw@appstate.edu", "baxterja@appstate.edu", "baxtermm@appstate.edu", "carterna3@appstate.edu", "danielssb@appstate.edu", "fennellct@appstate.edu", "goodmanmm@appstate.edu", "harrisonsw@appstate.edu", "haylettec@appstate.edu", "higginbothamb@appstate.edu", "leesj3@appstate.edu", "mccookme@appstate.edu", "mccrimmonkk@appstate.edu", "mirandahernandedp@appstate.edu", "nilssoncs@appstate.edu", "renkoaf@appstate.edu", "rodriguezguzmanbd@appstate.edu", "smithjs5@appstate.edu", "stansberryal@appstate.edu", "tostoch@appstate.edu", "tyndallmb@appstate.edu", "ugborohu@appstate.edu", "watkinsam1@appstate.edu", "whitejd5@appstate.edu")

Class <- c("Senior", "Junior", "Junior", "Sophomore", "Senior", "Senior", "Senior", "Senior", "Junior", "Senior", "Junior", "Junior", "Senior", "Junior", "Senior", "Junior", "Junior", "Sophomore", "Senior", "Junior", "Senior", "Junior", "Senior", "Senior", "Sophomore")

College <- c("CB",  "GC", "AS", "AS", "AS", "AS", "AS", "AS", "AS", "AS", "GC", "AS", "AS", "AS", "AS", "AS", "AS", "GC", "AS", "AS", "AS", "CB", "AS", "AS", "GC")  


ClassList <- data.frame(Name, PreferredName, Email, Class, College)

str(ClassList)
head(ClassList)
tail(ClassList)
  
  
  