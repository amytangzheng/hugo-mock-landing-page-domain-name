@echo off
set GITHUB_USER=amytangzheng
set REPO_NAME=hugo-mock-landing-page

REM Generate Hugo build
hugo

REM Navigate to public directory
cd public

REM Initialize git repository
git init
git add .
git commit -m "Publishing to gh-pages"

REM Add remote and push
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
git push -f origin master:gh-pages

REM Clean up
cd ..
rmdir /s /q public