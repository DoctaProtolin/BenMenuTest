    
    // Store these coords for later use, since the rest of the menu will be drawn relative to the central item.
    var center_x = WINDOW_WIDTH / 2;
    var center_y = WINDOW_HEIGHT / 2;
    
    // Draw the central item at the center of the screen.
    draw_menu_item(central_item, center_x, center_y);

    for (var i = 0; i < array_length(menu_items); i ++) {
        
        // Update the display.
        if (target_index < cursor_index) {
            target_index += 0.01;
            
        } else if (target_index > cursor_index) {
            target_index -= 0.01;
        }
        
        // The reference menu has its items placed in approximately 60 degree increments.
        // Offset by +1 since that's where the cursor is, and offset by -target_index since the menu needs to move backwards when the cursor "moves" forward
        var angle = (i - target_index + 1) * 60; 
        
        // This function generates the position of a node with a given angle.
        var position = menu_curve(angle, center_x, center_y, menu_width, menu_height);
        
        // Draw the item
        draw_menu_item(menu_items[i], position.x, position.y);
    }
    
    // Use 60 degree angles for the increments, and have the angle of first position (index 1) be where the cursor is placed.
    var position = menu_curve(1 * 60, center_x, center_y, menu_width, menu_height);

    draw_sprite(spr_cursor, 0, position.x, position.y - 100); // Move the cursor up a little bit so it doesn't obscure the item sprite.

    
    if (debug_graphics) {
        draw_set_color(c_white);
        draw_text(100, 100, $"Cursor index: {cursor_index}");
    }