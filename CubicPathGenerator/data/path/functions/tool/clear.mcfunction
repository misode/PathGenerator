# remove markers and llama
kill @e[tag=path_marker]
scoreboard players set markers path 1
execute as @e[type=llama,tag=path] run function path:kill

# reset values and notify player
scoreboard players set @s path_click 0
title @s actionbar [{"text":"Path cleared","color":"red","bold":true}]
