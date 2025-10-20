# === VisaDexGrasp Website Auto Update ===
Write-Host "========================================"
Write-Host "VisaDexGrasp Website Auto Update Script" -ForegroundColor Cyan
Write-Host "========================================`n"

# 1️⃣ 切换到项目目录（修改为你的实际路径）
cd "D:\papers\vf_mano\website\VisaDexGrasp"

# 2️⃣ 检查当前 Git 状态
Write-Host "[1/4] Checking Git status..." -ForegroundColor Yellow
git status

# 3️⃣ 添加所有变更
Write-Host "`n[2/4] Adding changes to staging area..." -ForegroundColor Yellow
git add .

# 4️⃣ 提交说明
$commitMsg = Read-Host "`nEnter commit message (default: update)"
if ([string]::IsNullOrWhiteSpace($commitMsg)) { $commitMsg = "update" }

Write-Host "`n[3/4] Committing changes..." -ForegroundColor Yellow
git commit -m $commitMsg

# 5️⃣ 推送
Write-Host "`n[4/4] Pushing to GitHub..." -ForegroundColor Cyan
git push

Write-Host "`n✅ Update complete! GitHub Actions has started automatic deployment. Please wait 1–3 minutes, then refresh your webpage." -ForegroundColor Green
