# script di Area2D milik pumpkin
extends Area2D

signal candy_caught

func _ready():
	area_entered.connect(_on_area_entered)

func _on_area_entered(area):
	if area.is_in_group("candy"):
		area.queue_free()
		candy_caught.emit()
