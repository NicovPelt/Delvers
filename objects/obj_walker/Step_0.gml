/// @description Insert description here
// You can write your code in this editor

switch (keyboard_key)
   {
   case vk_left:
   case ord("A"):
      x -= 4;
      break;
   case vk_right:
   case ord("D"):
      x += 4;
      break;
   case vk_up:
   case ord("W"):
      y -= 4;
      break;
   case vk_down:
   case ord("S"):
      y += 4;
      break;
   }