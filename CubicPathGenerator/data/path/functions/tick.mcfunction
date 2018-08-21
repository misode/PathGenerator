
execute as @a[gamemode=creative,tag=!disable_path,scores={path_click=1..},nbt={SelectedItem:{tag:{pathAdd:1b}}}] at @s run function path:tool/add
execute as @a[gamemode=creative,tag=!disable_path,scores={path_click=1..},nbt={SelectedItem:{tag:{pathRemove:1b}}}] at @s run function path:tool/remove
execute as @a[gamemode=creative,tag=!disable_path,scores={path_click=1..},nbt={SelectedItem:{tag:{pathStart:1b}}}] if score markers path matches 2.. at @s run function path:tool/start
execute as @a[gamemode=creative,tag=!disable_path,scores={path_click=1..},nbt={SelectedItem:{tag:{pathClear:1b}}}] at @s run function path:tool/clear

execute as @a[gamemode=creative,tag=!disable_path,tag=!onpath,nbt={RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run function path:start
execute as @a[gamemode=creative,tag=!disable_path,tag=onpath,nbt=!{RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run function path:stop

execute as @e[type=llama,tag=path,tag=!started] at @s run particle dust 1 0 0 1 ~ ~1.8 ~
execute as @e[type=llama,tag=path,tag=started] at @s run function path:tick_path
execute if entity @a[gamemode=creative,tag=!disable_path,nbt={SelectedItem:{tag:{pathVisualize:1b}}}] if score markers path matches 2.. unless entity @e[type=llama,tag=path] run function path:show_path
