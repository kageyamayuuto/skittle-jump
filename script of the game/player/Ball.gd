extends RigidBody

export var rolling_force = 40
export var jump_impulse = 1000
var camera
onready var jump_sound = $jump_sound
#onready var camerabase = $CameraBase

func _ready():
	$CameraRig.set_as_toplevel(true)
	$FloorCheck.set_as_toplevel(true)
	#Input.mouse_mode = 2

	
#func _input(event):
	#if event is InputEventMouseMotion:
		#camerabase.rotation.x -= deg2rad(event.relative.y * 1)
		#camerabase.rotation.x = clamp(camerabase.rotation.x, deg2rad(-90), deg2rad(90))
		#rotation.y -= deg2rad(event.relative.x * 1)
	
func _physics_process(delta):
	var old_camera_pos = $CameraRig.global_transform.origin
	var ball_pos = global_transform.origin
	var new_camera_pos = lerp(old_camera_pos, ball_pos, 0.1)
	#camera = get_node("target/Camera").get_global_transform()
	$CameraRig.global_transform.origin = new_camera_pos
	
	$FloorCheck.global_transform.origin = global_transform.origin
	
	if Input.is_action_pressed("forward"):
		angular_velocity.x -= rolling_force*delta
	elif Input.is_action_pressed("back"):
		angular_velocity.x += rolling_force*delta
	if Input.is_action_pressed("left"):
		angular_velocity.z += rolling_force*delta
	elif Input.is_action_pressed("right"):
		angular_velocity.z -= rolling_force*delta
		
	var is_on_floor = $FloorCheck.is_colliding()
	if Input.is_action_just_pressed("jump") and is_on_floor:
		apply_central_impulse(Vector3.UP*jump_impulse)		
		jump_sound.play()
