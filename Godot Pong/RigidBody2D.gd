extends KinematicBody2D

#Ball node sisaltaa pallon ominaisuudet


var speed = 100
var velocity = Vector2.ZERO


#randomisoidaan pallon sijainti
func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	velocity.x = [-1,1][rng.randi() % 2]
	velocity.y = [-1,1][rng.randi() % 2]

#Annetaan pallolle nopeus ja lukitaan se
func _physics_process(delta):
	var collisionObj = move_and_collide(velocity * speed * delta)
	if collisionObj:
		velocity = velocity.bounce(collisionObj.normal)

#Randomisoidaan pallon suunta kun pallo on osunut maaliin
#Kutsutaan vain Kentta skriptissa
func randomizeVelocity():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	velocity.x = [-1,1][rng.randi() % 2]
	velocity.y = [-1,1][rng.randi() % 2]
