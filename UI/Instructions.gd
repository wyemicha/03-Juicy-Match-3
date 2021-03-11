extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var countdown = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	update_label()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Countdown_timeout():
	countdown -= 1
	update_label()
func update_label():
	$Countdown_label.text = "Starting in " + str(countdown)
	if countdown <= 0:
		hide()
		$Countdown.stop()
		get_tree().paused = false
