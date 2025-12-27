# Godot Game Manager

This project is the starter template for all my projects in Godot.

## 📁 Project Structure

```
/
├── scenes/
│   └── core      # Used acrossed all projects
│       └── game  # Game manager autoload
│   └── game      # The local game files only used for this game
```

## Project Setting For 2d Pixel Art Games

```
window/size/viewport_width=320
window/size/viewport_height=180
window/size/window_width_override=1280
window/size/window_height_override=720
window/stretch/mode="viewport"
window/stretch/aspect="expand"
window/stretch/scale_mode="integer"
textures/canvas_textures/default_texture_filter=0 # Nearest
```

## Autload Usage

```gdscript
# Setting the game state
GameManager.set_state(GameManager.GAME_STATE.GAME_INIT)

# Pause the game
GameManager.toggle_pause()
```

## GameUtils Uages

### Snap to grid

For games that need to snap to a grid in game

```gdscript
var pos = GameUtils.snap_to_grid(pos)
```

### Transparent Window

```gdscript
GameUtils.set_transparent_window()
```

- Open your project in Godot and go to Project > Project Settings in the top menu.
- Click the Advanced Settings button at the top right of the Project Settings window to reveal all options.
- In the Project Settings window, navigate to Display > Window.
- Set Transparent to Enabled.
- Set Borderless to Enabled.
- Set Always on Top to Enabled.
- Navigate to Display > Window > Per Pixel Transparency.
- Set Allowed to Enabled.
- Navigate to Rendering > Viewport.
- Set Transparent Background to Enabled.
- (Optional) Set a fixed size for your game window under Display > Window > Size by adjusting the Width and Height.

### Setting Window Position

This will set the window position to the bottom right screen

```gdscript
GameUtils.set_window_position(GameUtils.get_bottom_right_position(get_window()))
```

## 📄 License

This project is open source. See LICENSE file for details.

---

**Happy coding! 🚀**
