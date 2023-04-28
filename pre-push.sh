#!/bin/bash

echo -e "===\n>> Talenavi Pre-push Hook: Checking branch name / Mengecek nama branch..."

BRANCH=`git rev-parse --abbrev-ref HEAD`
PROTECTED_BRANCHES="^(master|develop)"

if [[ $1 != *"$BRANCH"* ]]
then
  echo -e "\n🚫 You must use (git push origin $BRANCH) / Anda harus menggunakan (git push origin $BRANCH).\n" && exit 1
fi

if [[ "$BRANCH" =~ $PROTECTED_BRANCHES ]]
then
  echo -e "\n🚫 Cannot push to remote $BRANCH branch, please create your own branch and use PR."
  echo -e "🚫 Tidak bisa push ke remote branch $BRANCH, silahkan buat branch kamu sendiri dan gunakan pull request.\n" && exit 1
fi

echo -e ">> Finish checking branch name / Selesai mengecek nama branch.\n==="

exit 0
