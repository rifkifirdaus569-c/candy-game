extends Area2D

@export var fall_speed := 200.0

func _ready():
	area_entered.connect(_on_area_entered)

func _process(delta):
	position.y += fall_speed * delta
	if position.y > 700:   # lewat layar bawah
		queue_free()

func _on_area_entered(_area):
	queue_free()           # kena player, permen hilang
