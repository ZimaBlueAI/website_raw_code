# hugo new site website
# cd website/
# hugo mod init example.com/my-hinode-site
# echo "[[module.imports]]\npath = 'github.com/gethinode/hinode'" >> hugo.toml
# hugo server

## 安装hexo
npm install -g hexo-cli

## 初始化一个名为blog的hexo项目
hexo init website

## 安装所需组件
cd website
npm install

## 安装theme
git clone https://github.com/klugjo/hexo-theme-alpha-dust themes/alpha-dust
vi _config.yml
# theme: alpha-dust

## 清除已经生成的public中内容
hexo clean

## 生成页面
hexo g

## 启动预览
hexo s

## 部署hexo到github page
npm install hexo-deployer-git --save
vi _config.yml
# deploy:
#   type: git
#   repository: git@github.com:用户名/用户名.github.io.git
#   branch: master

## 编辑页面
# 在themes/alpha-dust/source/img中增加图片
# 编辑 themes/alpha-dust/layout/_partial/header.ejs修改首页header样式
# 编辑 themes/alpha-dust/source/css/_partial/header.styl 修改logo图的border-radius
# 增加首页
hexo new page "about"
vi themes/alpha-dust/_config.yml
# # Header
# menu:
#   Home: /
#   Archives: /archives
#   About: /about
vi source/about/index.md
# 增加about界面行间距
vi themes/alpha-dust/source/css/_partial/post-layout.styl
# 修改menu为中文
vi themes/alpha-dust/_config.yml
# 增加文章
hexo new "Machine vision recognition of vehicles"

## 发布
hexo d
## 将原始代码提交到https://github.com/ZimaBlueAI/website_raw_code

## 解决无法访问的问题，参考https://blog.csdn.net/qq_40157728/article/details/114327987

---------
## 增加文章
hexo new "Machine vision in ecological protection"
hexo new "Machine vision in agriculture"

