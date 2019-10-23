# Minetest for YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/minetest.svg)](https://dash.yunohost.org/appci/app/minetest)](https://dash.yunohost.org/appci/app/minetest)

[![Installer Minetest avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=minetest)(https://install-app.yunohost.org/?app=minetest)

*[Read this readme in English.](./README.md)*

> *Ce package vous permet d'installer Minetest rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, veuillez consulter[ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Aperçu
Minetest est un moteur de jeu voxel open-source gratuit avec modding et création de jeu faciles.

**Version livrée:** 5.1.0

## Captures d'écran

![](https://www.minetest.net/media/gallery/1.jpg)

## Démo

Pas de démo mais vous pouvez tester avec des serveurs sur https://servers.minetest.net/

## Configuration

Comment configurer cette application : par SSH

## Documentation

 * Documentation officielle : https://wiki.minetest.net/
 * Documentation YunoHost : https://yunohost.org/#/minetest

## Caractéristiques spécifiques de YunoHost

#### Support multi-utilisateurs

Les authentifications LDAP et HTTP sont-elles prises en charge ? Non

L'application peut-elle être utilisée par plusieurs utilisateurs ? Oui

##### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/minetest%20%28Community%29.svg)](https://ci-apps.yunohost.org/ci/apps/minetest/)](https://ci-apps.yunohost.org/ci/apps/minetest/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/minetest%20%28Community%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/minetest/)](https://ci-apps-arm.yunohost.org/ci/apps/minetest/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/minetest%20%28Community%29.svg)](https://ci-stretch.nohost.me/ci/apps/minetest/)](https://ci-stretch.nohost.me/ci/apps/minetest/)

## Limitations

* Cette application n'est pas compatible avec LDAP.

## Renseignements supplémentaires

* Migration de l'ancien paquet
Vous ne pouvez pas migrer directement avec une mise à jour.
	* Avant d'installer le nouveau paquetage, vous devez télécharger ce dossier depuis votre serveur `/var/games/minetest-server/.minetest/worlds/world` (ce dossier contient toutes les données mondiales)
	* Désinstallez l'ancien paquetage `sudo yunohost application remove minetest`.
	* Installez le nouveau `sudo yunohost yunohost application install https://github.com/YunoHost-Apps/minetest_ynh``
	* Stop Minetest service `sudo systemctl systemctl stop minetest`
	* Copiez le dossier que vous avez copié auparavant dans `/home/yunohost.app/minetest/.minetest/.worlds'.
	* Démarrer le service Minetest `sudo systemctl démarre minetest`.

* Installer les mods
	* Pour installer les mods, vous devez créer un dossier worldmods dans /home/yunohost.app/minetest/.minetest/worlds/world/.
	* Cloner le repo du mod dans ce dossier (ex : git clone https://github.com/minetest-mods/mesecons)
	* Editez /home/yunohost.app/minetest/.minetest/worlds/world/world/world.mt et ajoutez à la fin ````load_mod_mesecons = true```.
	* Redémarrer Minetest avec ```sudo systemctl restart minetest```
	* Le mod est maintenant installé :)


**Plus d'informations sur la page documentation:**
https://yunohost.org/packaging_apps

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/minetest_ynh/issues
 * Site Web de l'application : https://minetest.net/
 * Site web de YunoHost : https://yunohost.org/

---

Infos développeurs
----------------

**Uniquement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans le master.**
Veuillez faire votre demande de tirage à la[succursale de test] (https://github.com/YunoHost-Apps/minetest_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost installent l'application https://github.com/YunoHost-Apps/minetest_ynh/tree/testing --debug
ou
sudo yunohost mise à jour de l'application minetest -u https://github.com/YunoHost-Apps/minetest_ynh/tree/testing --debug
```