# LocationSpoofer APK 安装脚本（第三方指南）——按官方文档封装
# 官方文档：https://github.com/HuangZhuoRui/LocationSpoofer/blob/main/README.md
# 更新日期：2026-10-28
# 类型：binary
$ErrorActionPreference = 'Stop'
Set-Location -Path $PSScriptRoot

if (-not (Get-Command curl.exe -ErrorAction SilentlyContinue)) { throw '需要先安装 curl（Windows 10+ 自带 curl.exe）' }

New-Item -ItemType Directory -Force -Path .download | Out-Null
Set-Location -Path .download

curl.exe -L --fail -o LocationSpoofer.apk "https://github.com/HuangZhuoRui/LocationSpoofer/releases/download/v3.1.2/LocationSpoofer-v3.1.2-global-64bit-arm64-v8a.apk"
if ((Get-FileHash LocationSpoofer.apk -Algorithm SHA256).Hash.ToLower() -ne '20185e30c3fcc588461c29b90ee28f470cc214a5eda5584a37498b63b224c4ee') { throw 'SHA256 校验失败，请重新下载' }
if (Get-Command adb -ErrorAction SilentlyContinue) { adb install -r .\LocationSpoofer.apk } else { Write-Host '已下载并校验：请把 LocationSpoofer.apk 传到 Android 手机手动安装' }
Write-Host '安装完成：打开 LocationSpoofer 注册登录，并在申请网站提交被测试应用包名'

Write-Host ''

Write-Host '安装完成：打开 LocationSpoofer 注册登录，再到申请网站提交被测试应用包名，审核通过后即可选点或规划路线'
Write-Host '若结果异常或需要改配置，请参考官方文档：https://github.com/HuangZhuoRui/LocationSpoofer/blob/main/README.md'
