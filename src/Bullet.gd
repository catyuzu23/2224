extends Area2D

var speed = 750
var timer = 400
@onready var damage = 1

func _physics_process(delta):
	position += transform.x * speed * delta
	timer -= 1
	if timer == 0:
		queue_free()

func _on_Bullet_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()
