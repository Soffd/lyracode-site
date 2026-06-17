# Lyra Code 官网

> Lyra Code 是一款 **Android 优先的本地 AI Agent 应用**，将多模型聊天、文件操作、代码执行、网页搜索、MCP、SSH、WebDAV 等功能整合到移动端工作流中。

这是 Lyra Code 的官方介绍网站源码，使用 [VitePress](https://vitepress.dev/) 构建。

## ✨ 特性

- **多模型 AI 对话** — 支持 OpenAI、Anthropic、Gemini 及任意 OpenAI 兼容 API
- **强大的 Agent 工具** — 文件读写、代码执行、网页搜索、TODO 规划
- **MCP · SSH · WebDAV** — 远程连接与集成，自然语言配置
- **设备诊断** — CPU、内存、存储、屏幕、应用签名检测
- **多模态与富文本** — 图片上传、拍照标注、LaTeX、代码高亮
- **隐私优先** — 本地优先架构，API 密钥和对话数据保存在设备上
- **技能包系统** — 可导入知识包应对专业场景
- **沉浸角色扮演** — 好感度系统 + 表情贴纸

## 🚀 快速开始

```bash
# 安装依赖
npm install

# 本地开发
npm run dev

# 构建静态站点
npm run build

# 预览构建结果
npm run preview
```

## 📁 项目结构

```
lyra-code-website/
├── docs/                # VitePress 源文件
│   ├── .vitepress/      # 配置文件
│   │   └── config.mts   # VitePress 配置
│   ├── about/           # 关于页面
│   ├── features/        # 功能详情
│   ├── guide/           # 使用指南
│   ├── public/          # 静态资源
│   └── index.md         # 首页
├── package.json
├── build.sh             # Termux 构建脚本
└── dev.sh               # Termux 开发脚本
```

## 🔧 在 Termux 中构建

如果要在 Android Termux 环境中构建：

```bash
bash build.sh
```

## 📄 许可证

本网站内容及 Lyra Code 应用基于 AGPLv3-or-later / 商业许可协议发布。

---

*用 Lyra Code 本身来制作 Lyra Code 的介绍网站 —— 没有比这更酷的方法了。*