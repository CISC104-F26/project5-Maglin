extends Sprite2D
@export var movement_speed = 200
@export var normal_speed = 200
@export var sprint_speed = 400
@export var rotation_speed = 90
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Sprint"):
		movement_speed = sprint_speed
	else:
		movement_speed = normal_speed
	if Input.is_action_pressed("Move_Right"):
		position = position + (Vector2.RIGHT * movement_speed) * delta
	if Input.is_action_pressed("Move_Left"):
		position = position + (Vector2.LEFT * movement_speed) * delta
	if Input.is_action_pressed("Move_Up"):
		position = position + (Vector2.UP * movement_speed) * delta
	if Input.is_action_pressed("Move_Down"):
		position = position + (Vector2.DOWN * movement_speed) * delta
