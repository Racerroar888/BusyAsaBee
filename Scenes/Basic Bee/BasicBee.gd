extends KinematicBody2D


export var speed = 100



func _physics_process(delta):
	
	speed = 100
	
	if self.position.x > get_global_mouse_position().x:
		$Sprite.flip_h = false
		
	if self.position.x < get_global_mouse_position().x:
		$Sprite.flip_h = true

	speed = speed * rand_range(0.6,1.4)
	self.position = self.position.move_toward(Vector2(get_global_mouse_position().x * rand_range(0.8,1.2),get_global_mouse_position().y * rand_range(0.8,1.2)), delta * speed)
