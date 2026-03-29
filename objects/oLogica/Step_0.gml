array_sort(global.dispos, true)

if (keyboard_check_pressed(global.FULLSCREEN_TECLA)){
	fullscreen = not fullscreen
}

window_set_fullscreen(fullscreen)

