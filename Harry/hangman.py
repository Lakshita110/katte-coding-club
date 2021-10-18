#cpmputer choose a word
#we choose a letter
#If the word is in the letter, the show the word and the position
#If it's not, lose one chance
#Guess all the letters
#If done, player win
#If player lose 7 chance, he lost.


from random import randrange
wordlist=open("Wordlist.txt","w")
computer = randrange(3000)
