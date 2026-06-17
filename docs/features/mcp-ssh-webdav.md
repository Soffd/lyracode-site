# MCP / SSH / WebDAV

Lyra Code 通过三大协议集成远程服务，所有连接均可通过统一的自然语言界面完成配置。

## MCP（模型上下文协议）

连接远程 MCP 服务器，扩展 Agent 的能力边界：

- **Streamable HTTP** 传输
- **SSE（Server-Sent Events）** 传输
- 随时添加、配置、启用和禁用服务器
- 每个 MCP 工具以 `mcp_` 前缀标识，清晰可辨

### 使用场景

- 接入专业 AI 工具和数据源
- 通过 MCP 封装集成外部 API
- 无需修改应用即可扩展 Lyra Code 的原生能力

::: tip MCP 工具
MCP 服务器的工具与原生工具并列显示。所有 MCP 工具调用均需要**用户确认**后才能执行。
:::

## SSH

安全连接远程服务器，进行运维管理和自动化操作：

### 支持的目标

- **Linux** 服务器
- **Windows** 服务器
- **Git** 服务器

### 认证方式

- 密码登录
- 私钥认证（可选口令短语）

### 功能特性

- 远程执行命令并获取 `stdout`/`stderr`
- 每次会话可指定工作目录
- 为交互式命令提供输入行（如 Y/N 提示）
- 可配置超时

### 安全机制

- 每条 SSH 命令都需要**用户明确批准**
- 执行前完整预览命令
- 使用 `list_ssh_servers` 查看已配置连接
- 安装或修改软件前务必先检查系统资源

## WebDAV

通过 WebDAV 访问和管理远程存储：

### 功能

| 操作 | 说明 |
|------|------|
| `webdav_list` | 使用 PROPFIND 浏览目录 |
| `webdav_search` | 按文件名或路径搜索 |
| `webdav_download` | 下载文件到工作区 |
| `webdav_upload` | 上传工作区文件到服务器 |

### 云备份

- 直接导出备份到 WebDAV
- 默认路径：`/LyraCode/lyra_backup_latest.zip`
- 导入时自动检测最新备份
- 支持完整和选择性备份（方案、对话、配置、密钥）

## 自然语言配置管理

所有 MCP、SSH、WebDAV、技能包和 Agent 工具配置都可以通过自然语言管理：

```
"在 https://my-mcp.example.com 添加一个 Streamable HTTP 的 MCP 服务器"
"配置 SSH 连接到我的 VPS，IP 是 192.168.1.100，使用密钥认证"
"设置 WebDAV 备份到我的 NextCloud 服务器"
"启用设备硬件检测工具"
```

你只需描述需求，Agent 会处理配置细节。

::: warning 安全提示
HTTP API、MCP 和 WebDAV 端点若非 HTTPS 或受信网络保护，则**不安全**。生产环境请务必使用加密连接。
:::