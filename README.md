# PathGenerator
Cinematic camera path generator for Minecraft 1.13

Places the player in a smooth linear path. In combination with the built in cinematic camera, this can be used to create trailers.

## Installation
1. Download the latest datapack and resource pack [here](https://github.com/misode/PathGenerator/releases)
2. Place the zipped datapack in `/(world name)/datapacks/`
3. `/reload` your world

## How to use
1. Run `/function path:give` to get the path placer
2. Run `/scoreboard players set speed path <number>` to set the speed (default is 10)
3. Right click the path placer while facing in the direction of the path
5. Right click the red particle to start the path. Turn on cinematic camera to get smooth camera rotations
6. Sneak to stop the path

## Limitations
1. Only one path can be active at the same time

## Technical
When the player clicks the carrot on a stick, a llama gets teleported with its `path_x`, `path_y` and `path_z` scores set according to the direction the player was facing. When the player mounts the llama, it gets the `started` tag. When the llama has that tag, its `Motion` is constantly updated to match the scores. When the player dismounts the llama, it gets killed. The reason it's using a llama is because they're the only rideable entity that can be made completely invisible without a resource pack and is controlled by the server

The datapack uses the following objectives: `path`, `path_click`, `path_x`, `path_y`, `path_z`
