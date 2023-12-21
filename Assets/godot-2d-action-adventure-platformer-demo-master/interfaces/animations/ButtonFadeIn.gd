extends Button

func _ready() -> void:
	$Tween.interpolate_property(self, 'modulate', Color(0, 0, 0, 0), Color(1, 1, 1, 1), 1.5, Tween.TRANS_CIRC, Tween.EASE_IN)
	$Tween.start()