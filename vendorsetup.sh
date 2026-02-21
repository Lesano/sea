#!/bin/bash

echo "Redmi Note 12S DT setup"

git clone https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b prebuilts/clang/host/linux-x86/clang-r416183b || true

git clone https://github.com/raphakkj4/adroid_hardware_xiaomi hardware/xiaomi || true

git clone https://github.com/raphakkj4/android_hardware-mediatek hardware/mediatek || true

git clone https://github.com/raphakkj4/android_vendor_sea vendor/xiaomi/sea || true

git clone https://github.com/mt6781-devs/android_kernel_xiaomi_mt6781 kernel/xiaomi/mt6781 || true

git clone https://github.com/raphakkj4/android_vendor_mediatek_ims vendor/mediatek/ims || true

git clone https://github.com/raphakkj4/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr || true

git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX || true

echo "Done"