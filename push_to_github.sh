#!/bin/bash

# 切换到项目目录
cd /Users/jackleo/R_project/IS507_work

# 显示当前状态
echo "=========================================="
echo "Checking git status..."
echo "=========================================="
git status

echo ""
echo "=========================================="
echo "Adding files to staging area..."
echo "=========================================="
git add .

echo ""
echo "=========================================="
echo "Current staged files:"
echo "=========================================="
git status --short

echo ""
echo "=========================================="
echo "Committing changes..."
echo "=========================================="
read -p "Enter commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update report and code"
fi
git commit -m "$commit_msg"

echo ""
echo "=========================================="
echo "Pushing to GitHub..."
echo "=========================================="
git push origin main

echo ""
echo "=========================================="
echo "✅ Done! Changes pushed to GitHub"
echo "=========================================="

