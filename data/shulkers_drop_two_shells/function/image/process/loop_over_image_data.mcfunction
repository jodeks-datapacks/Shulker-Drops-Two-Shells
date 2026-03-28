# Copy current pixel
data modify storage shulkers_drop_two_shells:image data.current.pixel_color set \
  from storage shulkers_drop_two_shells:image data.current.image_data[0]
data modify storage shulkers_drop_two_shells:image data.current.description_text set \
  from storage shulkers_drop_two_shells:image data.current.description[0]

scoreboard players add $index.image_data shulkers_drop_two_shells.image 1

# Calculate column
scoreboard players operation $index.column shulkers_drop_two_shells.image = $index.image_data shulkers_drop_two_shells.image
scoreboard players operation $index.column shulkers_drop_two_shells.image %= $width shulkers_drop_two_shells.image

# Calculate row
scoreboard players operation $index.row shulkers_drop_two_shells.image = $index.image_data shulkers_drop_two_shells.image
scoreboard players operation $index.row shulkers_drop_two_shells.image /= $width shulkers_drop_two_shells.image

# Append start spacing
execute if score $index.column shulkers_drop_two_shells.image matches 1 run \
  function shulkers_drop_two_shells:image/process/append/blank

# Append colored pixel
execute unless data storage shulkers_drop_two_shells:image data.current{pixel_color: ''} run \
  function shulkers_drop_two_shells:image/process/append/pixel
# Append background pixel
execute if data storage shulkers_drop_two_shells:image data.current{pixel_color: ''} run \
  function shulkers_drop_two_shells:image/process/append/background

# Append description
execute if score $index.column shulkers_drop_two_shells.image matches 0 run \
    function shulkers_drop_two_shells:image/process/image_end/description

# Remove first element from the image_data array
data remove storage shulkers_drop_two_shells:image data.current.image_data[0]
# Loop over rows
execute if score $index.row shulkers_drop_two_shells.image < $height shulkers_drop_two_shells.image run \
  function shulkers_drop_two_shells:image/process/loop_over_image_data
 