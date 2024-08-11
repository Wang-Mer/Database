# 内网穿透

## NPS 安装

> NPS 安装在有公网的环境中 给NPC进行内网穿透

### 项目地址

```
https://github.com/ehang-io/nps/releases
```

### 1.下载

``` shell
wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_server.tar.gz
```

### 2.安装NPS

```shell
./nps install  
# 运行这个 NPS 就是全局可以运行的了 然后配置全部在 "/etc/nps"
```

### 3.编辑配置文件

``` shell
nano|vi|vim   /etc/nps/conf/nps.conf 
```

> 重点：配置文件中的auth_key字段，一定要解除注释并且更改数值，不然有被黑风险。
> [漏洞说明](https://mp.weixin.qq.com/s/PTq01wcV4XJwutbSjHjfvA)

配置结束以后，使用以下命令启动NPS服务

### 4.启动nps

```shell
nps start 
```



