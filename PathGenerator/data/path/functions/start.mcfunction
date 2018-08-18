tag @s add onpath
tag @s add self
execute as @e[type=llama,tag=path] if score @s path = @a[tag=self,limit=1] path run tag @s add started
tag @s remove self
