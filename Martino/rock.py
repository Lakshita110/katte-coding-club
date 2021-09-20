from random import randrange
b = 1
def play():
    list = ["paper","scissors","rock"]
    inp = input("Rock,paper and scissors ")
    inp = inp.lower()
    print("You chose", inp)
    a = randrange(2)
    if inp == "scissors" :
        if list[a] == "paper":
            print("You win")
        else:
            print("You lose, I have rock")
    elif inp == "paper" :
        if list[a] == "rock":
            print("You win")
        else:
            print("You lose, I have scissors")
    else: 
        if list[a] == "scissors":
            print("You win")
        else:
            print("You lose, I have paper")
play()
while b == 1: 
    inp = input("play again? ") 
    inp = inp.lower()
    if inp == "yes":
        play()
    else:
        b = 0
