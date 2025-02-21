extends Area2D

@onready var win = get_node("YouWin")
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "BlueShip"):
		print("Reached objective!")
		win.visible = true
		timer.start()
	

func change_scene():
	get_tree().change_scene_to_file("res://scenes/NewLevel.tscn") 


func _on_timer_timeout() -> void:
	call_deferred("change_scene")
