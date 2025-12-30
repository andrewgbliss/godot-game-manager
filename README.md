# Godot Game Manager

This project is the starter template for all my projects in Godot.

## 📁 Project Structure

```
/
├── scenes/
│   └── core      # Core game files
│       └── game  # Game manager autoload
│   └── game      # The local game files only used for this game
```

## Project Settings

These are project settings for 2d pixel art games

```
[display]
window/size/viewport_width=320
window/size/viewport_height=180
window/size/window_width_override=1280
window/size/window_height_override=720
window/stretch/mode="viewport"
window/stretch/aspect="expand"
window/stretch/scale_mode="integer"

[rendering]
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
[display]
window/size/borderless=true
window/size/always_on_top=true
window/size/transparent=true
window/per_pixel_transparency/allowed=true

[rendering]
viewport/transparent_background=true

# Code to enable it
GameUtils.set_transparent_window()
```

### Setting Window Position

This will set the window position to the bottom right screen

```gdscript
GameUtils.set_window_position(GameUtils.get_bottom_right_position(get_window()))
```

## 📄 License

This project is open source. See LICENSE file for details.

---

**Happy coding! 🚀**
