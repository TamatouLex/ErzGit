//Holodrio
with(dialogbox){instance_destroy()}
txt = instance_create(argument2,argument3,dialogbox)
txt.host = id
txt.depth = depth -10
txt.color = color
txt.maxLength = maxLength





with (txt)
{
    padding = 16;
    text = argument0;
    spd = argument1;
    align = fa_left
    font = fntarial

    
    text_length = string_length(text);
    font_size = font_get_size(font);

    
//    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), maxLength);
    text_height = string_height_ext(text,font_size+(font_size/2), maxLength);
    }
