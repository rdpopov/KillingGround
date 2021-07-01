type DamageTypeEnum {.pure.} = enum # weapon damage types can be more or less a combination
    Slashing    = 1 shl 0
    Piercing    = 1 shl 1
    Explosive   = 1 shl 2
    Burning     = 1 shl 3
    Blunt       = 1 shl 4
    Poison      = 1 shl 6
    Area        = 1 shl 7
    Heavy       = 1 shl 8
    Light       = 1 shl 9

type AttackTypeEnum {.pure.} = enum
    Direct      = 1 shl 0
    Indirect    = 1 shl 1
    Chemical    = 1 shl 2

type Weapon = ref object 
    #Basic
    Name:string         #name of the weapon
    SpriteId:int
    SpriteSize:tuple[x:int,y:int]
    #Balistic stats
    AttackTypeEnum:int
    DamageTypeEnum:int
    Range:int           #range in tiles
    Spread:float        #spread angle
    FollowUpPrc:float   #chance for a follow up attack 
    AmmoPerShot:int
    #Maintenance
    Durability:int    #weapon durability
    LossChance:float    #Chance to lose durability
