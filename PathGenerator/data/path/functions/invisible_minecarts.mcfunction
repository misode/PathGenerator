## Invisible Minecarts made by Wilux

execute as @e[type=minecart,tag=!invisible] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:down}},DisplayOffset:4}
tag @e[type=minecart,tag=!invisible] add invisible
execute as @e[type=chest_minecart,tag=!invisible] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:up}},DisplayOffset:4}
tag @e[type=chest_minecart,tag=!invisible] add invisible
execute as @e[type=furnace_minecart,tag=!invisible] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:north}},DisplayOffset:4}
tag @e[type=furnace_minecart,tag=!invisible] add invisible
execute as @e[type=tnt_minecart,tag=!invisible] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:south}},DisplayOffset:4}
tag @e[type=tnt_minecart,tag=!invisible] add invisible
execute as @e[type=hopper_minecart,tag=!invisible] run data merge entity @s {CustomDisplayTile:1,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:west}},DisplayOffset:4}
tag @e[type=hopper_minecart,tag=!invisible] add invisible
