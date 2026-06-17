#!/bin/bash
# Lyra Code 官网 - 生产构建脚本
# 在 Termux 中运行此脚本以构建静态站点

PROJECT_DIR=/data/data/com.termux/files/home/lyra-code-website
WORKSPACE_DIR=/storage/emulated/0/Ubuntu/lyra-code-website

echo "📁 同步项目文件..."
cp -r "$WORKSPACE_DIR/docs/"*.md "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/guide" "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/features" "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/about" "$PROJECT_DIR/docs/"
cp -r "$WORKSPACE_DIR/docs/public" "$PROJECT_DIR/docs/"
cp "$WORKSPACE_DIR/docs/.vitepress/config.mts" "$PROJECT_DIR/docs/.vitepress/config.mts"

echo "📦 安装依赖（如需要）..."
cd "$PROJECT_DIR" && npm install --no-audit --no-fund 2>/dev/null

echo "🔨 构建站点..."
cd "$PROJECT_DIR" && node node_modules/vitepress/bin/vitepress.js build docs

echo "📤 复制 dist 到工作区..."
cp -r "$PROJECT_DIR/docs/.vitepress/dist/"* "$WORKSPACE_DIR/docs/.vitepress/dist/"

echo "✅ 构建完成！输出目录: $WORKSPACE_DIR/docs/.vitepress/dist"