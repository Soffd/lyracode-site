# 快速开始

欢迎使用 **Lyra Code**——一款 Android 本地 AI Agent，将你的手机变成强大的 AI 工作站。

## 前置条件

- 一台运行 **Android 8.0 及以上** 的设备
- 已安装 [Termux](https://f-droid.org/packages/com.termux/)（用于命令执行功能）
- 至少一个 **AI 服务商的 API 密钥**（OpenAI、Anthropic、Gemini 或自定义）

## 快速上手

### 第一步：安装 Lyra Code

从 [GitHub Releases](https://github.com/Soffd/Lyra-Code/releases) 下载最新 APK 并安装到你的设备。

### 第二步：配置 AI 服务商

1. 打开 Lyra Code，进入 **设置**
2. 点击 **模型服务商**
3. 添加新的服务商，填入 API 密钥、接口地址和模型名称
4. 保存并设为当前使用的服务商

### 第三步：配置 Termux（可选）

启用命令执行和脚本功能：

1. 打开 Termux，运行以下命令：
   ```bash
   mkdir -p ~/.termux
   echo 'allow-external-apps=true' >> ~/.termux/termux.properties
   termux-reload-settings
   ```
2. 在 Lyra Code 中，进入 **设置 → Agent**，授权 Termux 通信权限

详见 [Termux 配置](/guide/termux-setup) 页面。

### 第四步：开始对话

点击 **+** 按钮新建对话。输入消息，AI 即刻响应。你可以：

- 在对话中途切换模型
- 启用 Agent 工具进行文件操作、网页搜索等
- 上传图片进行多模态分析

## 下一步

- [安装指南](/guide/installation) — 详细的 APK 安装与源码构建说明
- [AI 模型](/features/models) — 了解支持的模型服务商
- [Agent 工具](/features/agent-tools) — 探索全部 Agent 能力