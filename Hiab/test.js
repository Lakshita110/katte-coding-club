const Player2Display= document.getElementById('Player-2')
const Player1Display= document.getElementById('Player-1')
const ResultDisplay= document.getElementById('Result')
const PossibleChoices= document.querySelectorAll('button')
let Player1
let Player2
let Result

PossibleChoices.forEach(possibleChoice => possibleChoice.addEventListener('click', (e) =>{
    Player1 = e.target .id
    Player1Display.innerHTML=Player1
    generatePlayer2()
    getResult()
}))

function generatePlayer2(){
    const randomNumber =Math.floor(Math.random() * 3) +1
    console.log(randomNumber)
    if(randomNumber=== 1){
        Player2 = 'rock'
    }
    if(randomNumber=== 2){
        Player2 = 'Paper'
    }
    if(randomNumber=== 3){
        Player2 = 'scissors'
    }
    Player2Display.innerHTML=Player2
}
function getResult() {
    if (Player2 == Player1){
        Result = 'Draw'
    }
    if(Player2 == 'rock'&&Player1=='Paper'){
        Result = 'Player1 Won'
    }
    if(Player2 == 'Paper'&&Player1=='scissors'){
        Result = 'Player1 Won'
    }
    if(Player2 == 'scissors'&&Player1=='rock'){
        Result = 'Player1 Won'
    }
    if(Player2 == 'rock'&&Player1=='scissors'){
        Result = 'Player1 Lost'
    }
    if(Player2=='paper'&&Player1=='rock'){
        Result='Player1 Lost'
    }
    if(Player2=='scissors'&&Player1=='Paper'){
        Result='Player1 Lost'
    }
    ResultDisplay.innerHTML=Result
}