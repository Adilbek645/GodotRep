extends CharacterBody2D

enum {
	DOWN,
	UP,
	LEFT,
	RIGHT
}

@onready var anim = $AnimatedSprite2D
var speed = 100
var idel_dir = DOWN

func _physics_process(delta: float) -> void:
