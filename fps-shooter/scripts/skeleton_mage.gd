extends Node3D
@onready var proto_controller: CharacterBody3D = %ProtoController

@onready var animation_player: AnimationPlayer = $AnimationPlayer
#@onready var despawn_animation_player: AnimationPlayer = $DespawnAnimationPlayer

var target = proto_controller
const SPEED = 15.0

func _ready():
	animation_player.play("Death_C_Skeletons_Resurrect")

#func _physics_process(delta: float) -> void:
	#var dloirection = (proto_controller.position - self.position)
	#var vecity = direction * SPEED
	
	
func _on_area_3d_body_part_hit(dam: Variant) -> void:
	print('hit me')
	animation_player.play("Death_B")
	await get_tree().create_timer(5).timeout
	emit_signal("spawn_new")
	queue_free()

#
#func play_start_animation():
	
