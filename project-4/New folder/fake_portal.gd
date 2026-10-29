extends Area2D
@export var target: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and target: 
		body.global_position = target.global_position
		print('entered')
	# checks to see if body(the charecter) is in a group call player
	# if it is, it teleports player to targeted position
