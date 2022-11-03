extends KinematicBody2D


export var speed = 100


func _physics_process(delta):
	
	if self.position.x > get_global_mouse_position().x:
		$Sprite.flip_h = false
		
	if self.position.x < get_global_mouse_position().x:
		$Sprite.flip_h = true

	self.position = self.position.move_toward(get_global_mouse_position(), delta * speed)
