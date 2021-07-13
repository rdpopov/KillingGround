import nico

type
    Drawable* = ref object of RootObj
        CellX, CellY:int
        CellOffsX, CellOffsY:int
        SizeX,Size:int 
        SpriteSet:seq[seq[int]]
        AnimationSet:int
        AnimationState:int

method Draw*(this:Drawable) {.base.} =
  spr(this.SpriteSet[this.AnimationSet][this.AnimationState],
      this.CellX+this.CellOffsX,
      this.CellY+this.CellOffsY)

method NextAnimation*(this:Drawable) {.base.} =
    inc this.AnimationState
    this.AnimationState = this.AnimationState mod this.SpriteSet[this.AnimationSet].len()

method ChangeAnimationState*(this:var Drawable,to:int) {.base.} =
    this.AnimationSet = to
