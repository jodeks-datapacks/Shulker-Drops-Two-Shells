# Append blank
function shulkertwoshells:image/process/append/blank

data modify storage shulkertwoshells:image tellraw append \
  from storage shulkertwoshells:image current.description_text

# Append blank
function shulkertwoshells:image/process/append/blank

# Append line_break
execute unless score $index.image_data shulkertwoshells.image = $length shulkertwoshells.image \
  run function shulkertwoshells:image/process/append/line_break

# Remove first element from the description
data remove storage shulkertwoshells:image current.description[0]
 