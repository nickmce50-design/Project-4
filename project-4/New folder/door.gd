extends Area2D

@onready var doorblock: StaticBody2D = $StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if not body.is_in_group("player"):
		return
	if GameManager.has_item("key"):
		doorblock.queue_free() # Opens by removing the door
		
	else:
		print("locked.")
		
