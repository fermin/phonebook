Phonebook
=========
本项目是一个公司通讯录程序，可以管理公司的组织结构和员工的通讯录信息

安装运行
---------
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

本项目使用mysql数据库，运行前请将`config/database.yml`中的信息改成运行机器的数据库信息，并创建数据库，然后运行下面的语句创建表

`rake db:migrate`

API接口
--------
本项目提供API接口查询数据，具体文档信息请查看项目根目录下的`api.md`文件

测试
---------
项目有两种测试方法，使用的工具有Rspec和Cucumber

Rspec：在项目根目录运行下边的命令

`rspec`

Cucumber：在项目根目录运行

`cucumber features`

