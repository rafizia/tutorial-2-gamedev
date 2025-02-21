extends Area2D

@onready var win = get_node("YouWin")

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "GreenShip"):
		print("Reached objective!")
		win.visible = true
