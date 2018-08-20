
scoreboard players add mu math 25
execute if score mu math matches 1000.. run scoreboard players set mu math 0

scoreboard players remove markers path 2
execute as @e[tag=path_marker,scores={path=1..}] at @s if score @s path <= markers path run function path:visualize_segment
scoreboard players add markers path 2
