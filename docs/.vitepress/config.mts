import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Lyra Code',
  description: 'Android 本地 AI Agent 应用 — 聊天、编程、搜索、MCP、SSH 与更多',
  lang: 'zh-CN',
  
  head: [
    ['link', { rel: 'icon', href: '/favicon.ico' }],
    ['meta', { name: 'theme-color', content: '#4F46E5' }],
    ['meta', { property: 'og:title', content: 'Lyra Code — Android AI Agent' }],
    ['meta', { property: 'og:description', content: '一款 Android 本地 AI Agent 应用，支持多模型聊天、文件工具、代码执行、网页搜索、MCP、SSH、WebDAV 等。' }],
    ['meta', { property: 'og:type', content: 'website' }],
  ],

  themeConfig: {
    logo: '/logo.png',
    
    nav: [
      { text: '首页', link: '/' },
      { text: '指南', link: '/guide/getting-started' },
      { text: '功能', link: '/features/models' },
      { text: '关于', link: '/about/license' },
    ],

    sidebar: {
      '/guide/': [
        {
          text: '使用指南',
          items: [
            { text: '快速开始', link: '/guide/getting-started' },
            { text: '安装指南', link: '/guide/installation' },
            { text: 'Termux 配置', link: '/guide/termux-setup' },
          ]
        }
      ],
      '/features/': [
        {
          text: '功能详情',
          items: [
            { text: 'AI 模型', link: '/features/models' },
            { text: 'Agent 工具', link: '/features/agent-tools' },
            { text: 'MCP / SSH / WebDAV', link: '/features/mcp-ssh-webdav' },
            { text: '设备与系统', link: '/features/device-tools' },
          ]
        }
      ],
      '/about/': [
        {
          text: '关于',
          items: [
            { text: '许可证', link: '/about/license' },
          ]
        }
      ],
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/Soffd/Lyra-Code' },
    ],

    footer: {
      message: '基于 AGPLv3-or-later / 商业许可协议发布',
      copyright: 'Copyright © 2025–2026 Lyra Code Contributors'
    },

    search: {
      provider: 'local'
    },

    editLink: {
      pattern: 'https://github.com/Soffd/Lyra-Code/edit/main/:path',
      text: '在 GitHub 上编辑此页'
    },

    docFooter: {
      prev: '上一页',
      next: '下一页'
    },

    darkModeSwitchLabel: '主题',
    lightModeSwitchTitle: '切换到浅色模式',
    darkModeSwitchTitle: '切换到深色模式',
    sidebarMenuLabel: '菜单',
    returnToTopLabel: '回到顶部'
  },

  markdown: {
    theme: {
      light: 'github-light',
      dark: 'github-dark'
    },
    lineNumbers: true
  }
})