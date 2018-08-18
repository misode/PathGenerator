kill @e[tag=path]
summon minecart ~ ~ ~ {NoGravity:1b,Tags:["invisible","path"]}
execute positioned ^ ^ ^-1 run summon area_effect_cloud ~ ~ ~ {Tags:["direction_marker"]}
function path:get_pos
execute as @e[tag=direction_marker] run function path:get_pos
scoreboard players operation @s path_x -= @e[tag=direction_marker,limit=1] path_x
scoreboard players operation @s path_y -= @e[tag=direction_marker,limit=1] path_y
scoreboard players operation @s path_z -= @e[tag=direction_marker,limit=1] path_z
scoreboard players operation @s path_x *= speed path
scoreboard players operation @s path_y *= speed path
scoreboard players operation @s path_z *= speed path
scoreboard players operation @e[tag=path] path_x = @s path_x
scoreboard players operation @e[tag=path] path_y = @s path_y
scoreboard players operation @e[tag=path] path_z = @s path_z
tp @s ^ ^-1.7 ^-2
#execute anchored eyes run tp @e[tag=path] ^ ^ ^2
#data merge entity @e[tag=path,limit=1] {Air:0}
#data merge entity @e[tag=path,limit=1] {Air:1}

title @s actionbar [{"text":"Path set - click to start","color":"red","bold":true}]
scoreboard players set @s path_click 0
