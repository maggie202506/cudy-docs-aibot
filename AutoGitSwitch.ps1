# =========================================
# GitHub 多账号自动化提交 & 推送脚本 (HTTPS)
# =========================================

# -----------------------------
# 配置账号信息
# -----------------------------
$accounts = @{
    "1" = @{
        Name = "maggie202506"
        Email = "maggie.chen@cudy.com"
        RepoURL = "https://github.com/cudytech-pr/User-Guide.git"
    }
    "2" = @{
        Name = "maggiec87"
        Email = "maggiec_87@outlook.com"
        RepoURL = "https://github.com/maggiec87/search_my_word.git"
    }
}

# -----------------------------
# Step 0: 检查是否在 Git 仓库
# -----------------------------
$gitCheck = git rev-parse --is-inside-work-tree 2>$null
if ($gitCheck -ne "true") {
    Write-Host "❌ 当前目录不是 Git 仓库，请进入仓库目录后运行此脚本"
    exit
}

# -----------------------------
# Step 1: 选择账号
# -----------------------------
Write-Host "请选择 GitHub 账号:"
foreach ($key in $accounts.Keys) {
    Write-Host "$key. $($accounts[$key].Name)"
}
$choice = Read-Host "输入数字选择账号"

if (-not $accounts.ContainsKey($choice)) {
    Write-Host "❌ 输入无效，退出脚本"
    exit
}

$selected = $accounts[$choice]
Write-Host "✅ 已选择账号：$($selected.Name) / $($selected.Email)"

# -----------------------------
# Step 2: 更新 Git 用户信息
# -----------------------------
git config user.name $selected.Name
git config user.email $selected.Email
Write-Host "✅ Git 用户信息已更新"

# -----------------------------
# Step 3: 清理旧 GitHub 凭证
# -----------------------------
cmdkey /list | ForEach-Object {
    if ($_ -match "git:https://github.com") {
        $target = ($_ -split ":")[1].Trim()
        cmdkey /delete:$target
        Write-Host "✅ 已删除旧凭证：$target"
    }
}

# -----------------------------
# Step 4: 更新远程 URL
# -----------------------------
git remote set-url origin $selected.RepoURL
Write-Host "✅ 当前仓库远程 URL 已更新为：$($selected.RepoURL)"

# -----------------------------
# Step 5: 自动 commit & push
# -----------------------------
# 检查是否有改动
$changes = git status --porcelain
if ($changes) {
    Write-Host "📌 检测到文件改动，自动添加并提交"
    git add .
    $commitMessage = Read-Host "请输入 commit 信息"
    git commit -m "$commitMessage"
} else {
    Write-Host "📌 没有文件改动，无需 commit"
}

# 执行 push
Write-Host "📤 开始 push 到 GitHub..."
git push origin main
Write-Host "✅ Push 完成！请在提示时输入对应账号的 PAT（Personal Access Token）"

