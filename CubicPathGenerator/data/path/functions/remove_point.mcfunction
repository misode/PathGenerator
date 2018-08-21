scoreboard players operation temp path = @s path
execute as @e[tag=path_marker] if score @s path > temp path run scoreboard players remove @s path 1
scoreboard players remove markers path 1
kill @s
scoreboard players set @a path_click 0
