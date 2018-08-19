
function path:get_pos
scoreboard players remove @s path_y 1700

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

#summon area_effect_cloud ~ ~ ~ {Tags:["path_display"]}
#execute store result entity @e[tag=path_display,limit=1] Pos[0] double 0.001 run scoreboard players get path_t path_x
#execute store result entity @e[tag=path_display,limit=1] Pos[1] double 0.001 run scoreboard players get path_t path_y
#execute store result entity @e[tag=path_display,limit=1] Pos[2] double 0.001 run scoreboard players get path_t path_z
#execute at @e[tag=path_display] run particle end_rod ~ ~ ~

scoreboard players operation path_t path_x -= @s path_x
scoreboard players operation path_t path_y -= @s path_y
scoreboard players operation path_t path_z -= @s path_z

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get path_t path_x
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get path_t path_y
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get path_t path_z

scoreboard players set dmu math 1000000
scoreboard players set temp math 20
scoreboard players operation temp math *= time path
scoreboard players operation dmu math /= temp math
scoreboard players operation mu math += dmu math
execute if score mu math matches 1000.. run scoreboard players add marker math 1
execute if score mu math matches 1000.. run scoreboard players set mu math 0
scoreboard players remove markers math 2
execute if score marker math > markers math run kill @s
scoreboard players add markers math 2
