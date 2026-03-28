# Append blank
function shulkers_drop_two_shells:image/process/append/blank

data modify storage shulkers_drop_two_shells:image data.tellraw append \
  from storage shulkers_drop_two_shells:image data.current.description_text

# Append blank
function shulkers_drop_two_shells:image/process/append/blank

# Append line_break
execute unless score $index.image_data shulkers_drop_two_shells.image = $length shulkers_drop_two_shells.image \
  run function shulkers_drop_two_shells:image/process/append/line_break

# Remove first element from the description
data remove storage shulkers_drop_two_shells:image data.current.description[0]
 