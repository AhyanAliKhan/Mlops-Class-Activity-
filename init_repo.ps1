param(
    [string]$gitName = "Your Name",
    [string]$gitEmail = "khanahyan48@gmail.com",
    [string]$remote = ""
)

git init
git branch -M main
git config user.email $gitEmail
git config user.name $gitName
git add .
git commit -m "Initial commit"

if ($remote -ne "") {
    git remote add origin $remote
    git push -u origin main
} else {
    Write-Host "No remote provided. To add a remote later: git remote add origin <url>"
}
