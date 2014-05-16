{
//string_split(str, delimiter)
//ARGUMENTS:
//0         -       string to split
//1         -       delimiter to use
var delemiter, start, list, fnd, work, rest_length, term;
delimiter = argument1;
start = 0;
list = ds_list_create();
work = argument0;

fnd = string_pos(delimiter, work);
//show_debug_message("fnd: " + string(fnd));

while(fnd > 0){
  term = string_copy(work, start, (fnd - 1));
  //show_debug_message("term: " + term);

  start = start + fnd + string_length(delimiter);
  rest_length = string_length(work) - start;
  work = string_copy(work, start, rest_length + 1);

  ds_list_add(list, term);

  fnd = string_pos(delimiter, work);
  //show_debug_message("fnd: " + string(fnd));

  start = 0;
}

if(string_length(work) > 0){
  show_debug_message("adding last: " + work);
  ds_list_add(list, work);
}

return(list)
}
