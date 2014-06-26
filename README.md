phonebook
=========
下载项目文件

`git@github.com:fermin/phonebook.git`

指定需要使用的ruby版本

`rvm use ruby-1.9.3-p448`

为了不与现有项目的gem冲突，创建一个新的gemset（gemset是rvm的一个功能，可以实现不同项目使用不同的ruby、rails版本，如果没有安装rvm可以跳过此步骤）

`rvm gemset create phonebook`

`rvm gemset use phonebook`

新建的gemset需要安装bundle管理项目的gem

`gem install bundler`

执行`bundle install`

如果网络环境不好可以打开Gemfile文件把gem源切换为国内的源

本项目使用mysql数据库，运行前请将`config/database.yml`中的password改成运行机器的mysql的password，然后运行下面的语句创建本项目的数据库

`rake db:create`

然后执行下边的语句创建表

`rake db:migrate`
