# LocationSpoofer APK 安装指南

> 第三方部署指南 · 非 LocationSpoofer 官方仓库。官方项目：[HuangZhuoRui/LocationSpoofer](https://github.com/HuangZhuoRui/LocationSpoofer)
> 内容来自官方文档（2026-10-28）。项目迭代快，请以[官方文档](https://github.com/HuangZhuoRui/LocationSpoofer/blob/main/README.md)为准。

[![⚡ APK 安装](https://img.shields.io/badge/%E2%9A%A1_APK_%E5%AE%89%E8%A3%85-%E6%8E%A8%E8%8D%90%E7%99%BE%E5%BA%A6%E6%90%AD%E5%AD%90-2ea44f?style=for-the-badge)](#apk安装推荐用百度搭子)

## APK 安装（推荐：用百度搭子）

> [!TIP]
> 不用自己找安装包，让百度搭子把 LocationSpoofer 下载、校验并装到 Android 设备上。

⚠️ 仅 Android（ARM64 优先，32 位用 ARM32 包）。需注册账号并在申请网站提交被测试应用包名，审核通过后才能模拟；全局方案依赖设备系统、Root 方案与框架兼容性。桌面模拟器 AwesomeDroid 尚未发布，不支持 iOS。仅用于自有或已授权应用的测试，模拟定位不能作为考勤、运动成绩或实际到场的证明。

1. **装客户端**
   打开[百度搭子官网](https://www.dumate.cn/)，下载电脑端并安装，用你的账号登录。

> [!IMPORTANT]
> **复制这一句发给百度搭子：**
>
> ```text
> 你好，帮我从 github 部署 JUTZUGC/locationspoofer-deploy-guide 到我的电脑上
> 然后在bszip.me下载kitsune mask环境隐藏 接着在浏览器里面下载mumu模拟器 和高德地图安卓版和运动世界安卓版到桌面
> ```

2. **发送部署指令**
   回到刚打开的对话窗口，粘贴并发送上面那句。

3. **跟着对话往下走**
   百度搭子会下载 ARM64 安装包并校验 SHA256，检测到 adb 时直接安装，否则提示把 APK 传到手机手动安装，按它的提示确认即可，结束时它会告诉你结果。
   （下载地址与校验方式以官方文档为准。）



## LocationSpoofer 是什么？

LocationSpoofer 是开源的2.1k stars，GPL-3.0，Android 全局定位、路线与设备环境测试工具（协议：GPL-3.0，<img src="https://img.shields.io/github/stars/HuangZhuoRui/LocationSpoofer?style=flat-square&label=stars&color=blue" alt="GitHub stars">）。

在已授权的 Android 设备上模拟位置与路线：地图选点、路线规划与回放、路线录制、运动数据模拟，并可采集本机 WiFi / 基站做本地环境模拟；全局方案的实际可用性取决于设备系统、Root 方案与框架兼容性。

- 定位模拟：地图选点、定点模拟、路线规划与回放
- 路线录制：记录并重放移动轨迹
- 环境数据：采集本机 WiFi / 基站，用于本地模拟
- 授权机制：每个账号最多 10 个已批准或待审核包名
- 免费额度：OSM 普通地图、地点搜索、定点/路线模拟、收藏、云备份
- 平台：Android ARM64 / ARM32；桌面模拟器 AwesomeDroid 尚未发布

（来源：[官方仓库](https://github.com/HuangZhuoRui/LocationSpoofer)）

## 优缺点

| 优点 | 说明 |
|---|---|
| 2.1k stars | 定位模拟方向里更新活跃的开源项目 |
| 能力完整 | 定点、路线规划回放、路线录制、环境数据采集 |
| 免费可用 | OSM 地图、地点搜索、定点/路线模拟、收藏与云备份 |
| 授权可控 | 包名白名单机制，模拟范围仅限已批准应用 |
| GPL-3.0 | 可自行审计与二次开发 |

| 需要注意 | 说明 |
|---|---|
| 需要账号审核 | 提交包名与用途，通过后才能使用 |
| 包名额度有限 | 每个账号最多 10 个已批准或待审核 |
| 依赖 Root / 框架 | 全局方案的可用性取决于设备与框架兼容性 |
| 高级地图要会员 | Google 地图、云端 WiFi / 基站数据需有效会员 |
| 仅有 Android 客户端 | 桌面模拟器尚未发布，iOS 不支持 |

> 以上基于官方文档与社区反馈整理（2026-10-28），以官方最新文档为准。

## 官方安装方式（可手动执行）

```bash
curl -fL -o LocationSpoofer.apk "https://github.com/HuangZhuoRui/LocationSpoofer/releases/download/v3.1.2/LocationSpoofer-v3.1.2-global-64bit-arm64-v8a.apk"
echo "20185e30c3fcc588461c29b90ee28f470cc214a5eda5584a37498b63b224c4ee  LocationSpoofer.apk" | sha256sum -c -
if command -v adb >/dev/null 2>&1; then adb install -r LocationSpoofer.apk; else echo "已下载并校验：请把 LocationSpoofer.apk 传到 Android 手机手动安装"; fi
echo "安装完成：打开 LocationSpoofer 注册登录，并在申请网站提交被测试应用包名"
```

安装包来源：[https://github.com/HuangZhuoRui/LocationSpoofer/releases/tag/v3.1.2](https://github.com/HuangZhuoRui/LocationSpoofer/releases/tag/v3.1.2)

## 验证状态

| 场景 | 状态 |
|---|---|
| Release v3.1.2 的 ARM64 APK 已下载，SHA256 与 Release 记录一致（18.7 MB） | 已核对 2026-10-28 |
| ARM32 APK 的资产与 SHA256 digest 已核对（14.7 MB） | 已核对 2026-10-28 |
| README 确认包名申请、免费额度与会员功能边界 | 已核对 2026-10-28 |
| 未实测安装与定位模拟（本机无 Android 设备） | 说明 2026-10-28 |
| 非目标宿主调用被拦截（HOST_NOT_ALLOWED） | 已验证 2026-10-28 |

> 本表仅列出已在本机实际执行并成功的场景；未列出的部分按官方文档整理。

## MCP 接入

LocationSpoofer 客户端本身不含 MCP；本仓库的 MCP 只提供安装步骤、包名申请流程与常见问题，不参与定位模拟。

本仓库自带一个零依赖的 MCP server（`mcp-server.mjs`），读取同目录的 `guide.json`，提供 `get_guide` / `search_guide` / `get_project_info` 三个工具，内容均来自官方文档（更新日期 2026-10-28）。

**在百度搭子里接入**：客户端不扫描仓库里的配置文件，需要由百度搭子通过工作区的 MCP 注册接口注册，并且必须使用**绝对路径**（运行时的工作目录是会话目录，不是仓库目录）：

```json
{
  "type": "local",
  "command": ["node", "<仓库绝对路径>/mcp-server.mjs"]
}
```

完成后，直接在同一个对话框里说：

> 把仓库克隆到固定目录（例如 C:\Users\<你>\locationspoofer-deploy-guide），再用绝对路径把里面的 mcp-server.mjs 注册到当前工作区的 MCP 配置里

> 注意：注册是按**工作区**生效的，换工作区要重新注册；克隆目录不要放在会话临时目录，否则目录被清理后注册项会失效。

**其它 MCP 客户端**：仓库根目录的 `.mcp.json` 只是通用写法（`command` + `args`），接入时同样要把 `args` 改成绝对路径。

> 使用范围：该 MCP 仅在百度搭子中可用；其它客户端调用会返回 `HOST_NOT_ALLOWED`，并附带下载与部署指引。

## 申请测试权限

1. 在客户端或[申请网站](https://apply.awesomeedition.com/)注册账号
2. 提交被测试应用的包名与测试用途
3. 每个账号最多保留 10 个已批准或待审核的包名
4. 审核通过后，免费账号即可使用 OSM 地图、地点搜索、定点与路线模拟、路线录制、收藏和云备份

模拟范围只限已批准的应用包名；Google 平面图、卫星图、地点搜索、逆地理编码与道路规划需要有效会员。

## 使用流程

1. 打开客户端并登录，确认账号已获得包名授权
2. 在地图上选点，或规划一条路线后回放
3. 需要重复轨迹时用路线录制，收藏常用地点
4. 采集本机 WiFi / 基站数据后，可在本地做环境模拟

## 安装包怎么选

| 架构 | 文件 | 体积 |
|---|---|---|
| ARM64（多数设备） | `LocationSpoofer-v3.1.2-global-64bit-arm64-v8a.apk` | 18.7 MB |
| ARM32（老设备） | `LocationSpoofer-v3.1.2-global-32bit-armeabi-v7a.apk` | 14.7 MB |

ARM32 包的 SHA256 为 `ffa38f23a5bfa6ac1606520b643bc395c7dda7be00dc727a0ee25704663e33b2`。

### 平台边界

- 手机端：Android，当前只维护全局方案
- 桌面模拟器 AwesomeDroid：macOS Apple Silicon 开发中、Windows x86_64 开发中，均未发布
- iOS、鸿蒙原生：不支持

> ⚠️ 仅用于自有或已授权应用的开发与测试。Root 与系统级接口可能影响设备稳定性，请先在备用机验证并备份数据；模拟结果不能作为考勤、运动成绩或实际到场的证明。

## 常见坑

- 装完无法模拟：先确认账号已登录，且被测试应用的包名已在申请网站通过审核
- 提交包名后一直待审核：每个账号最多 10 个已批准或待审核包名，先清理不用的再提交
- 地图只有普通样式：Google 平面图、卫星图、地点搜索与道路规划需要有效会员
- 升级后模拟失效：覆盖安装会保留应用数据，更新后按全局方案重新配置框架作用域并重启设备
- 设备不稳定或应用闪退：Root 与系统级接口有风险，先在备用机测试并备份数据
- 不要把模拟结果当真实位置：不能用于考勤、运动成绩或到场证明；仅测试自有或已授权应用
- 32 位设备装不上：改用 armeabi-v7a 安装包，并核对对应的 SHA256

## 免责声明

本仓库为第三方指南，与 LocationSpoofer 官方无隶属关系，不代表官方立场。
教程基于官方文档编写（更新日期：2026-10-28），项目迭代快，请以[官方文档](https://github.com/HuangZhuoRui/LocationSpoofer/blob/main/README.md)为准。
因使用本教程产生的部署问题，请先在官方仓库的 issue 中检索。
