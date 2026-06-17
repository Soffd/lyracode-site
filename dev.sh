#!/bin/bash
# Lyra Code 官网 - 开发服务器启动脚本
# 在 Termux 中运行此脚本以启动 VitePress 开发服务器

PROJECT_DIR=/data/data/com.termux/files/home/lyra-code-website
WORKSPACE_DIR=/storage/emulated/0/Ubuntu/lyra-code-website

# 同步文件（跳过 node_modules 和 dist）
echo "📁 同步项目文件..."
cp -r "$WORKSPACE_DIR/docs/"*.md "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/guide" "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/features" "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/about" "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/public" "$PROJECT_DIR/docs/"
cp "$WORKSPACE_DIR/docs/.vitepress/config.mts" "$PROJECT_DIR/docs/.vitepress/config.mts"

# 如有需要则安装依赖
if [ ! -d "$PROJECT_DIR/node_modules" ]; then
  echo "📦 安装依赖..."
  cd "$PROJECT_DIR" && npm install --no-audit --no-fund
fi

echo "🚀 启动 VitePress 开发服务器 → http://localhost:5173"
cd "$PROJECT_DIR" && node node_modules/vitepress/bin/vitepress.js dev docs --host 0.0.0.0