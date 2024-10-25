{ pkgs
, config
, ...
}:
{
  home.file.".config/ranger/rc.conf".text = ''
# icons ranger
default_linemode devicons

#Images preview
set preview_images true
set preview_images_method kitty
set preview_script ~/nixos-flake/not_dec_configs/scripts/scope.sh

#Hidde files
set show_hidden true

# cd
map gr cd ~/.config/ranger
map gd cd ~/Downloads
map gc cd ~/.config
map gH cd /mnt/hdd
map gk cd /mnt/kingston
map gb cd ~/buffer
map gs cd /mnt/hdd/sway_backup
map gy cd ~/Yandex.Disk
map gt cd ~/tmp
map gv cd ~/Videos
map gw cd /mnt/hdd/wallpaper
map gp cd ~/Pictures
map gm cd /mnt
map ga cd ~/.config/waybar
copymap G ge

#archive
map zz shell 7z a archive.7z %s

#Delete
map D shell -s trash-put %s &

#Search fzf
map <C-f> fzf

#Copy
map cb shell cp -r %s ~/buffer
map ct shell cp -r %s ~/tmp

# open images through shell
map F shell imv %s &

# Launch app
map x shell ./%s &

# Space folder
map cv shell du -sh %s;sleep 1
map cx shell nautilus .

#dragon drop
map <C-d> shell dragon -a -x %p --and-exit
  '';

  home.file.".config/ranger/rifle.conf".text = ''
ext pdf, has evince, X, flag f = evince "$@"
ext img, has imv, X, flag f = imv "$@"
ext jpg, has imv, X, flag f = imv "$@"
ext jpeg, has imv, X, flag f = imv "$@"
ext png, has imv, X, flag f = imv "$@"
ext zip, has file-roller, X, flag f = file-roller "$@"
ext 7z, has file-roller, X, flag f = file-roller "$@"
ext tar, has file-roller, X, flag f = file-roller "$@"
ext mp4, has vlc, X, flag f = vlc "$@"
ext mkv, has vlc, X, flag f = vlc "$@"
ext webm, has vlc, X, flag f = vlc "$@"
ext mp3, has vlc, X, flag f = vlc "$@"
ext mov, has vlc, X, flag f = vlc "$@"
ext m4a, has vlc, X, flag f = vlc "$@"
ext svg, has imv, X, flag f = imv "$@"
ext rar, has file-roller, X, flag f = file-roller "$@"
ext webp, has eog, X, flag f = eog "$@"
ext ico, has eog, X, flag f = eog "$@"

label editor = "$EDITOR" -- "$@"
label pager  = "$PAGER" -- "$@"
  '';
}