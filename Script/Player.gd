extends CharacterBody2D
@export var walk_speed : int
@export var run_speed : int
@export var jump_height : int
@export var gravity : float
@export var anim_player : AnimationPlayer
@export var sprite : Sprite2D
@export var max_stamina : int
@export var stamina_bar : ProgressBar #This is temporary till I get UI setup
var stamina_wait := 0
var running := false
var speed : int
var last_anim : String
var grav_constant : Vector2
@onready var stamina := max_stamina
func _physics_process(delta):
	var direction = Input.get_axis("left", "right")
	var vertical = Input.get_axis("up", "down")
	if !is_on_floor():
		grav_constant.y += gravity
		if last_anim == "jump":
			if grav_constant.y > 0:
				anim_player.play("fall")
				last_anim = "fall"
	else:
		grav_constant.y = 0
		if vertical < 0:
			grav_constant.y = -jump_height
			anim_player.play("jump")
			last_anim = "jump"
		elif last_anim == "fall":
			anim_player.play("land")
			last_anim = "land"
	if direction > 0:
			sprite.flip_h = false
	elif direction < 0:
		sprite.flip_h = true
	if Input.is_action_pressed("sprint") and stamina >= 1:
			running = true
			speed = run_speed
	if last_anim != "jump" and last_anim != "fall":
		if !anim_player.current_animation == "land":
			if direction:
				if Input.is_action_pressed("sprint") and stamina >= 1:
					running = true
					speed = run_speed
					anim_player.play("run")
					last_anim = "run"
				else:
					running = false
					speed = walk_speed
					anim_player.play("walk")
					last_anim = "walk"
			else:
				anim_player.play("idle")
				last_anim = "idle"
	
	stamina_bar.value = stamina
	velocity = Vector2(direction, 0) * speed + grav_constant
	move_and_slide()


func _on_stamina_timer_timeout():
	if stamina_wait > 0:
		stamina_wait -= 1
		if stamina_wait != 0:
			return
	if !running and stamina < max_stamina:
		stamina += 1

func _on_run_deplete_timeout():
	if running and stamina > 0:
		stamina -= 1
	elif stamina == 0 and stamina_wait == 0:
		stamina_wait = 5
