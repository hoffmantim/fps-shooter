extends Node3D

@onready var mesh: MeshInstance3D = $MeshInstance3D
@onready var ray: RayCast3D = $RayCast3D
@onready var particles: GPUParticles3D = $GPUParticles3D

const SPEED = 40

func _process(delta: float) -> void:
	position += transform.basis * Vector3(0, 0, -SPEED) * delta
	if ray.is_colliding():
		if ray.get_collider().is_in_group('enemy'):
			ray.get_collider().hit()
		ray.enabled = false
		mesh.visible = false
		particles.emitting = true
		await get_tree().create_timer(1.0).timeout
		queue_free()
		
	


func _on_timer_timeout() -> void:
	queue_free()
