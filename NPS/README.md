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

## NPC 安装

> NPC 安装在内网的环境中 通过NPS进行内网穿透

### 1.下载NPC

``` shell
wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_client.tar.gz
tar -zxvf linux_amd64_client.tar.gz
```

### 2.在NPS配置客户端

![添加客户端](images/232713551240317.png)
![设置客户端](images/70806353356973.png)
![获取客户端连接方式](images/383345966920329.png)

```shell
#如果只是单次使用，比如这个客户端只是用一次，那么就执行：
./npc -server=192.168.58.105:8024 -vkey=lyxp4jlp2fhego8g -type=tcp
#如果是需要直接安装，后续需要客户端开关机都能保持在线，需要添加install参数：
./npc install -server=192.168.58.105:8024 -vkey=lyxp4jlp2fhego8g -type=tcp
```