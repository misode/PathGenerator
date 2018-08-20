# kill old llama and spawn new
execute as @e[type=llama,tag=path] run function path:kill

execute at @e[tag=path_marker,scores={path=1},limit=1] run summon llama ~ ~-2.5 ~ {Tags:["path"],DeathLootTable:"minecraft:empty",NoGravity:1b,Tame:1b,Silent:1b,ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b},{Id:11,Duration:20000000,Amplifier:255,ShowParticles:0b}],Attributes:[{Name:"generic.maxHealth",Base:1}]}
scoreboard players set mu math 0
scoreboard players set marker math 1

# tp player above llama facing down
execute at @e[type=llama,tag=path] rotated as @s run tp @s ~ ~3 ~ ~ 90

# reset values and notify player
scoreboard players set @s path_click 0
title @s actionbar [{"text":"Path initialized - click to start","color":"green","bold":true}]
