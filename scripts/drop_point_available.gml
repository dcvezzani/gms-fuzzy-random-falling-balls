{
//drop_point_available(xpos, obj)

  var xpos = argument0;
  var obj = argument1;
  
  var half = (obj.sprite_width/2);
  var x1, y1, x2, y2;
  var sx1, sy1, sx2, sy2;

  with(obj_controller){
    coll_circle = "";
    coll_rect_hor = "";
    coll_rect_vert = "";
  }
  
  with(obj){
    if(!active){ continue; }

    x1 = x - half;
    y1 = y - half;
    x2 = x + half;
    y2 = y + half;

    var chk_circle = rectangle_in_circle(x1, y1, x2, y2, xpos, 0, 80);
    obj_controller.coll_circle = string(xpos) + ":" + string(0) + ":" + string(80) + ":" + string(chk_circle)

    sx1 = 0;
    sy1 = 0;
    sx2 = room_width;
    sy2 = obj.sprite_height;

    var chk_hor = rectangle_in_rectangle(x1, y1, x2, y2, sx1, sy1, sx2, sy2);
    obj_controller.coll_rect_hor = string(sx1) + ":" + string(sy1) + ":" + string(sx2) + ":" + string(sy2) + ":" + string(chk_hor)

    sx1 = xpos - half;
    sy1 = 0;
    sx2 = xpos + half;
    sy2 = room_height;

    var chk_vert = rectangle_in_rectangle(x1, y1, x2, y2, sx1, sy1, sx2, sy2);
    obj_controller.coll_rect_vert = string(sx1) + ":" + string(sy1) + ":" + string(sx2) + ":" + string(sy2) + ":" + string(chk_vert)

    if((chk_circle + chk_hor + chk_vert) > 0){
      return false;
    }
  }
  
  return true;
}


