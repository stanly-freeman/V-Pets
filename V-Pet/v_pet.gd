extends Node

class_name v_pet

@onready var animation_tree = $Visuals/AnimationTree

@export var needs :  Dictionary = {
	"happiness": 10,
	
}
var is_alive = true





func _on_button_pressed():
	if is_alive:
		needs.happiness += 5
		if needs.happiness > 5:
			$Label.text = "Happy"


func _on_hunger_need_update(current_value):
	if current_value < 1:
		print("dead")
	print(current_value)
	pass # Replace with function body.
