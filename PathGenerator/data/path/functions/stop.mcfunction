tag @s remove onpath
tag @s add self
execute as @e[type=llama,tag=path] if score @s path = @a[tag=self,limit=1] path run function path:kill
tag @s remove self
