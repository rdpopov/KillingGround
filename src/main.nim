import nico

var buttonDown = false
var  pos_x:int = 0 
var  pos_y:int = 0
var max_res = 128

proc gameInit() =
  loadFont(0, "font.png")
  loadSpriteSheet(0, "test.png", 32, 32)

proc gameUpdate(dt: float32) =
  var key_w = keyp(K_w)
  var key_a = keyp(K_a)
  var key_s = keyp(K_s)
  var key_d = keyp(K_d)
  if key_w and pos_x > 0:
    dec pos_y,2
  if key_a and pos_y > 0:
    dec pos_x,2
  if key_s and pos_x < max_res:
    inc pos_y,2
  if key_d and pos_y < max_res:
    inc pos_x,2 
  buttonDown = btn(pcA)

proc gameDraw() =
  cls()
  spr(0,pos_x,pos_y)
  #setColor(if buttonDown: 7 else: 3)
  #printc("hello world", screenWidth div 2, screenHeight div 2)

nico.init("myOrg", "myApp")
nico.createWindow("myApp", max_res, max_res, 4, false)

nico.run(gameInit, gameUpdate, gameDraw)
