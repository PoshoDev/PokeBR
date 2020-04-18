//view_set_resolution}

global.width =  display_get_width()
global.height = display_get_height()

global.quality = 1

//room_set_height(room, global.height*2)

view_wview[0] = global.width
view_hview[0] = global.height
view_wport[0] = global.width
view_hport[0] = global.height

window_set_size(global.width,global.height)
