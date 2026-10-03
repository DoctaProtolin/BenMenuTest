

    // create_menu_item stores all the relevant data for a menu option so we don't need multiple
    // arrays to deal with them. Those can be hard to conceptualise, at least for me.
    menu_items = [
        create_menu_item("Greeting card download", c_red),
        create_menu_item("Wallpaper download", c_orange),
        create_menu_item("Vana diel Tribune", c_yellow),
        create_menu_item("Square Enix gallary", c_green),
    ];

    // I'm using the same datatype (the struct create_menu_item) so we can keep using the data from before. I'm assuming that "Informaiton" is a 
    // submenu, so in theory, we can just hand this datatype down from the main menu once we switch to this one, making our system much more modular.
    central_item = create_menu_item("Information", c_grey);
    
    cursor_index = 0; // The index of the item we are currently selecting.
    target_index = 0; // The interpolated index. This is only used for drawing while the menu is being animated.

    // These variables control how the items on the menu are positioned relative to the central node.
    menu_width = 400;
    menu_height = 400;
    
    // Display debug graphics (currently unused)
    debug_graphics = false;
    