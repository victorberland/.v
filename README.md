# .V
## punktfiler - dotfiles

`git clone --recurse-submodules --remote-submodules https://github.com/victorberland/.v.git && cd ~/.v`

Void Linux: `sh void.sh`

Vim: `:PlugInstall`

`sudo visudo` - `v ALL=NOPASSWD:/bin/zzz`

`crontab -e` - `*/3 * * * * /bin/bash /home/v/.s/bat.sh >/dev/null 2>&1`

`/etc/default/grub` - `GRUB_CMDLINE_LINUX_DEFAULT="loglevel=4 slub_debug=P page_poison=1 nouveau.modeset=0 intel_iommu=igfx_off iommu=off mitigations=off"`

Matter Grub: https://github.com/mateosss/matter
