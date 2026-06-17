# 安装指南

本页介绍如何在你的 Android 设备上安装 Lyra Code。

## 下载预构建 APK

最简单的方式是从 GitHub Releases 下载最新 APK：

👉 [GitHub Releases](https://github.com/Soffd/Lyra-Code/releases)

1. 从最新 Release 中下载 `.apk` 文件
2. 在 Android 设备上打开该文件
3. 如提示「未知来源」，请允许安装
4. 启动 Lyra Code

## 从源码构建

如果你想自己构建 APK：

### 环境要求

- **Android Studio** 或命令行 Android SDK
- **JDK 11 及以上**
- **Android SDK 36**
- **Gradle Wrapper**（仓库已包含）

### 构建步骤

```bash
# 克隆仓库
git clone https://github.com/Soffd/Lyra-Code.git
cd Lyra-Code

# 构建 Debug APK
./gradlew assembleDebug
```

生成的 APK 位于：

```
app/build/outputs/apk/debug/
```

### Release 构建

Release 构建请在 Android Studio 中手动配置签名。

::: warning 安全提示
**切勿**将签名密钥、密钥库、API 密钥、`.env`、`local.properties` 或任何本地私密文件提交到版本控制。
:::

## 系统要求

| 项目 | 最低要求 |
|------|----------|
| Android 版本 | 8.0 (API 26) |
| 架构 | arm64-v8a (ARM64) |
| 内存 | 2 GB 以上 |
| 存储空间 | 100 MB 以上可用 |

## 验证 APK

你可以通过 [已安装应用检测](/features/device-tools) 功能查看 APK 的 SHA-256 签名证书，或使用标准 Android 工具来验证 APK 签名。

## 更新

更新 Lyra Code 的步骤：

1. 从 GitHub Releases 下载最新 APK
2. 覆盖安装到现有版本之上
3. 你的设置、对话记录和配置均会保留

::: tip 先备份
更新前建议先[导出备份](/guide/getting-started)，确保数据安全。
:::