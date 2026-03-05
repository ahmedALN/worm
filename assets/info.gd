extends TextureButton

@export var pop_scale: Vector2 = Vector2(1.1, 1.1)
@export var duration: float = 0.45
# Slower duration feels more natural for idle pulses

func _ready():
	# Ensure the button scales from the center
	pivot_offset = size / 2
	
	# Start the infinite loop immediately
	start_pulse()

func start_pulse():
	var tween = create_tween().set_loops() # Loop forever
	
	# Animate up and down smoothly
	tween.tween_property(self, "scale", pop_scale, duration).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "scale", Vector2.ONE, duration).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
