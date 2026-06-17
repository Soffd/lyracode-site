# AI 模型

Lyra Code 支持多种 AI 模型服务商，让你能为不同任务灵活选择最佳模型。

## 支持的服务商

### OpenAI Chat Completions

连接任意兼容 OpenAI Chat Completions 的 API，包括：

- **OpenAI** — GPT-4o、GPT-4、o1、o3 系列
- **第三方服务商** — OpenRouter、Groq、Together AI 等兼容 API
- **自部署方案** — Ollama、vLLM、LocalAI 等

### Anthropic Messages API

完整支持 Anthropic Messages API：

- Claude Opus、Sonnet、Haiku 系列
- 流式与非流式模式
- 扩展思考（Extended Thinking）/ 推理深度控制

### Gemini GenerateContent API

原生支持 Google Gemini 模型：

- Gemini 2.5 Pro、2.5 Flash
- Gemini 2.0 Flash、1.5 Pro
- 多模态输入（文本 + 图片）

## 服务商配置

每个服务商可配置以下参数：

| 配置项 | 说明 |
|--------|------|
| API 密钥 | 你的认证密钥 |
| 接口地址 | API 端点（可自定义） |
| 模型 | 模型名称 / 标识符 |
| 额外请求头 | 自定义 HTTP Headers |

::: warning HTTP API 警告
使用 HTTP（非 HTTPS）API 地址会触发**明确的安全警告**。生产环境请务必使用 HTTPS。
:::

## 快速模型切换

Lyra Code 支持在**对话中途**切换模型，无需丢失上下文：

- 在不同服务商和模型之间即时切换
- 随时调整系统提示词
- 对支持的模型调整推理深度

## 模型配置方案

将多个服务商配置保存为方案，每个方案可独立设置：

- API 密钥和端点
- 默认模型
- 首选系统提示词
- 推理参数

根据任务类型——编程、创作、研究或自动化——快速切换方案。