cat ~/.config/mpv/bookmarks.json

# mpv video movie player

# Ctrl+1 script_message bookmark-set  1       #  `Ctrl+1` will "save current filePath and seekPos to bookmark #1 slot"

# Alt+1  script_message bookmark-load 1       #  `Alt+2` will "restore current filePath and seekPos from bookmark #1 slot"

# Alt+Ctrl+1  script_message bookmark-peek 1  #  `Alt+Ctrl+2` will give you a "peek of the filename, its immediate parent directory and seek-pos saved in the bookmark #1 slot"

# Ctrl+2 script_message bookmark-set  2

# Alt+2  script_message bookmark-load 2

# Alt+Ctrl+2  script_message bookmark-peek 2

# s script_message bookmark-update            # `s` will update last saved/restored bookmark

# d script_message bookmark-peek-current      # `d` will peek last saved/restored bookmark (lastest saved/restored bookmark is only considered if current file is in the same directory as the bookmark file)

# u script_message bookmark-set-undo          # `u` will undo/revert last save or update action

# https://github.com/nimatrueway/mpv-bookmark-lua-script.git
