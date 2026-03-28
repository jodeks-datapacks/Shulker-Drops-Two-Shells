scoreboard objectives add jodek.config dummy
execute unless score &shulkers_drop_two_shells_load_message jodek.config = &shulkers_drop_two_shells_load_message jodek.config run scoreboard players set &shulkers_drop_two_shells_load_message jodek.config 1
execute unless score &shulkers_drop_two_shells_advancements jodek.config = &shulkers_drop_two_shells_advancements jodek.config run scoreboard players set &shulkers_drop_two_shells_advancements jodek.config 1

scoreboard objectives add shulkers_drop_two_shells.image dummy

# Print the image
function shulkers_drop_two_shells:config/image

schedule function shulkers_drop_two_shells:lib_check 1s