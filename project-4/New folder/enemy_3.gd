extends CharacterBody2D


const SPEED = 50.0
var direction = 1
# sets speed and direction
func _physics_process(delta: float) -> void:
	velocity.x = direction * SPEED
	if is_on_wall(): # if it hits the wall, pushes back and changes direction
		position.x -= 10 * direction
		direction *= -1
		print('hit wall')
	move_and_slide()
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == 'player':
		get_tree().reload_current_scene()
		# if it hits a trap, it reloads the current scene

		
