const Player2Display= document.getElementById('Player-2')
const Player1Display= document.getElementById('Player-1')
const resultDisplay= document.getElementById('result')
const PossibleChoices= document.querySelectorAll('button')
let Player1
let Player2
let result

PossibleChoices.forEach(possibleChoice => possibleChoice.addEventListener('click', (e) =>{
    Player1 = e.target .id
    Player1Display.innerHTML=Player1
    generatePlayer2



}))