#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 如果是发布到自定义域名
echo 'calc.Hcat.work' > CNAME

git init
git add -A

git commit -m 'deploy'

# 发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:AdminHcat/calc.git master:gh-pages

cd -