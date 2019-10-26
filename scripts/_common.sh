
#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="build-essential libirrlicht-dev cmake libbz2-dev libpng-dev libjpeg-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev zlib1g-dev libgmp-dev libjsoncpp-dev libluajit-5.1-dev"

#=================================================
# PERSONAL HELPERS
#=================================================

# To remove once https://github.com/YunoHost/yunohost/pull/827 get merged
ynh_find_port () {
	# Declare an array to define the options of this helper.
	local legacy_args=p
	declare -Ar args_array=( [p]=port= )
	local port
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	test -n "$port" || ynh_die --message="The argument of ynh_find_port must be a valid port."
	while ss -nltu | grep -q -w :$port       # Check if the port is free
	do
		port=$((port+1))	# Else, pass to next port
	done
	echo $port
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Need also the helper https://github.com/YunoHost-Apps/Experimental_helpers/blob/master/ynh_handle_getopts_args/ynh_handle_getopts_args

# Read the value of a key in a ynh manifest file
#
# usage: ynh_read_manifest manifest key
# | arg: -m, --manifest= - Path of the manifest to read
# | arg: -k, --key= - Name of the key to find
ynh_read_manifest () {
	# Declare an array to define the options of this helper.
	declare -Ar args_array=( [m]=manifest= [k]=key= )
	local manifest
	local key
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	python3 -c "import sys, json;print(json.load(open('$manifest', encoding='utf-8'))['$key'])"
}

# Read the upstream version from the manifest
# The version number in the manifest is defined by <upstreamversion>~ynh<packageversion>
# For example : 4.3-2~ynh3
# This include the number before ~ynh
# In the last example it return 4.3-2
#
# usage: ynh_app_upstream_version
ynh_app_upstream_version () {
    manifest_path="../manifest.json"
    if [ ! -e "$manifest_path" ]; then
        manifest_path="../settings/manifest.json"	# Into the restore script, the manifest is not at the same place
    fi
    version_key=$(ynh_read_manifest --manifest="$manifest_path" --key="version")
    echo "${version_key/~ynh*/}"
}

# Read package version from the manifest
# The version number in the manifest is defined by <upstreamversion>~ynh<packageversion>
# For example : 4.3-2~ynh3
# This include the number after ~ynh
# In the last example it return 3
#
# usage: ynh_app_package_version
ynh_app_package_version () {
    manifest_path="../manifest.json"
    if [ ! -e "$manifest_path" ]; then
        manifest_path="../settings/manifest.json"	# Into the restore script, the manifest is not at the same place
    fi
    version_key=$(ynh_read_manifest --manifest="$manifest_path" --key="version")
    echo "${version_key/*~ynh/}"
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

