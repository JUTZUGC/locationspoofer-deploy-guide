#!/usr/bin/env bash
set -euo pipefail
# LocationSpoofer APK 安装脚本（第三方指南）——按官方文档封装
# 官方文档：https://github.com/HuangZhuoRui/LocationSpoofer/blob/main/README.md
# 更新日期：2026-10-28
# 类型：binary
cd "$(dirname "${BASH_SOURCE[0]}")"

command -v curl >/dev/null 2>&1 || { echo "需要先安装 curl"; exit 1; }

mkdir -p .download
cd .download

curl -fL -o LocationSpoofer.apk "https://github.com/HuangZhuoRui/LocationSpoofer/releases/download/v3.1.2/LocationSpoofer-v3.1.2-global-64bit-arm64-v8a.apk"
echo "20185e30c3fcc588461c29b90ee28f470cc214a5eda5584a37498b63b224c4ee  LocationSpoofer.apk" | sha256sum -c -
if command -v adb >/dev/null 2>&1; then adb install -r LocationSpoofer.apk; else echo "已下载并校验：请把 LocationSpoofer.apk 传到 Android 手机手动安装"; fi
echo "安装完成：打开 LocationSpoofer 注册登录，并在申请网站提交被测试应用包名"

echo ""

echo "安装完成：打开 LocationSpoofer 注册登录，再到申请网站提交被测试应用包名，审核通过后即可选点或规划路线"
echo "若结果异常或需要改配置，请参考官方文档：https://github.com/HuangZhuoRui/LocationSpoofer/blob/main/README.md"
