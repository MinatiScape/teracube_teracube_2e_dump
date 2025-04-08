#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:33554432:09a8c825d612636bb3c6a0cf01a46d9224e7ce7e; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/by-name/recovery:33554432:09a8c825d612636bb3c6a0cf01a46d9224e7ce7e && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
