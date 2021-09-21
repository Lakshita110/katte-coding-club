const ComputerChoiceDisplay = document.getElementById('Computer-Choice')
const resultDisplay = document.getElementById('result')
const YourChoiceDisplay = document.getElementById('Your-Choice')
const possibleChoices = document.querySelectorAll('button')
let YourChoice
let ComputerChoice
let result

possibleChoices.forEach(possibleChoice => possibleChoice.addEventListener('click', (e) =>{
    YourChoice=e.target.id 
    YourChoiceDisplay.innerHTML=YourChoice
    generateComputerChoice()
    getresult()  
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
function getresult() {
    if (ComputerChoice == YourChoice){
      result='Draw'
    }
    if (ComputerChoice == 'rock'&&YourChoice== 'paper'){
        result='You Won'
    }
    if (ComputerChoice =='rock'&&YourChoice=='scissors'){
        result='You Lost'
    }
    if (ComputerChoice == 'paper'&&YourChoice== 'rock'){
        result='You Lost'
    }
    if (ComputerChoice =='paper'&&YourChoice=='scissors'){
        result='You Won'
    }
    if (ComputerChoice == 'scissors'&&YourChoice== 'rock'){
        result='You Won'
    }
    if (ComputerChoice =='scissors' &&YourChoice=='paper'){
        result='You Lost'
    }
    resultDisplay.innerHTML= result
}