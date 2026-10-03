    // Menu controls
    cursor_index += keyboard_check_released(vk_right) - keyboard_check_released(vk_left);
    
    // Wrap cursor
    if (cursor_index < 0) cursor_index = array_length(menu_items) - 1;
    else if (cursor_index > array_length(menu_items) - 1) cursor_index = 0;
    
    // Use these controls to experiment with positions and sizes
    menu_width += 5 * (keyboard_check(ord("W")) - keyboard_check(ord("S")));
    
    // Currently unused
    if (keyboard_check_released(ord("D"))) debug_graphics = !debug_graphics;