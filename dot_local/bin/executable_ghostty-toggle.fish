#!/usr/bin/env fish

# Look for the first Ghostty window
set line (wmctrl -lx | grep -i ghostty.com | head -n1)

if test -n "$line"
    # Extract the window ID (first column)
    set winid (echo $line | awk '{print $1}')
    # Focus that exact window
    wmctrl -ia $winid
else
    # Launch Ghostty if no window exists
    nohup ghostty >/dev/null 2>&1 &
end

