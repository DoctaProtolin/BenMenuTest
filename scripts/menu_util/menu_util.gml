
/// @desc This creates the struct for menu item easily
function create_menu_item(name, color) {
    return {
        name: name,
        color: color,
    }
}

/// @desc This function positions an ellipse from the CENTER. This makes it easier for us to position the function on an array.
/// @arg {struct} item The menu item in question
/// @arg {real} x The x position of the center of the ellipse
/// @arg {real} y The y position of the center of the ellipse
/// @arg {real} w The width of the ellipse
/// @arg {real} h The height of the ellipse
function draw_menu_item(item, x, y) {
    // TODO: Add automatic text size readjustment option
    
    var w = string_width(item.name);
    var h = w;
    
    draw_ellipse_colour(x - w/2, y - h/2, x + w/2, y + h/2, item.color, item.color, false);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text_transformed(x, y, item.name, 1, 1, 0);
}


function menu_curve(angle, center_x, center_y, width, height) {
    var x_radius = width / 2;
    var y_radius = height / 2;
    
    return {
        x: center_x + x_radius * -dcos(angle),
        y: center_y + y_radius * -dsin(angle),
    }
}