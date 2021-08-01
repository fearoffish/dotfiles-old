local wezterm = require 'wezterm';

return {
  font = wezterm.font('FiraCode Nerd Font Mono'),
  font_size = 14,
  window_padding = {
    left = 20,
    -- This will become the scrollbar width if you have enabled the scrollbar!
    right = 20,

    top = 0,
    bottom = 0,
  },
  scrollback_lines = 10000,
  colors = {
    foreground = "#c7c7c7",
    background = "#282A36",
    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = "#ffb472",
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = "black",
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- of the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = "#ffb472",

    -- the foreground color of selected text
    selection_fg = "#f4f4f4",
    -- the background color of selected text
    selection_bg = "#454d95",

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = "#222222",

    -- The color of the split lines between panes
    split = "#444444",

    ansi = {"#616161", "#ff8272", "#b4fa72", "#fefdc2", "#a5d5fe", "#ff8ffd", "#d0d1fe", "#f1f1f1"},
    brights = {"#8e8e8e", "#ffc4bd", "#d6fcb9", "#fefdd5", "#c1e3fe", "#ffb1fe", "#e5e6fe", "#feffff"},
  }
}
