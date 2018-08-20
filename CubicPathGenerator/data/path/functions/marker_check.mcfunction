scoreboard players operation temp path = @s path
scoreboard players operation temp path -= marker path
execute if score temp path matches -1 run tag @s add path_marker_0
execute if score temp path matches 0 run tag @s add path_marker_1
execute if score temp path matches 1 run tag @s add path_marker_2
execute if score temp path matches 2 run tag @s add path_marker_3
