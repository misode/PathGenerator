# remove markers
kill @e[tag=path_marker]
scoreboard players set markers math 1

# reset values and notify player
scoreboard players set @s path_click 0
title @s actionbar [{"text":"Path cleared","color":"red","bold":true}]
