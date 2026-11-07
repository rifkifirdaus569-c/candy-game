extends Sprite2D
 
# Kecepatan gerak (pixel per detik).
# @export → bisa diubah dari Inspector.
@export var speed : float = 700.0
 
func _process(delta):
	# -1 (kiri), 0 (diam), 1 (kanan)
	var direction_x = Input.get_axis(
		"move_left", "move_right")
	var screen_width = 1156.0
	var screen_height = 651.0
	position.x = clamp(
	position.x,
	0,
	screen_width
)

	position.y = clamp(
	position.y,
	0,
	screen_height
)
 
	# Gerak berbasis waktu.
	position.x += direction_x * speed * delta
