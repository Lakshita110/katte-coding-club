const ComputerChoiceDisplay = document.getElementById('Computer-Choice')
const resultDisplay = document.getElementById('result')
const YourChoiceDisplay = document.getElementById('Your-Choice')
const possibleChoices = document.querySelectorAll('button')
let YourChoice
let ComputerChoice

possibleChoices.forEach(possibleChoice => possibleChoice.addEventListener('click', (e) =>{
    YourChoice=e.target.id 
    YourChoiceDisplay.innerHTML=YourChoice
    generateComputerChoice()  
}))

function generateComputerChoice(){
    const randomNumber = Math.floor(Math.random() * 3) +1
    console.log(randomNumber) 
    if(randomNumber===  1) {
        ComputerChoice = 'rock'
    }
    if(randomNumber===  2) {
        ComputerChoice = 'paper'
    }
    if(randomNumber===  3) {
        ComputerChoice = 'scissors'
    }
    ComputerChoiceDisplay.innerHTML=ComputerChoice
}