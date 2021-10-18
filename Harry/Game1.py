from random import randrange

player = input("rock, paper or scissors ")
print("You have chosen", player)
computer = randrange(2)
#0 = paper
#1 = rock
#2 = scissors
if player == "rock":
    if computer == 0:
        print("you loser")
    if computer == 2:
        print("you won")
    if computer == 1:
        print("draw")

if player == "paper":
    if computer == 0:
        print("draw")
    if computer == 2:
        print("you loser")
    if computer == 1:
        print("you won")
if player == "scissors":
    if computer == 0:
        print("you won")
    if computer == 2:
        print("draw")
    if computer == 1:
        print("you loser")
