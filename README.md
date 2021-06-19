## Performance Test Plan 性能测试计划

### Install Software 安装软件

> wget https://mirror.cogentco.com/pub/apache//jmeter/binaries/apache-jmeter-5.4.1.tgz  
tar -zxvf apache-jmeter-5.4.1.tgz -C /opt

Add bin directory to PATH  
把执行目录加入 PATH
```
export PATH="$PATH:/opt/apache-jmeter-5.4.1/bin"
```

### Config Variable 设置变量
Add the following variable to environment, and change the specific value  
将以下变量加入环境，并更改特定值
```
export LOCAL_HOST=127.0.0.1
export LOCAL_PORT=80
export LOCAL_USERNAME=USERNAME
export LOCAL_PASSWORD=PASSWORD
export TESTING_HOST=192.168.1.10
export TESTING_PORT=80
export TESTING_USERNAME=USERNAME
export TESTING_PASSWORD=PASSWORD
export PRODUCT_HOST=192.168.1.100
export PRODUCT_PORT=80
export PRODUCT_USERNAME=USERNAME
export PRODUCT_PASSWORD=PASSWORD
```

### Adjust Plan 调整计划

> jmeter

Click `Open` in the drop down box of menu `File`, Select `test.jmx`, and adjust as needed  
点击菜单 File 的下拉框中的 Open，选择 test.jmx，并根据需要调整

### Run Plan 运行计划

#### Local Environment 本地环境
> ./test.sh  

#### Testing Environment 测试环境
> ./test.sh testing  

#### Product Environment 正式环境
> ./test.sh product  