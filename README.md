# PathGenerator
Cinematic camera path generator for Minecraft 1.13

## Installation
1. Download the latest datapack [here](https://github.com/misode/PathGenerator/releases)
2. Place the zipped datapack in `/(world name)/datapacks/`
3. `/reload` your world

## How to use
1. Run `/function path:give` to get the path tools. There is an "add point", "start path" and "clear points".
2. Run `/scoreboard players set time path <number>` to set the time between each path point in miniseconds (default is 2000)
3. Right click the "add point" tool to add a point to the path. A number in the actionbar tell how many points are now on the path.
4. When holding the "add point" tool, aqua particles indicate the path points, and white particles show the smooth path in between them
5. Right click the "start path" tool to initialize the path and right click the red particle to start the path. Turn on cinematic camera to get smooth camera rotations
6. Sneak to stop the path, the path will also stop when you reached the end of the path.
7. Right click the "clear points" tool to completely remove the path points.

## Technical
In the source code, `/PathGenerator` is the old linear path tracer, while `CubicPathGenerator` is the default version which is the one in the latest release. If you want to use the old version, uses release versions `1.x`. 

When the player clicks the carrot on a stick, a llama gets teleported with its `path_x`, `path_y` and `path_z` scores set according to the direction the player was facing. It also gets an id score to save which player created the path. When the player mounts the llama, it gets the `started` tag. When the llama has that tag, its `Motion` is constantly updated to match the scores. When the player dismounts the llama, it gets killed. The reason it's using a llama is because they are the only rideable entity that can be made completely invisible without a resource pack and is controlled by the server.

The datapack uses the following objectives: `path`, `path_click`, `path_x`, `path_y`, `path_z` and `math`
