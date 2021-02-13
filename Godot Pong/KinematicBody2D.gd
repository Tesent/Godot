extends KinematicBody2D
#This script controls movement

#Pelaaja node
var motion = Vector2()


#Annetaan pelaajalle ohjattavat nap
func _physics_process(delta):
	if Input.is_action_pressed("alphabet_up"):
		motion.y = -10000
	elif Input.is_action_pressed("alphabet_down"):
		motion.y = 10000
	else:
		motion.y = 0
	move_and_slide(motion * delta)
	
