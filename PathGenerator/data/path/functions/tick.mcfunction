execute as @a unless score @s path matches 1.. run function path:new_id

execute as @a[gamemode=creative,scores={path_click=1..},nbt={SelectedItem:{tag:{pathGenerator:1b}}}] at @s run function path:generate
execute as @a[gamemode=creative,tag=!onpath,nbt={RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run function path:start
execute as @a[gamemode=creative,tag=onpath,nbt=!{RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run function path:stop

execute as @e[type=llama,tag=path,tag=!started] at @s run particle dust 1 0 0 1 ~ ~1.8 ~
execute as @e[type=llama,tag=path,tag=started] at @s run function path:tick_path
