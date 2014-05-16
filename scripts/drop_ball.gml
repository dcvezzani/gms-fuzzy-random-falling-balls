{
//drop_ball(xpos, the_ball)

  var xpos = argument0;
  var the_ball = argument1;
 
  with(the_ball){
    active = true;
    x = xpos;
    y = 0;
    visible = true;
    move_towards_point(xpos, room_height, 3);
  }
}
