extends KinematicBody2D

var dart = preload("res://assets/dart.tscn")
export var bullet_speed = 1000


func _process(delta):
	look_at(get_global_mouse_position())

	if Input.is_action_just_pressed("fire"):
		var bullet_instance = dart.instance()
		bullet_instance.postion = get_global_position()
		bullet_instance.rotation_degrees = rotation_degrees
		bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed,0).rotated(rotation))
		get_tree().get_root().add_child(bullet_instance)
