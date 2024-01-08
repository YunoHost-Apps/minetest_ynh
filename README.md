<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Minetest for YunoHost

[![Integration level](https://dash.yunohost.org/integration/minetest.svg)](https://dash.yunohost.org/appci/app/minetest) ![Working status](https://ci-apps.yunohost.org/ci/badges/minetest.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/minetest.maintain.svg)

[![Install Minetest with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=minetest)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Minetest quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Minetest is a free open-source voxel game engine with easy modding and game creation.


**Shipped version:** 5.5.1~ynh2

## Screenshots

![Screenshot of Minetest](./doc/screenshots/1.jpg)

## Disclaimers / important information

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

## Documentation and resources

* Official app website: <http://www.minetest.net>
* Upstream app code repository: <https://github.com/minetest/minetest>
* YunoHost Store: <https://apps.yunohost.org/app/minetest>
* Report a bug: <https://github.com/YunoHost-Apps/minetest_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/minetest_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/minetest_ynh/tree/testing --debug
or
sudo yunohost app upgrade minetest -u https://github.com/YunoHost-Apps/minetest_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
