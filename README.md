# kodocker

可道云(kodcloud)的kodbox 服务器端的一键部署脚本（需要docker-compose）



## 注意事项

- 第一次使用请不要直接运行`docker-compose` ↓看看如何使用栏↓

- 由于在国内对docker站点的访问速度不佳，请切换docker的镜像源

- 在安装php容器的过程中会标红几次，暂时没有修复方法，如果有解决思路可以提出issue。经过测试不会影响使用，安装的拓展可以正常使用。

- 请自行安装docker-compose（[docker/compose: Define and run multi-container applications with Docker (github.com)](https://github.com/docker/compose)
  ）

- 如果想要修改运行容器的用户和用户组请修改.env文件

- 由于docker的启动只能使用用户(组)id启动，可能需要查询你的用户id(位于/etc/passwd文件中的UID/GID)

- 如果想要修改mysql连接密码请修改.env文件

- 如果安装失败可以再试一次？

  

  ## 如何使用

  克隆本仓库
  
  `git clone https://github.com/dangjinghao/kodocker.git`
  
  进入`kodocker`目录
  
  `cd ./kodocker`
  
  增加可执行权限
  
  `chmod 755 init.sh`
  
  执行脚本
  
  `bash init.sh`
  
  等待安装完成与服务启动。
  
  之后可以只使用`docker-compose up -d`的方式启动
  
  
  
  ## 脚本问题
  
  在构建容器时会出现几次问题
  
  1. `⠿ kod-php Error`  这是构建php镜像时候会出现的错误
  2.  `strip --strip-all modules/mysqli.so`安装mysqli拓展时
  2.  `debconf: delaying package configuration, since apt-utils is not installed`
  2.  `strip --strip-allmodules/gd.so`安装gd拓展时

~~由于我本身实力不足，暂时没能解决~~


## 后续功能

 - [ ] 实现在运行init脚本时修改环境参数

 - [ ] 自动查询运行的用户与组的id

 - [ ] 修复脚本问题

 - [ ] 根据官网的环境配置说明[配置优化 - 可道云KODBOX-OpenAPI及开发文档_企业网盘_企业云盘_网盘_云盘 (kodcloud.com)](http://doc.kodcloud.com/v2/#/help/options)，直接部署推荐的文件配置。

   
