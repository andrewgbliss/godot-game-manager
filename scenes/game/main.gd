extends Node2D

@export var game_state_label: Label
@export var pause_button: Button

func _ready() -> void:
	GameManager.state_changed.connect(_on_game_state_changed)
	pause_button.pressed.connect(_pause_button_press)
	call_deferred("_after_ready")

func _after_ready():
	GameManager.set_state(GameManager.GAME_STATE.GAME_INIT)

func _on_game_state_changed(state: GameManager.GAME_STATE):
	game_state_label.text = GameManager.get_state_name(state)

func _pause_button_press():
	GameManager.toggle_pause()
	if GameManager.is_paused:
		pause_button.text = "Unpause"
	else:
		pause_button.text = "Pause"
