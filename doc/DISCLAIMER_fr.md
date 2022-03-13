## Configuration

Comment configurer cette application : par SSH

## Renseignements suppl�mentaires

* Migration de l�ancien paquet

* Vous ne pouvez pas migrer directement avec une mise � jour.
	* Avant d�installer le nouveau paquet, vous devez t�l�charger ce dossier depuis votre serveur `/var/games/minetest-server/.minetest/worlds/world` (ce dossier contient toutes les donn�es des mondes)
	* D�sinstallez l�ancien paquet `sudo yunohost app remove minetest`
	* Installez le nouveau `sudo yunohost app install https://github.com/YunoHost-Apps/minetest_ynh`
	* Stoppez le service Minetest `sudo systemctl stop minetest`
	* Copiez le dossier que vous avez copi� auparavant dans `/home/yunohost.app/minetest/.minetest/.worlds`
	* D�marrez le service Minetest `sudo systemctl start minetest`

* Installation des mods
	* Pour installer des mods, vous devez cr�er un dossier `worldmods` dans `/home/yunohost.app/minetest/.minetest/worlds/world/`
	* Clonez le repo du mod dans ce dossier (ex : `git clone https://github.com/minetest-mods/mesecons`)
	* �ditez `/home/yunohost.app/minetest/.minetest/worlds/world/world/world.mt` et ajoutez � la fin `load_mod_mesecons = true`
	* Red�marrez Minetest avec `sudo systemctl restart minetest`
	* Le mod est maintenant install� :)
