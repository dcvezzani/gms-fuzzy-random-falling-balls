{
//obj_ball = pool_fetch_ball(the_balls)

  var the_balls = argument0;

  var the_ball = ds_list_find_value(the_balls, 0);
  ds_list_delete(the_balls, 0);

  return the_ball;
}
