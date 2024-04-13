# kodi-overlay
A Gentoo overlay for Kodi.

## How to use this overlay ?
You can use this overlay with portage plug-in sync system (see: https://wiki.gentoo.org/wiki/Project:Portage/Sync)

### New portage plug-in sync system (>=sys-apps/portage-2.2.16)

- Add "kodi-overlay" configuration
```
# cat << EOF > /etc/portage/repos.conf/kodi-overlay.conf
[kodi-overlay]
location = /var/db/repos/kodi-overlay
sync-type = git
sync-uri = https://github.com/kodi-overlay/kodi-overlay.git
auto-sync = yes
masters = gentoo
EOF
```

OR via eselect-repository

```
# emerge app-eselect/eselect-repository
# eselect repository add kodi-overlay git https://github.com/kodi-overlay/kodi-overlay.git
```

- Retrieve Kodi overlay

```
# emaint sync -r kodi-overlay
```
