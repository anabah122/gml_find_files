
function normalize_path(path){
	return string_replace(path,"\"","/")+@""
}

function len( arg ){
	var known_types =["string","array"]
	if ( !array_contains(known_types, typeof(arg)) ) return noone
	
	if( typeof(arg)=="string" ) return string_length(arg)
	if( typeof(arg)=="array"  ) return array_length(arg)
}

#macro log show_debug_message

