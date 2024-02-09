extends Timer
class_name Need

@export var current_value : float = 30
@export var increment : float = 5
@export var max : float = 100

signal need_update


func _on_timeout():
	current_value -= increment
	need_update.emit(current_value)
	pass # Replace with function body.
