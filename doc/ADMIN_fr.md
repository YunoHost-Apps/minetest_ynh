## Configuration

* Installation des mods
	* Pour installer des mods, vous devez créer un dossier `worldmods` dans `__DATA_DIR__/.luanti/worlds/world/`
	* Clonez le repo du mod dans ce dossier (ex : `git clone https://github.com/minetest-mods/mesecons`)
	* Éditez `__DATA_DIR__/.luanti/worlds/world/world/world.mt` et ajoutez à la fin `load_mod_mesecons = true`
	* Redémarrez Luanti avec `sudo systemctl restart luanti`
	* Le mod est maintenant installé
