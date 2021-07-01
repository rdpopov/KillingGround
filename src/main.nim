import nico

var buttonDown = false

proc gameInit() =
  loadFont(0, "font.png")
  loadSpriteSheet(0, "test.png", 32, 32)

proc gameUpdate(dt: float32) =
  buttonDown = btn(pcA)

proc gameDraw() =
  cls()
  spr(swas)
  setColor(if buttonDown: 7 else: 3)
  #printc("hello world", screenWidth div 2, screenHeight div 2)

nico.init("myOrg", "myApp")
nico.createWindow("myApp", 128, 128, 4, false)

var swas = initSpriteDraw()
nico.run(gameInit, gameUpdate, gameDraw)
