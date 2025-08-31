extends RigidBody2D

const FORCE: float = 2000
const TORQUE: float = 20000

func _physics_process(_delta: float):
	if Input.is_action_pressed("lander_left"):
		apply_torque(-TORQUE)

	if Input.is_action_pressed("lander_up"):
		apply_force(-transform.y * FORCE)

	if Input.is_action_pressed("lander_right"):
		apply_torque(TORQUE)
