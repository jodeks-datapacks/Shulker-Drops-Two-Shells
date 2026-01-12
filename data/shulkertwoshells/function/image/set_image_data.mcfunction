#> shulkertwoshells:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage shulkertwoshells:image image_data  
# @writes storage shulkertwoshells:image width  
# @writes storage shulkertwoshells:image height  
# @writes storage shulkertwoshells:image background_color  
# @writes storage shulkertwoshells:image description  
# @writes storage shulkertwoshells:image pixel_character.blank  
# @writes storage shulkertwoshells:image pixel_character.chat  
# @writes storage shulkertwoshells:image pixel_character.lore

data remove storage shulkertwoshells:image image_data
data remove storage shulkertwoshells:image width
data remove storage shulkertwoshells:image height
data remove storage shulkertwoshells:image background_color
data remove storage shulkertwoshells:image description

$data modify storage shulkertwoshells:image image_data set value $(image_data)
$data modify storage shulkertwoshells:image width set value $(width)
$data modify storage shulkertwoshells:image height set value $(height)
$data modify storage shulkertwoshells:image background_color set value "$(background_color)"
$data modify storage shulkertwoshells:image description set value $(description)

data modify storage shulkertwoshells:image pixel_character.blank set value "　"
data modify storage shulkertwoshells:image pixel_character.pixel set value "▌▌"
data modify storage shulkertwoshells:image pixel_character.line_break set value '\n'

function shulkertwoshells:image/process/generate
