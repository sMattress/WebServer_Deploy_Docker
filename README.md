# Web服务器Docker构建文件及相关资源。

## build-resources

构建时需要的资源：

- certificate.crt: SSL证书
- private.key: SSL证书
- java.security: 修改过后的jre安全策略，用于修复因为系统熵导致的Tomcat启动慢的问题
- server.xml: 修改过后的Tomcat服务器配置文件

## webapp

用于存放服务器代码，需要添加***编译后！编译后！编译后！重要的事情说三遍！***的工程文件或war包。

## Dockerfile

用于在`Docker阿里云镜像`构建Docker镜像。
