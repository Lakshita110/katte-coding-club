<HTML>
<HEAD>
<TITLE>Hangman</TITLE>
<SCRIPT LANGUAGE="JavaScript"><!--
gallows = new Array("--------n|      |n|n|n|n|n=====",
"--------n|      On|n|n|n|n=====",
"--------n|      On|      |n|n|n|n=====",
"--------n|      On|     \|n|n|n|n=====",
"--------n|      On|     \|/n|n|n|n=====",
"--------n|      On|     \|/n|      |n|n|n=====",
"--------n|      On|     \|/n|      |n|     /n|n=====",
"--------n|      On|     \|/n|      |n|     / \n|n=====")
guessChoices = new
Array("JavaScript","Navigator","LiveConnect","LiveWire","SenayDesta","TheGreatest")
function startAgain() {
 guesses = 0
 max = gallows.length-1
 guessed = " "
 len = guessChoices.length - 1
 toGuess = guessChoices[Math.round(len*Math.random())].toUpperCase()
 displayHangman()
 displayToGuess()
 displayGuessed()
}
function stayAway() {
 document.game.elements[3].focus()
 alert("Don't mess with this form element!")
}
function displayHangman() {
 document.game.status.value=gallows[guesses]
}
function displayToGuess() {
 pattern=""
 for(i=0;i<toGuess.length;++i) {
  if(guessed.indexOf(toGuess.charAt(i)) != -1)
   pattern += (toGuess.charAt(i)+" ")
  else pattern += "_ "
 }
 document.game.toGuess.value=pattern
}
function displayGuessed() {
 document.game.guessed.value=guessed
}
function badGuess(s) {
 if(toGuess.indexOf(s) == -1) return true
 return false
}
function winner() {
 for(i=0;i<toGuess.length;++i) {
  if(guessed.indexOf(toGuess.charAt(i)) == -1) return false
 }
 return true
}
function guess(s){
 if(guessed.indexOf(s) == -1) guessed = s + guessed
 if(badGuess(s)) ++guesses
 displayHangman()
 displayToGuess()
 displayGuessed()
 if(guesses >= max){
 alert("You're dead. The word you missed was "+toGuess+".")
  startAgain()
 }
 if(winner()) {
  alert("You won!")
  startAgain()
 }
}
// --></SCRIPT>
</HEAD>
<BODY>
<H1>Hangman</H1>
<FORM NAME="game">
<PRE>
<TEXTAREA NAME="status" ROWS="7" COLS="16"
 ONFOCUS="stayAway()"></TEXTAREA>
</PRE><P>
<INPUT TYPE="TEXT" NAME="toGuess"
 ONFOCUS="stayAway()"> Word to guess<BR>
<INPUT TYPE="TEXT" NAME="guessed"
 ONFOCUS="stayAway()"> Letters guessed so far<BR>
<P>Enter your next guess.</P>
<INPUT TYPE="BUTTON" VALUE=" A " ONCLICK="guess('A')">
<INPUT TYPE="BUTTON" VALUE=" B " ONCLICK="guess('B')">
<INPUT TYPE="BUTTON" VALUE=" C " ONCLICK="guess('C')">
<INPUT TYPE="BUTTON" VALUE=" D " ONCLICK="guess('D')">
<INPUT TYPE="BUTTON" VALUE=" E " ONCLICK="guess('E')">
<INPUT TYPE="BUTTON" VALUE=" F " ONCLICK="guess('F')">
<INPUT TYPE="BUTTON" VALUE=" G " ONCLICK="guess('G')">
<INPUT TYPE="BUTTON" VALUE=" H " ONCLICK="guess('H')">
<INPUT TYPE="BUTTON" VALUE=" I " ONCLICK="guess('I')">
<INPUT TYPE="BUTTON" VALUE=" J " ONCLICK="guess('J')">
<INPUT TYPE="BUTTON" VALUE=" K " ONCLICK="guess('K')">
<INPUT TYPE="BUTTON" VALUE=" L " ONCLICK="guess('L')">
<INPUT TYPE="BUTTON" VALUE=" M " ONCLICK="guess('M')">
<INPUT TYPE="BUTTON" VALUE=" N " ONCLICK="guess('N')">
<INPUT TYPE="BUTTON" VALUE=" O " ONCLICK="guess('O')">
<INPUT TYPE="BUTTON" VALUE=" P " ONCLICK="guess('P')">
<INPUT TYPE="BUTTON" VALUE=" Q " ONCLICK="guess('Q')">
<INPUT TYPE="BUTTON" VALUE=" R " ONCLICK="guess('R')">
<INPUT TYPE="BUTTON" VALUE=" S " ONCLICK="guess('S')">
<INPUT TYPE="BUTTON" VALUE=" T " ONCLICK="guess('T')">
<INPUT TYPE="BUTTON" VALUE=" U " ONCLICK="guess('U')">
<INPUT TYPE="BUTTON" VALUE=" V " ONCLICK="guess('V')">
<INPUT TYPE="BUTTON" VALUE=" W " ONCLICK="guess('W')">
<INPUT TYPE="BUTTON" VALUE=" X " ONCLICK="guess('X')">
<INPUT TYPE="BUTTON" VALUE=" Y " ONCLICK="guess('Y')">
<INPUT TYPE="BUTTON" VALUE=" Z " ONCLICK="guess('Z')"><P>
<INPUT TYPE="BUTTON" NAME="restart" VALUE="---- Start Again ----"
 ONCLICK="startAgain()">
<SCRIPT LANGUAGE="JavaScript"><!--
startAgain()
// --></SCRIPT>
</FORM>
</BODY>
</HTML>//
why mot
// idk