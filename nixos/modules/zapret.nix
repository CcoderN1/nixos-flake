{
  services.zapret = {
    enable = false;
    params = [
      "--dpi-desync=fake,split --dpi-desync-ttl=1 --dpi-desync-autottl=5 --dpi-desync-split-pos=1" # my provider specific
      "--dpi-desync=split2 --dpi-desync=fake --dpi-desync-repeats=6" # youtube
      "--dpi-desync-any-protocol --dpi-desync=fake" # discord
    ];
    whitelist = [
      "googlevideo.com"
      "youtu.be"
      "youtube.com"
      "youtubei.googleapis.com"
      "youtubeembeddedplayer.googleapis.com"
      "ytimg.l.google.com"
      "ytimg.com"
      "jnn-pa.googleapis.com"
      "youtube-nocookie.com"
      "youtube-ui.l.google.com"
      "yt-video-upload.l.google.com"
      "wide-youtube.l.google.com"
      "youtubekids.com"
      "ggpht.com"
      "discord.com"
      "gateway.discord.gg"
      "cdn.discordapp.com"
      "discordapp.net"
      "discordapp.com"
      "discord.gg"
      "media.discordapp.net"
      "images-ext-1.discordapp.net"
      "discord.app"
      "discord.media"
      "discordcdn.com"
      "discord.dev"
      "discord.new"
      "discord.gift"
      "discordstatus.com"
      "dis.gd"
      "discord.co"
      "discord-attachments-uploads-prd.storage.googleapis.com"
      "rutracker.org"
      "soundcloud.com"
    ];
  };
  networking.firewall.extraCommands = ''
    iptables -t mangle -A POSTROUTING -p udp -m multiport --dports 50000:50099 -m mark ! --mark 0x40000000/0x40000000 -m connbytes --connbytes 1:1 --connbytes-mode packets --connbytes-dir original -j NFQUEUE --queue-num 200 --queue-bypass
  '';
}
