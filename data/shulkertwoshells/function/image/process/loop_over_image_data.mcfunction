# Copy current pixel
data modify storage shulkertwoshells:image current.pixel_color set \
  from storage shulkertwoshells:image current.image_data[0]
data modify storage shulkertwoshells:image current.description_text set \
  from storage shulkertwoshells:image current.description[0]

scoreboard players add $index.image_data shulkertwoshells.image 1

# Calculate column
scoreboard players operation $index.column shulkertwoshells.image = $index.image_data shulkertwoshells.image
scoreboard players operation $index.column shulkertwoshells.image %= $width shulkertwoshells.image

# Calculate row
scoreboard players operation $index.row shulkertwoshells.image = $index.image_data shulkertwoshells.image
scoreboard players operation $index.row shulkertwoshells.image /= $width shulkertwoshells.image

# Append start spacing
execute if score $index.column shulkertwoshells.image matches 1 run \
  function shulkertwoshells:image/process/append/blank

# Append colored pixel
execute unless data storage shulkertwoshells:image current{pixel_color: ''} run \
  function shulkertwoshells:image/process/append/pixel
# Append background pixel
execute if data storage shulkertwoshells:image current{pixel_color: ''} run \
  function shulkertwoshells:image/process/append/background

# Append description
execute if score $index.column shulkertwoshells.image matches 0 run \
    function shulkertwoshells:image/process/image_end/description

# Remove first element from the image_data array
data remove storage shulkertwoshells:image current.image_data[0]
# Loop over rows
execute if score $index.row shulkertwoshells.image < $height shulkertwoshells.image run \
  function shulkertwoshells:image/process/loop_over_image_data
 