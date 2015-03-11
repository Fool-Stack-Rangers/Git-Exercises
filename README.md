# Git-Exercises


## Setup this Exercises
### Method 1
```sh
git clone https://github.com/Fool-Stack-Rangers/Git-Exercises
```
### Method 2
```sh
mkdir Git-test
cd Git-test
git init
git remote add origin https://github.com/Fool-Stack-Rangers/Git-Exercises.git
git pull origin master
```

## Try this exercise

```sh
# 在分支內修改你的檔案
git branch <your_branch> #開你的分支
git checkout <your_branch> #切換到你的分支
vim test.html #修改你的profile
git add .
git commit
git push -u origin <your_branch> #推到你的分支
```


```sh
# 合拼分支到 master
git checkout master
git merge <your_branch> --no-ff
git push -u origin master #推到master
```

## Tips
顯示所在分支
```sh
git status
```

列出分支
```sh
git branch     #本地分支
git branch -r  #遠端分支
git branch -a  #所有分支
```

建立分支
```sh
git branch <branch name>
```

切換分支
```sh
git checkout <branch name>
```

刪除分支
```sh
git branch -d <branch name>
```

更名分支
```sh
git checkout master
git branch -m <old> <new>
```

合拼分支
```sh
# 合拼分支到 master
git checkout master
git merge <your_branch>   #若要不使用 Fast-forward 的合拼 後面請加註 --no-ff

#發生衝突．放棄合拼
git reset --hard
git push -uf origin master  #要加 -f 強制推上去
```

合拼衝突處理
```sh
git mergetool
git commit
```
## 暫存處理 Stashing
Stash 指令用在當你正在測試或是工作到一半，但是還不到 commit 的階段，這時就可以使用 stash 指令

```sh
git stash save   # 將目前的專案或是程式碼進行暫存，執行指令之後，會回到最近的一個 commit 

git stash apply  # 將上次暫存的結果叫出來

git stash list   # 列出所有的暫存結果，列出的結果類似 commit

git stash clear  # 清除所有的暫存結果
```