#!/bin/zsh

git add .
echo "コミットメッセージを入力"
read commit
git commit -m "$commit"
echo "githubのブランチを入力"
read branch
git push origin $branch

gatsby build
cp -f -r ./public ../note/public

cd ../note
git add .
git commit -m "$commit"
echo "研究室のブランチを入力"
read branch
git push origin $branch
cd ../hello-world

