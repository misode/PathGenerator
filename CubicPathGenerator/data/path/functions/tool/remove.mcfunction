execute as @e[tag=path_marker,tag=!temp,limit=1,sort=nearest] run function path:remove_point
scoreboard players set @s path_click 0

# add end and start point markers
kill @e[tag=path_marker,tag=path_temp]
execute at @e[tag=path_marker,tag=init] run summon area_effect_cloud ~ ~ ~ {Tags:["path_marker","init","path_temp","init_temp"],Duration:2000000000}
scoreboard players operation @e[tag=path_marker,tag=init_temp] path = markers path
tag @e[tag=path_marker,tag=init_temp] remove init_temp
execute at @e[tag=path_marker,scores={path=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["path_marker","init","path_temp","init_temp"],Duration:2000000000}
scoreboard players set @e[tag=path_marker,tag=init_path] path 0
tag @e[tag=path_marker,tag=init_temp] remove init_temp

execute as @e[tag=path_marker,tag=init] run function path:math/get_pos
tag @e[tag=path_marker,tag=init] remove init
