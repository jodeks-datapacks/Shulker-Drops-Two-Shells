scoreboard players set &shulkertwoshells jodek.loaded 0

scoreboard objectives remove shulkertwoshells.image

advancement revoke @a only jodek:shulker_two_shells
advancement revoke @a only jodek:mobs
advancement revoke @a only jodek:root

data remove storage shulkertwoshells:image image_data
data remove storage shulkertwoshells:image width
data remove storage shulkertwoshells:image height
data remove storage shulkertwoshells:image background_color
data remove storage shulkertwoshells:image description
data remove storage shulkertwoshells:image tellraw

say Uninstalled Shulkers Two Shells