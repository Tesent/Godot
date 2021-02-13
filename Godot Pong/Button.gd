extends Button



# Called when the node enters the scene tree for the first time.
func _ready():
	#Asetetaan Buttonille teksti
	text = "New game"
	#Asetetaan Buttonille eventti kun sita painetaan
	connect("pressed", self, "_button_pressed")
	#get_tree().reload_current_game()

#Buttonin painauksen jalkeen ladtaan scene uusiksi ja otetaan pause pois
func _button_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false
