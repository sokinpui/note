# Change highlight and override color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd"))
  augroup colorset
    autocmd!
    let s:cursor_grey = { "gui": "#2C323C", "cterm": "236", "cterm16": "0" } " Tweak to personal taste
    autocmd ColorScheme * call onedark#set_highlight("CursorLine", { "bg": s:cursor_grey })
  augroup END
endif


# Override color.
let g:onedark_color_overrides = {
\ "black": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
\}

