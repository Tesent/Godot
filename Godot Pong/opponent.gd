extends KinematicBody2D
#This script controls movement

#"Tekoalyn" skripti
var motion = 500
var ball


func _ready():
	#Haetaan node Ball ja sioitetaan se var ball
	ball = get_parent().find_node("Ball")
	

#Funktio joka liikuttaa tekoalya
func _physics_process(delta):
	move_and_slide(Vector2(0,ball_position()) * motion)

#Haetaan pallon siainti
func ball_position():
	#Jos pallon siainti on enemman kuin 30 tekoalyn siainista liikutetaan tekoalya
	if abs(ball.position.y - position.y) > 30:
		#liikutetaan alas jos pallon sijainti on enemman kuin oma muuten alas
		if ball.position.y > position.y:
			return 1
		else: return -1
	else: return 0
