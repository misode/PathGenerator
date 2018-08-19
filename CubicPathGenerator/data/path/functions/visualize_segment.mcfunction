
scoreboard players operation marker math = @s path

tag @e[tag=path_marker] remove path_marker_0
tag @e[tag=path_marker] remove path_marker_1
tag @e[tag=path_marker] remove path_marker_2
tag @e[tag=path_marker] remove path_marker_3
execute as @e[tag=path_marker] run function path:marker_check

scoreboard players operation y0 math = @e[tag=path_marker_0,limit=1] path_x
scoreboard players operation y1 math = @e[tag=path_marker_1,limit=1] path_x
scoreboard players operation y2 math = @e[tag=path_marker_2,limit=1] path_x
scoreboard players operation y3 math = @e[tag=path_marker_3,limit=1] path_x
function path:interpolate
scoreboard players operation path_t path_x = y math

scoreboard players operation y0 math = @e[tag=path_marker_0,limit=1] path_y
scoreboard players operation y1 math = @e[tag=path_marker_1,limit=1] path_y
scoreboard players operation y2 math = @e[tag=path_marker_2,limit=1] path_y
scoreboard players operation y3 math = @e[tag=path_marker_3,limit=1] path_y
function path:interpolate
scoreboard players operation path_t path_y = y math

scoreboard players operation y0 math = @e[tag=path_marker_0,limit=1] path_z
scoreboard players operation y1 math = @e[tag=path_marker_1,limit=1] path_z
scoreboard players operation y2 math = @e[tag=path_marker_2,limit=1] path_z
scoreboard players operation y3 math = @e[tag=path_marker_3,limit=1] path_z
function path:interpolate
scoreboard players operation path_t path_z = y math

summon area_effect_cloud ~ ~ ~ {Tags:["path_display"]}
execute store result entity @e[tag=path_display,limit=1] Pos[0] double 0.001 run scoreboard players get path_t path_x
execute store result entity @e[tag=path_display,limit=1] Pos[1] double 0.001 run scoreboard players get path_t path_y
execute store result entity @e[tag=path_display,limit=1] Pos[2] double 0.001 run scoreboard players get path_t path_z
execute at @e[tag=path_display] run particle end_rod ~ ~ ~
