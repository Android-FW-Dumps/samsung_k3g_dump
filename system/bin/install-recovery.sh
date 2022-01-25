#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:10151936:715d4d30ed907a1d6f1e55d64426f4bf9ee44cea; then
  applypatch EMMC:/dev/block/mmcblk0p9:9605120:445c7a9cc295bd8574cc466e08b78ccde3fd3d1a EMMC:/dev/block/mmcblk0p10 715d4d30ed907a1d6f1e55d64426f4bf9ee44cea 10151936 445c7a9cc295bd8574cc466e08b78ccde3fd3d1a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
