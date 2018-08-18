# kill old llama and spawn new
execute as @e[type=llama,tag=path] run function path:kill
summon llama ~ ~ ~ {Tags:["path","init"],NoGravity:1b,Tame:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:"generic.maxHealth",Base:1}]}
scoreboard players operation @e[type=llama,tag=path,tag=init] path = @s path

# save direction
execute positioned ^ ^ ^-1 run summon area_effect_cloud ~ ~ ~ {Tags:["direction_marker"]}
function path:get_pos
execute as @e[tag=direction_marker] run function path:get_pos
scoreboard players operation @s path_x -= @e[tag=direction_marker,limit=1] path_x
scoreboard players operation @s path_y -= @e[tag=direction_marker,limit=1] path_y
scoreboard players operation @s path_z -= @e[tag=direction_marker,limit=1] path_z
scoreboard players operation @s path_x *= speed path
scoreboard players operation @s path_y *= speed path
scoreboard players operation @s path_z *= speed path
scoreboard players operation @e[type=llama,tag=path,tag=init] path_x = @s path_x
scoreboard players operation @e[type=llama,tag=path,tag=init] path_y = @s path_y
scoreboard players operation @e[type=llama,tag=path,tag=init] path_z = @s path_z

# copy rotation
tp @e[type=llama,tag=path,tag=init,limit=1] @s

# tp player backwards facing llama
tp @s ^ ^ ^-3
execute at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=llama,tag=path,tag=init,limit=1] eyes

tag @e[type=llama,tag=path,tag=init] remove init
title @s actionbar [{"text":"Path set - click to start","color":"red","bold":true}]
scoreboard players set @s path_click 0
