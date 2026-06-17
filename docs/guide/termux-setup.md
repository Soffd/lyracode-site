# Termux 配置

Termux 集成让 Lyra Code 能够执行命令、运行脚本，并与你的 Android 终端环境交互。

## 为什么需要 Termux？

- 在 AI 对话中直接执行 Shell 命令和脚本
- 运行开发工具（Python、Node.js、Git 等）
- 通过编程方式管理文件
- 在 Android 上获得完整的类 Linux 环境

## 逐步配置

### 第一步：安装 Termux

从 F-Droid 下载并安装 Termux：

👉 [Termux on F-Droid](https://f-droid.org/packages/com.termux/)

::: warning Google Play 版本
Google Play 上的 Termux 版本**已过时且不再维护**。请务必使用 F-Droid 版本以获得最新功能和安全更新。
:::

### 第二步：启用外部应用调用

打开 Termux，运行以下命令：

```bash
mkdir -p ~/.termux
echo 'allow-external-apps=true' >> ~/.termux/termux.properties
termux-reload-settings
```

这将允许 Lyra Code 通过 `RunCommandService` 与 Termux 通信。

### 第三步：在 Lyra Code 中授权

1. 打开 **Lyra Code**
2. 进入 **设置 → Agent**
3. 开启 **Termux 通信** 权限

如果未授权此权限，`run_command` 工具将自动禁用。

### 第四步：验证配置

在 Lyra Code 中新建对话，让 AI 执行一条简单命令：

> 执行：`echo 你好，来自 Termux`

如果一切正常，你应该能看到输出 `你好，来自 Termux`。

## 推荐安装的软件包

安装以下软件包以获得最佳体验：

```bash
pkg update && pkg upgrade
pkg install nodejs python git curl wget openssh
```

## 常见问题

### 命令超时

- 检查 Termux 是否在后台运行
- 关闭 Termux 的电池优化
- 确保 Termux 拥有通知权限

### 权限被拒绝

- 确认 `~/.termux/termux.properties` 中已设置 `allow-external-apps=true`
- 修改后执行 `termux-reload-settings`
- 重启 Termux

### 命令无法执行

- 确保已在 Lyra Code 中开启 Termux 通信权限
- 确认 Termux 是从 F-Droid 安装的，而非 Google Play

## 安全须知

- Lyra Code 的每次命令执行都需要**用户明确批准**
- 请在批准前仔细检查命令内容
- 命令以 Termux 用户的权限运行
- 执行修改系统文件或安装软件包的命令时请格外谨慎