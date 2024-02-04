extends Node

class_name v_pet

@export var needs :  Dictionary = {
	"happiness": 10,
	
}
var is_alive = true




func _on_timer_timeout():
	if is_alive:
		needs.happiness -= 1
		if needs.happiness > 5:
			$Label.text = "Happy"
		#elif needs.happiness < 3:
			#$Label.text = "Sad"
			#$AudioStreamPlayer.play()
		elif needs.happiness < 1:
			is_alive = false
			$AudioStreamPlayer.stream = load("res://V-Pet/sound_effects/laser3.ogg")
			$AudioStreamPlayer.play()
			$Label.text = "Dead"
			$Button.disabled = true
		
		
		
	



func _on_button_pressed():
	if is_alive:
		needs.happiness += 5
		if needs.happiness > 5:
			$Label.text = "Happy"
