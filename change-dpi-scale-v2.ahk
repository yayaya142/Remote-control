#Requires AutoHotkey v2.0
current_scale := 100 ; scale value you are currently in
next_scale := 150 ; scale value you want to switch to next
is_scaled := 0

; Ctrl + Win + F1 toggles main monitor between 2 scale values
^#F1::
{
    global is_scaled
    global next_scale
    global current_scale

    if(is_scaled == 0)
    {
        Run "SetDpi.exe " next_scale
    }
    else
    {
        Run "SetDpi.exe " current_scale
    }
    is_scaled := !is_scaled
}

; Ctrl + Win + F2 sets 2nd monitor to a scale of 150
^#F2::
{
    Run "SetDpi.exe 150 2"
}

