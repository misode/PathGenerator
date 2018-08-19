scoreboard objectives add path dummy
scoreboard objectives add path_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add path_x dummy
scoreboard objectives add path_y dummy
scoreboard objectives add path_z dummy
scoreboard objectives add math dummy

scoreboard players set #20 math 20
scoreboard players set #1000 math 1000

#time=1000 => dmu=50 => 20 ticks -> 1 second
#time=2000 => dmu=1000/(2*20)=1000/40=25 => 40 ticks -> 2 seconds
#time=3000 => dmu=1000/(20*3000) => 60 ticks -> 3 seconds
execute unless score time path matches 0.. run scoreboard players set time path 2000
execute unless score markers math matches 0.. run scoreboard players set markers math 0
