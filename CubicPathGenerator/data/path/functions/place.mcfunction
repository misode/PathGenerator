summon area_effect_cloud ~ ~1.7 ~ {Tags:["path_marker","init"],Duration:2000000000}
scoreboard players operation @e[tag=path_marker,tag=init,limit=1] path = markers math
title @s actionbar [{"text":"Path marker set (","color":"aqua","bold":true},{"score":{"objective":"math","name":"markers"},"color":"aqua","bold":true},{"text":")","color":"aqua","bold":true}]

scoreboard players add markers math 1
scoreboard players set @s path_click 0

# add end and start point markers
kill @e[tag=path_marker,tag=path_temp]
execute at @e[tag=path_marker,tag=init] run summon area_effect_cloud ~ ~ ~ {Tags:["path_marker","init","path_temp","init_temp"],Duration:2000000000}
scoreboard players operation @e[tag=path_marker,tag=init_temp] path = markers math
tag @e[tag=path_marker,tag=init_temp] remove init_temp
execute at @e[tag=path_marker,scores={path=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["path_marker","init","path_temp","init_temp"],Duration:2000000000}
scoreboard players set @e[tag=path_marker,tag=init_path] path 0
tag @e[tag=path_marker,tag=init_temp] remove init_temp

execute as @e[tag=path_marker,tag=init] run function path:get_pos
tag @e[tag=path_marker,tag=init] remove init
