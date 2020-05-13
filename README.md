# Minetest for YunoHost

[![Integration level](https://dash.yunohost.org/integration/minetest.svg)](https://dash.yunohost.org/appci/app/minetest)  
[![Install Minetest with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=minetest)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install Minetest quickly and simply on a YunoHost server.
If you don’t have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
Minetest is a free open-source voxel game engine with easy modding and game creation.

**Shipped version:** 5.2.0

## Screenshots

![](https://www.minetest.net/media/gallery/1.jpg)

## Demo

No demo but you can test with servers in https://servers.minetest.net/

## Configuration

How to configure this app: by SSH

## Documentation

 * Official documentation: https://wiki.minetest.net/
 * YunoHost documentation: https://yunohost.org/#/app_minetest

## YunoHost specific features

#### Multi-users support

* Are LDAP and HTTP auth supported? No
* Can the app be used by multiple users? Yes

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/minetest%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/minetest/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/minetest%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/minetest/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/minetest%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/minetest/)

## Limitations

* This app is not compatible with LDAP.

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


## Links

 * Report a bug: https://github.com/YunoHost-Apps/minetest_ynh/issues
 * App website: https://www.minetest.net/
 * Upstream app repository: https://github.com/minetest/minetest
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/minetest_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/minetest_ynh/tree/testing --debug
or
sudo yunohost app upgrade minetest -u https://github.com/YunoHost-Apps/minetest_ynh/tree/testing --debug
```
