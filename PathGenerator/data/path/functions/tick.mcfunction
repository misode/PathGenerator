execute as @a[scores={path_click=1..},nbt={SelectedItem:{tag:{pathGenerator:1b}}}] at @s run function path:generate
execute unless entity @e[tag=path,tag=started] if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run tag @e[type=llama,tag=path] add started
execute unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run tp @e[type=llama,tag=path,tag=started] ~ -1000 ~

execute as @e[type=llama,tag=path,tag=!started] at @s run particle dust 1 0 0 1 ~ ~1.8 ~
execute as @e[type=llama,tag=path,tag=started] at @s run function path:tick_path
