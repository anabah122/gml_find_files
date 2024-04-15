/// @description FILES FINDER




function find_files( path, mask="", demask="" )
{
	
	start_time = current_time
	
	util_folders=[]
	util_files	=[]


	var list_files = function( path , mask, demask )
	{
		var file_name = file_find_first(path+"*", fa_directory);
	
		while (file_name != "")
		{
			
			if( string_count(".",file_name) ) 
			{
				if( len(mask) and !len(demask) and string_count(mask,file_name) ) 
					array_push( util_files, path+file_name);
				if( len(mask) and len(demask) and string_count(mask,file_name) and !string_count(demask,file_name) ) 
					array_push( util_files, path+file_name);
				
				if( !len(mask) )
					array_push( util_files, path+file_name);	
			}
			else 
				array_push( util_folders, path+file_name+@"\");
    
		    file_name = file_find_next();
		}
	
		file_find_close();
	}
	
	
	list_files(path, mask, demask)
	while len(util_folders)
	{
		list_files(util_folders[0], mask, demask)
		array_delete(util_folders,0,1)
	}
	
	log(string("elapsed time: {0}",current_time-start_time))
	
	return util_files
}










