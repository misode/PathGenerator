scoreboard objectives add path dummy
scoreboard objectives add path_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add path_x dummy
scoreboard objectives add path_y dummy
scoreboard objectives add path_z dummy

execute unless score speed path matches 0.. run scoreboard players set speed path 10
execute unless score ids path matches 0.. run scoreboard players set ids path 0
