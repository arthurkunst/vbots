-- Remote item for returning VBots to their home
minetest.register_craftitem("vbots:remote", {
	description = "VBot remote\n[Left Click] to return one bot to their home\n[Right Click] to return all VBots to their home",
	inventory_image = "vbots_remote.png",
    
    on_use = function(itemstack, user, pointed_thing)
        minetest.chat_send_player(user:get_player_name(), "Returning your first started bot to its home...")
        vbots.return_first_vbot(user:get_player_name())
    end,

	on_place = function(itemstack, user, pointed_thing)
        minetest.chat_send_player(user:get_player_name(), "Returning all of your bots to their home...")
        vbots.return_all_vbots(user:get_player_name())
	end,
})