## Configuration

* Migration de l’ancien paquet

* Vous ne pouvez pas migrer directement avec une mise à jour.
	* Avant d’installer le nouveau paquet, vous devez télécharger ce dossier depuis votre serveur `/var/games/minetest-server/.minetest/worlds/world` (ce dossier contient toutes les données des mondes)
	* Désinstallez l’ancien paquet `sudo yunohost app remove minetest`
	* Installez le nouveau `sudo yunohost app install https://github.com/YunoHost-Apps/minetest_ynh`
	* Stoppez le service Minetest `sudo systemctl stop minetest`
	* Copiez le dossier que vous avez copié auparavant dans `__DATA_DIR__/.minetest/.worlds`
	* Démarrez le service Minetest `sudo systemctl start minetest`

* Installation des mods
	* Pour installer des mods, vous devez créer un dossier `worldmods` dans `__DATA_DIR__/.minetest/worlds/world/`
	* Clonez le repo du mod dans ce dossier (ex : `git clone https://github.com/minetest-mods/mesecons`)
	* Éditez `__DATA_DIR__/.minetest/worlds/world/world/world.mt` et ajoutez à la fin `load_mod_mesecons = true`
	* Redémarrez Minetest avec `sudo systemctl restart minetest`
	* Le mod est maintenant installé :)
