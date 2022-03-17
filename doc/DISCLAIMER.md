## Configuration

How to configure this app: by SSH

## Additional information

* Migration from old package

* You can’t migrate directly with an update.
	* Before installing the new package you need to download this folder from your server `/var/games/minetest-server/.minetest/worlds/world` (this folder contains all world data)
	* Uninstall the old package `sudo yunohost app remove minetest`
	* Install the new one `sudo yunohost app install https://github.com/YunoHost-Apps/minetest_ynh`
	* Stop Minetest service `sudo systemctl stop minetest`
	* Copy the folder you have copied before in `/home/yunohost.app/minetest/.minetest/worlds`
	* Start the Minetest service `sudo systemctl start minetest`

* Installing mods
	* For installing mods you need to create a `worldmods` folder in `/home/yunohost.app/minetest/.minetest/worlds/world/`
	* Clone the repo of the mod in this folder (ex: `git clone https://github.com/minetest-mods/mesecons`)
	* Edit `/home/yunohost.app/minetest/.minetest/worlds/world/world.mt` and add at the end `load_mod_mesecons = true`
	* Restart Minetest with `sudo systemctl restart minetest`
	* The mod is now installed :)
