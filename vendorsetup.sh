#!/bin/bash

if [ ! -d "prebuilts/clang/host/linux-x86/clang-r416183b" ]; then
  rm -rf prebuilts/clang/host/linux-x86/clang-r416183b
  git clone https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b prebuilts/clang/host/linux-x86/clang-r416183b
fi
if [ ! -d "hardware/mediatek" ]; then
  rm -rf hardware/mediatek
  git clone https://github.com/raphakkj4/adroid_hardware_xiaomi
fi
if [ ! -d "vendor/xiaomi/sea" ]; then
  rm -rf vendor/xiaomi/sea
  git clone https://github.com/raphakkj4/android_vendor_sea vendor/xiaomi/sea
fi
if [ ! -d "kernel/xiaomi/mt6871" ]; then
  rm -rf kernel/xiaomi/mt6781
  git clone https://github.com/mt6781-devs/android_kernel_xiaomi_mt6781 kernel/xiaomi/mt6781
fi
if [ ! -d "vendor/mediatek/ims" ]; then
  rm -rf vendor/mediatek/ims
  git clone https://github.com/raphakkj4/android_vendor_mediatek_ims vendor/mediatek/ims
fi
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
  rm -rf device/mediatek/sepolicy_vndr
  git clone https://github.com/raphakkj4/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr
fi
if [! -d "packages/apps/ViPER4AndroidFX"]; then
  rm -rf packages/apps/ViPER4AndroidFX
  git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
fi
if [ ! -d "hardware/lineage/interfaces/sensors" ]; then
  rm hardware/lineage/interfaces/sensors
fi
