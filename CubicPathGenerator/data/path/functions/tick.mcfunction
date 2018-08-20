
execute as @a[gamemode=creative,scores={path_click=1..},nbt={SelectedItem:{tag:{pathPlace:1b}}}] at @s run function path:place
execute as @a[gamemode=creative,scores={path_click=1..},nbt={SelectedItem:{tag:{pathStart:1b}}}] if score markers path matches 2.. at @s run function path:init
execute as @a[gamemode=creative,scores={path_click=1..},nbt={SelectedItem:{tag:{pathClear:1b}}}] at @s run function path:clear
execute as @a[gamemode=creative,tag=!onpath,nbt={RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run function path:start
execute as @a[gamemode=creative,tag=onpath,nbt=!{RootVehicle:{Entity:{id:"minecraft:llama",Tags:[path]}}}] run function path:stop

execute as @e[type=llama,tag=path,tag=!started] at @s run particle dust 1 0 0 1 ~ ~1.8 ~
execute as @e[type=llama,tag=path,tag=started] at @s run function path:tick_path
execute if entity @a[gamemode=creative,nbt={SelectedItem:{tag:{pathPlace:1b}}}] if score markers path matches 2.. if entity @a[tag=visualize] unless entity @e[type=llama,tag=path] run function path:show_path
