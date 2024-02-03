extends Node

@export var needs :  Dictionary = {
	"happiness": 5,
	
}
var is_alive = true



func _on_timer_timeout():
	needs.happiness -= 1
	if needs.happiness < 1:
		is_alive = false
	
	#update_ui()
	#update_behavoir()
	print("timeout" + str(needs.happiness) + str(is_alive))



