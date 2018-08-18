execute as @a[scores={path_click=1..}] at @s run function path:generate
execute unless entity @e[tag=path,tag=started] if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:[path]}}}] run tag @e[tag=path] add started
execute unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:[path]}}}] run kill @e[tag=path,tag=started]

function path:invisible_minecarts
execute as @e[tag=path,tag=!started] at @s run particle dust 1 0 0 1 ~ ~ ~
execute as @e[tag=path,tag=started] at @s run function path:tick_minecarts
