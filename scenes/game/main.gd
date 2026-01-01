extends Node2D

@export var game_manager: GameManager
@export var game_state_label: Label
@export var pause_button: Button
@export var quit_button: Button

func _ready() -> void:
	game_manager.state_changed.connect(_on_game_state_changed)
	pause_button.pressed.connect(_pause_button_press)
	quit_button.pressed.connect(_quit_button_press)
	call_deferred("_after_ready")

func _after_ready():
	game_manager.set_state(GameManager.GAME_STATE.GAME_INIT)

func _on_game_state_changed(state: GameManager.GAME_STATE):
	game_state_label.text = game_manager.get_state_name(state)

func _pause_button_press():
	game_manager.toggle_pause()
	if game_manager.is_paused:
		pause_button.text = "Unpause"
	else:
		pause_button.text = "Pause"
		
func _quit_button_press():
	game_manager.quit()
