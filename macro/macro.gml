// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function normalize_path(path){
	return string_replace(path,"\"","/")
}



function len( arg ){
	var known_types =["string","array"]
	if ( !array_contains(known_types, typeof(arg)) ) return noone
	
	if( typeof(arg)=="string" ) return string_length(arg)
	if( typeof(arg)=="array"  ) return array_length(arg)
}


#macro num instance_number
#macro find instance_find
#macro log show_debug_message


function set_draw_text_center( ){
	
	draw_set_valign(fa_center)
	draw_set_halign(fa_middle)
}

function set_draw_text_normal( ){
	
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}


function message_log( text, time=1 , col=c_white){
	
	MESSAGER.mess = text
	MESSAGER.draw_col = col
	MESSAGER.iter = time*room_speed*2
	MESSAGER.alarm[1]=1
}
