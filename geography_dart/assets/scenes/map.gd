extends KinematicBody2D

signal entered

var popup = preload("res://assets/scenes/Control.tscn")


var motion = Vector2()
var state = 0
#0 for stop, 1 for right, 2 for left, 3 for up, 4 for down

class_name Map

func _physics_process(delta):
	
	if state == 0:
		motion.x = 100
	if state == 1:
		motion.x = -100
	if state == 2:
		motion.y = -100
	if state == 3:
		motion.y = 100
	
	
	move_and_slide(motion, Vector2(0,-1))


func _on_Timer_timeout():
	state = floor(rand_range(0,5))
	print(state)






func _on_australia_body_exited(body):
	emit_signal("entered")
