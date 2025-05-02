# luci-app-netaccess
# 🌐 luci-app-netaccess v1.0.0

OpenWRT 上网控制插件（支持 白名单 + 黑名单 + 图形界面配置）

A simple yet powerful Internet Access Control plugin for OpenWrt with both Whitelist and Blacklist support. Includes full LuCI GUI for ease of use.

---

## 🧩 功能 Features

- ✅ 支持白名单 / 黑名单两种模式  
- ✅ 支持通过 LuCI 页面管理 MAC 列表  
- ✅ 开机自动应用规则  
- ✅ 支持一键安装脚本  
- ✅ 兼容所有主流 OpenWRT 架构

---

## 📷 插件位置 Plugin Location

网络 > 上网控制
Network > Internet Access Control



---

## 📥 安装方式 Installation

### ✅ 方式一：Web 界面手动上传
1. 进入 `系统 > 软件包 > 上传软件包`
2. 上传 `luci-app-netaccess_1.0_all.ipk`
3. 安装并刷新页面

### ✅ 方式二：命令行一键安装

| 文件名                              | 说明          |
| -------------------------------- | ----------- |
| `luci-app-netaccess_1.0_all.ipk` | 插件安装包       |
| `install.sh`                     | 一键安装脚本      |
| `README.md`                      | 插件使用说明      |
| `source code`                    | 完整源码，支持二次开发 |

🧪 兼容架构 Supported Platforms
✅ mipsel_24kc（多数路由器，如 MT7621、K2P 等）

✅ arm_cortex-a7

✅ aarch64_generic

✅ 其他架构建议自行编译

欢迎反馈建议，欢迎 PR。

Thanks for using. 欢迎 star ⭐ 项目支持！
