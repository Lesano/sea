#!/bin/bash

set -e

echo ""
echo "========================================"
echo "   Redmi Note 12S Device Tree Setup    "
echo "========================================"
echo ""

clone() {

  REPO=$1
  DEST=$2

  if [ ! -d "$DEST" ]; then

    echo "📥 Cloning $DEST"
    git clone --depth=1 "$REPO" "$DEST"

  else

    echo "✔ Already exists: $DEST"

  fi

}

clone https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b prebuilts/clang/host/linux-x86/clang-r416183b

clone https://github.com/raphakkj4/adroid_hardware_xiaomi hardware/xiaomi

clone https://github.com/raphakkj4/android_hardware-mediatek hardware/mediatek

clone https://github.com/raphakkj4/android_vendor_sea vendor/xiaomi/sea

clone https://github.com/mt6781-devs/android_kernel_xiaomi_mt6781 kernel/xiaomi/mt6781

clone https://github.com/raphakkj4/android_vendor_mediatek_ims vendor/mediatek/ims

clone https://github.com/raphakkj4/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr

clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX


if [ -d hardware/lineage/interfaces/sensors ]; then

  echo "🧹 Removing lineage sensors interface"
  rm -rf hardware/lineage/interfaces/sensors

fi


echo ""
echo "✅ Redmi Note 12S DT setup complete!"
echo ""