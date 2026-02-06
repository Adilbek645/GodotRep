extends CharacterBody2D

@onready var anim = $AnimatedSprite2D
@export var speed = 100
@export var chase_distance = 20.0
var player = null

func _physics_process(delta: float) -> void:
	if player:
		var distance = global_position.distance_to(player.global_position)
		
		if distance > chase_distance:
			var direction = (player.global_position - global_position).normalized()
			velocity = direction * speed
			anim.play("Walk")
			anim.flip_h = direction.x < 0
		else:
			velocity = Vector2.ZERO
			anim.play("Idle")
	else:
		velocity = Vector2.ZERO
		anim.play("Idle")
	
	move_and_slide()

# Эти функции появятся автоматически после подключения сигналов
func _on_detector_body_entered(body: Node2D) -> void:
	print("Кто-то вошёл: ", body.name)  # Для отладки
	if body.name == "player":  # Проверь, как называется узел игрока!
		player = body
		print("Игрок обнаружен!")

func _on_detector_body_exited(body: Node2D) -> void:
	if body == player:
		player = null
		print("Игрок ушёл")
