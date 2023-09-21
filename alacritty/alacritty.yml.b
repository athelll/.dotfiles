colors:
  primary:
    background: "#0E1018"
    foreground: "#ebdbb2"

  normal:
    black: "#282828"
    red: "#cc241d"
    green: "#98971a"
    yellow: "#d79921"
    blue: "#458588"
    magenta: "#b16286"
    cyan: "#689d6a"
    white: "#dfaf87"

  bright:
    black: "#928374"
    red: "#fb4934"
    green: "#b8bb26"
    yellow: "#fabd2f"
    blue: "#83a598"
    magenta: "#d3869b"
    cyan: "#8ec07c"
    white: "#ebdbb2"

window:
  padding:
    x: 10
    y: 10
  class:
    instance: Alacritty
    general: Alacritty
  opacity: 1
  decorations: None

scrolling:
  history: 10000
  multiplier: 3

font:
  normal:
    family: JetBrainsMono Nerd Font
    style:  Regular
  bold:
    family: JetBrainsMono Nerd Font
    style:  Bold
  italic:
    family: JetBrainsMono Nerd Font
    style:  Italic
  bold_italic:
    family: JetBrainsMono Nerd Font
    style: Bold Italic
  size: 9
draw_bold_text_with_bright_colors: true

selection:
  save_to_clipboard: false

shell:
  program: /usr/bin/bash

key_bindings:
  - { key: Return, mods: Super|Shift, action: SpawnNewInstance }
