rem 创建demo用脚本

echo off

rem ==%i%
rem %1%第一个参数为项目目录

Set objdir=%1%

mkdir %objdir%
cd %objdir%

rem 创建静态资源目录结构
mkdir public
cd public
mkdir images
mkdir javascripts
mkdir stylesheets
mkdir vendor
cd ..

mkdir routes
mkdir lib
mkdir less
mkdir models
mkdir viewModels
mkdir handlers
mkdir controllers

rem views
mkdir views
cd views
mkdir layouts
cd layouts
echo > main.hbs
cd ..
mkdir errors
mkdir partials
cd..

rem 创建.gitignore文件 忽略不需要进行版本控制的文件
echo node_modules >> .gitignore
echo *~ >> .gitignore
echo .DS_Store >> .gitignore

rem 主入口文件
echo > index.js

rem 创建bowerrc
echo { >> .bowerrc
echo "directory":"public/vendor" >> .bowerrc
echo } >> .bowerrc

rem 返回到项目 根目录
echo " exe git init Create repository "
git init
npm init
echo " exe bower init bower dependencies "
cd ..
@echo on
echo > Gruntfile.js
echo > README.md