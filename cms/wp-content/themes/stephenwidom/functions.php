<?php

//** === === === === === === ===>>> THEME SETUP
if (!function_exists('sw_setup')){ function sw_setup(){

    // HIDE ADMIN MENU / BAR
    show_admin_bar(false);

    // DISABLE FILE EDITOR
    define('DISALLOW_FILE_EDIT', true);

	// ADD FEATURED IMAGE SUPPORT
	add_theme_support('post-thumbnails');

	// ADD CUSTOM IMAGE SIZES
	add_image_size('featured', 800, 313, true);
	add_image_size('featured-full-width', 1200, 450, true);
    add_image_size('sidebar-video', 300, 180, true);
    add_image_size('magazine-cover', 205, 271, true);

	// CUSTOM POST THUMBNAIL SIZE
	set_post_thumbnail_size(200, 140, true);
    
}} add_action('after_setup_theme', 'sw_setup');


//** === === === === === === ===>>> REGISTER CUSTOM POST TYPES
if (!function_exists('sw_register_my_post_types')) { function sw_register_my_post_types(){

    register_post_type('portfolio',
        array(
            'labels' => array(
                'name' => 'Portfolio',
                'singular_name' => 'Item',
                'add_new' => 'Post New Item',
                'add_new_item' => 'Post New Item',
                'edit_item' => 'Edit Item',
                'new_item' => 'New Item',
                'all_items' => 'Whole Portfolio',
                'menu_name' => 'Portfolio'
            ),
            'menu_icon' => 'dashicons-portfolio',
            'menu_position' => 20,
            'has_archive' => true,
            'public' => true,
            'show_in_rest' => true,
            'supports' => array('title', 'thumbnail', 'editor')
        )
    );
    register_post_type('technologies',
        array(
            'labels' => array(
                'name' => 'Technologies',
                'singular_name' => 'Technology',
                'add_new' => 'Post New Technology',
                'add_new_item' => 'Post New Technology',
                'edit_item' => 'Edit Technology',
                'new_item' => 'New Technology',
                'all_items' => 'All Technologies',
                'menu_name' => 'Technologies'
            ),
            'menu_icon' => 'dashicons-laptop',
            'menu_position' => 21,
            'has_archive' => true,
            'public' => true,
            'show_in_rest' => true,
            'supports' => array('title')
        )
    );

}} add_action('init', 'sw_register_my_post_types');


//** === === === === === === ===>>> GET FEATURED IMAGE URL
function wp_get_thumbnail_url($id, $size = "thumbnail"){
    if (empty($id) || !has_post_thumbnail($id))
        return false;

    $image_array = wp_get_attachment_image_src(get_post_thumbnail_id($id), $size);
    $image_url = (is_array($image_array)) ? $image_array[0] : $image_array;
    return $image_url;
}


//** === === === === === === ===>>> DANK SORT
function dank_sort($array, $property, $order = "asc"){
	if (!empty($array) && !empty($property)){
		$new_array = array();
		foreach($array as $key => $value){
			$new_array[$value->{$property}] = $value;
		}
		if (strtolower($order) == "desc"){
			krsort($new_array);
		} else {
			ksort($new_array);
		}
		return $new_array;
	} else {
		return false;
	}
}


//** === === === === === === ===>>> HIDE WORDPRESS VERSION
if (!function_exists('remove_version')){ function remove_version(){
  return '';
}} add_filter('the_generator', 'remove_version');


//** === === === === === === ===>>> CHANGE DEFAULT WORDPRESS EMAIL NAME/ADDRESS

// UPDATE FROM EMAIL ADDRESS
function sw_mail_from_email($from_email) {

    return "steve@stephenwidom.com";

} add_filter("wp_mail_from", "sw_mail_from_email");

// UPDATE FROM EMAIL NAME
function sw_mail_from_name($from_name) {

    return "Stephen Widom";

} add_filter("wp_mail_from_name", "sw_mail_from_name");


//** === === === === === === ===>>> FUNCTION TO TEST IF DEV OR NOT
if (!function_exists('is_dev')) { function is_dev() {

    $host = $_SERVER['HTTP_HOST'];
    $prefixes = array('local', 'dev', 'stage');
    foreach ($prefixes as $pre) {
        if (strpos($host, $pre) !== false)
            return true;
    }

    return false;

}}

