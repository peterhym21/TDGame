extends Node

@onready var path = preload("res://Mobs/Stage 1.tscn")

func _on_timer_timeout():
	var tempPath = path.instantiate()
	add_child(tempPath)
