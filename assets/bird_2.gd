extends Label

@export var pop_scale: Vector2 = Vector2(0.9, 0.9)
@export var duration: float = 0.8

func _ready():
	# Crucial: Labels need their pivot set to the center to scale outwards
	# Using call_deferred ensures the size is correctly calculated before setting pivot
	call_deferred("_setup_pivot")
	start_pulse()

func _setup_pivot():
	pivot_offset = size / 2

func start_pulse():
	var tween = create_tween().set_loops() # Infinite loop
	
	# Scale up
	tween.tween_property(self, "scale", pop_scale, duration)\
		.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
	
	# Scale back to normal
	tween.tween_property(self, "scale", Vector2(0.8,0.8), duration)\
		.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
