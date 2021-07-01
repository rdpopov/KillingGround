import weapons

type UnitClassEnum {.pure.} = enum
    Infantry    = 1 shl 0
    Cavalry     = 1 shl 1
    Medic       = 1 shl 2
    Officer     = 1 shl 3
    Transport   = 1 shl 4
    Armoured    = 1 shl 5
    Air         = 1 shl 6
    Animal      = 1 shl 7
    Heavy       = 1 shl 8
    Light       = 1 shl 9
    Combat      = 1 shl 10
    Armed       = 1 shl 11


type Unit = object
    Class: UnitClassEnum
    Name:string
    Arsenal:seq[tuple[pew:Weapon,ammo:int]]
    Size:seq[tuple[x:int,y:int]]        # thinking of supporting vehiecles with non standard rectangle shape
    Sprites:seq[int]        # Which sprite id's from tilemap
    # TODO add support of animations , walking or otherwise
    CarryCapacity:int
