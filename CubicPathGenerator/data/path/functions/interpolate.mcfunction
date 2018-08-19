scoreboard players operation a0 math = y3 math
scoreboard players operation a0 math -= y2 math
scoreboard players operation a0 math -= y0 math
scoreboard players operation a0 math += y1 math

scoreboard players operation a1 math = y0 math
scoreboard players operation a1 math -= y1 math
scoreboard players operation a1 math -= a0 math
scoreboard players operation a1 math *= mu math

scoreboard players operation a2 math = y2 math
scoreboard players operation a2 math -= y0 math

scoreboard players operation a3 math = y1 math

scoreboard players operation a0 math *= mu math
scoreboard players operation a0 math /= #1000 math
scoreboard players operation a0 math *= mu math
scoreboard players operation a0 math /= #1000 math
scoreboard players operation a0 math *= mu math
scoreboard players operation a0 math /= #1000 math

scoreboard players operation a1 math /= #1000 math
scoreboard players operation a1 math *= mu math
scoreboard players operation a1 math /= #1000 math

scoreboard players operation a2 math *= mu math
scoreboard players operation a2 math /= #1000 math

scoreboard players operation y math = a0 math
scoreboard players operation y math += a1 math
scoreboard players operation y math += a2 math
scoreboard players operation y math += a3 math
