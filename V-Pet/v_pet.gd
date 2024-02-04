extends Node

class_name v_pet

@export var needs :  Dictionary = {
	"happiness": 5,
	
}
var is_alive = true




func _on_timer_timeout():
	if is_alive:
		needs.happiness -= 1
		if needs.happiness == 0:
			is_alive = false
		
		
	

