
scoreboard players operation mu math = mu path

function path:get_pos
scoreboard players add @s path_y 2500

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

scoreboard players operation path_t path_x -= @s path_x
scoreboard players operation path_t path_y -= @s path_y
scoreboard players operation path_t path_z -= @s path_z

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get path_t path_x
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get path_t path_y
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get path_t path_z

scoreboard players set dmu path 1000000
scoreboard players set #temp path 20
scoreboard players operation #temp path *= time path
scoreboard players operation dmu path /= #temp path
scoreboard players operation mu path += dmu path
execute if score mu path matches 1000.. run scoreboard players add marker path 1
execute if score mu path matches 1000.. run scoreboard players set mu path 0
scoreboard players remove markers path 2
execute if score marker path > markers path run kill @s
scoreboard players add markers path 2
