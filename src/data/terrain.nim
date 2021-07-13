import drawable
type TerrainEnum {.pure.}= enum
    Rubble      = 1 shl 0
    Grass       = 1 shl 1
    TallGras    = 1 shl 2
    Dirt        = 1 shl 3
    Road        = 1 shl 4
    Forest      = 1 shl 5   
    Water       = 1 shl 6   
    Building    = 1 shl 7
    Trench      = 1 shl 8   
    Foxhole     = 1 shl 9   
    Cliff       = 1 shl 10   

type MaterialEnum {.pure.} = enum  
    Concrete    = 1 shl 0
    Wood        = 1 shl 1
    Steel       = 1 shl 2
    Dirt        = 1 shl 4
    Stone       = 1 shl 5

type TerrainStatusEffect {.pure.} = enum
    Flammable   = 1 shl 0
    Burning     = 1 shl 1
    Explosive   = 1 shl 2
    Chemical    = 1 shl 3
    Mud         = 1 shl 4
    Marsh       = 1 shl 5
    Thick       = 1 shl 6
#create class status effect 

type Terrain = object 
    #Basic
    Name:string         #name of the weapon
    SpriteId:int
    SpriteSize:tuple[x:int,y:int]
    # terrain effects
    Terrain:TerrainEnum
    Material:MaterialEnum
    TerrainEffects: seq[TerrainStatusEffect] #use class instead of status effect 
    # units 
    Occupied:bool # terrain can be occupiec only by one unit or one part of unit
    CanStandOn:bool # terrain can be occupiec only by one unit or one part of unit
