## Configuration

* Installing mods
	* For installing mods you need to create a `worldmods` folder in `__DATA_DIR__/.luanti/worlds/world/`
	* Clone the repo of the mod in this folder (ex: `git clone https://github.com/minetest-mods/mesecons`)
	* Edit `__DATA_DIR__/.luanti/worlds/world/world.mt` and add at the end `load_mod_mesecons = true`
	* Restart Luanti with `sudo systemctl restart luanti`
	* The mod is now installed
