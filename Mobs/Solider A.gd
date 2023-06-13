extends CharacterBody2D

@export var speed = 300
var Health = 10

func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	
	if get_parent().get_progress_ratio() == 1:
		death()
		Game.Health -= 1
		
	if Health <= 0:
		death()
		Game.Gold += 1
	
func death():
	get_parent().get_parent().queue_free()
