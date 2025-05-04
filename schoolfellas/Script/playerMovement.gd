extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	# Variables
	var direction := Input.get_axis("move_left", "move_right")
	var updown := Input.get_axis("move_up", "move_down")
	var isMove = false
	
	# Buat Gerak Kiri/Kanan
	if direction && !isMove:
		velocity.x = direction * SPEED
		isMove = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		isMove = false
	
	# Buat Gerak Atas/Bawah
	if updown && !isMove:
		velocity.y = updown * SPEED
		isMove = true
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		isMove = false
	
	# Animasi Gerak
	if velocity.x != 0 && velocity.y == 0 :
		if direction == 1:
			$Animation.play("JalanKanan")
		elif direction == -1:
			$Animation.play("JalanKiri")
	elif velocity.x == 0 && velocity.y != 0:
		if updown == 1:
			$Animation.play("JalanBawah")
		elif updown == -1:
			$Animation.play("JalanAtas")
	else:
		$Animation.pause()
		
	move_and_slide()
