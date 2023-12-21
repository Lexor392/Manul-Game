extends Attack

export(float) var amount := 10.0
onready var stream: Resource = preload('res://sound/weapons/melee/sfx_wpn_punch1.wav')


func enter(host: Player) -> void:
	host.get_node('AnimationPlayer').play('AttackLight')
	host.velocity.x = 0
	$DamageZone.set_type_of_attack('Light')
	$DamageZone.set_amount(amount)
	.play_sound(host, stream)


#warning-ignore:unused_argument
func _on_Animation_finished(anim_name: String, host: Player) -> void:
	if not host.has_set_next_attack:
		emit_signal('finished', 'CombatIdle')
	else:
		emit_signal('finished', 'AttackMedium')