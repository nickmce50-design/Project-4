extends Area2D

@export_multiline var dialog: Array[String] = [
	"Hello",
	"Thank you for defeating the Dragon and Saving me",
	"Lets get back to the Kingdom",
]

@onready var label: Label = $Label

var is_interactable := false
var current_line := 0

func _ready() -> void:
	label.visible = false
	label.text = ""

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		is_interactable = true
		current_line = 0
		label.text = dialog[current_line]
		label.visible = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		is_interactable = false
		label.visible = false

func _input(event: InputEvent) -> void:
	if not is_interactable or not label.visible:
		return

	if event.is_action_pressed("interact"):
		current_line += 1

		if current_line >= dialog.size():
			label.visible = false
			is_interactable = false
		else:
			label.text = dialog[current_line]
