#> shulkers_drop_two_shells:image/process/generate
#
# This function generates the image data.

data modify storage shulkers_drop_two_shells:image data.current.image_data set from storage shulkers_drop_two_shells:image data.image_data
data modify storage shulkers_drop_two_shells:image data.current.description set from storage shulkers_drop_two_shells:image data.description
data modify storage shulkers_drop_two_shells:image data.current.pixel_character set from storage shulkers_drop_two_shells:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data shulkers_drop_two_shells.image 0
# Set width
execute store result score $width shulkers_drop_two_shells.image run data get storage shulkers_drop_two_shells:image data.width
# Set height
execute store result score $height shulkers_drop_two_shells.image run data get storage shulkers_drop_two_shells:image data.height
# Set length
scoreboard players operation $length shulkers_drop_two_shells.image = $width shulkers_drop_two_shells.image
scoreboard players operation $length shulkers_drop_two_shells.image *= $height shulkers_drop_two_shells.image
# Clear remaining entries in tellraw
data remove storage shulkers_drop_two_shells:image data.tellraw

# Add spacing on top
function shulkers_drop_two_shells:image/process/append/line_break
# Loop over image data
function shulkers_drop_two_shells:image/process/loop_over_image_data
# Add spacing on bottom
function shulkers_drop_two_shells:image/process/append/line_break