#> shulkertwoshells:image/process/generate
#
# This function generates the image data.

data modify storage shulkertwoshells:image current.image_data set from storage shulkertwoshells:image image_data
data modify storage shulkertwoshells:image current.description set from storage shulkertwoshells:image description
data modify storage shulkertwoshells:image current.pixel_character set from storage shulkertwoshells:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data shulkertwoshells.image 0
# Set width
execute store result score $width shulkertwoshells.image run data get storage shulkertwoshells:image width
# Set height
execute store result score $height shulkertwoshells.image run data get storage shulkertwoshells:image height
# Set length
scoreboard players operation $length shulkertwoshells.image = $width shulkertwoshells.image
scoreboard players operation $length shulkertwoshells.image *= $height shulkertwoshells.image
# Clear remaining entries in tellraw
data remove storage shulkertwoshells:image tellraw

# Add spacing on top
function shulkertwoshells:image/process/append/line_break
# Loop over image data
function shulkertwoshells:image/process/loop_over_image_data
# Add spacing on bottom
function shulkertwoshells:image/process/append/line_break