extends Node2D


#Luodaan kentta

var playerScore = 0
var opponentScore = 0
var voittaja = ""

#Signaali OikeaSeina funktion tarkoitus on kasvattaa pallon nopeutta ja randomisoida pallon suunta pallon osuessa alueelle. Pallon tullessa alueelle saa tekoaly pisteen
func _on_OikeaSeina_body_entered(body):
	print('Collision')
	opponentScore += 1
	$Ball.speed += 30
	$Ball.randomizeVelocity()
	$Ball.position = Vector2(512,300)
	
#Signaali VasenSeina funktion tarkoitus on kasvattaa pallon nopeutta ja randomisoida pallon suunta pallon osuessa alueelle. Pallon tullessa alueelle saa pelaaja pisteen
func _on_VasenSeina_body_entered(body):
	print('Collision')
	playerScore += 1
	$Ball.speed += 30
	$Ball.randomizeVelocity()
	$Ball.position = Vector2(512,300)


func _process(delta):
	$PlayerScore.text = str(playerScore)
	$OpponentScore.text = str(opponentScore)
	if playerScore == 5:
		voittaja = "Player 1"
		winnerScreen()
	elif opponentScore == 5:
		voittaja = "Player 2"
		winnerScreen()
	

#winnerScreen tulee näkyviin kun jonmpikumpi pelaaja saa 5 pistetta, pysayttaa pelin ja antaa mahdollisuuden aloittaa pelin uudestaan
func winnerScreen():
	$VoittoText.visible = true
	$Button.visible = true
	$VoittoText.text = voittaja + " Wins"
	#Pysaytetaan scene
	get_tree().paused = true

