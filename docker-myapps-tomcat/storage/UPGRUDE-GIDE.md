# 从5.1升级到5.2

myApps5.2版本使用了全新的iScript引擎，支持ES6语法，和5.1及以前版本存在差异需要手工修复。



## 1、引用Java类型

从 Packages.xxx.ClassName  改为 (Java.type('xxx.ClassName'))

如：

```
var time = Packages.java.lang.System.currentTimeMillis();

改为

var time = (Java.type('java.lang.System')).currentTimeMillis();
```



## 2、字符串比较

从 equals 改为 ==

```
var a = "1";
if ("1".equals(a)){...}

改为

var a = "1";
if ("1" == a) {...}
```



## 3、字符串长度

从 "abc".length() 改为 "abc".length

```
var str = "abc";
if (str.length() > 0) {...}

改为

if (str.length > 0) {...}
```



# 手动修改方法

可以通过文本全局替换，快速完成升级过程。过程如下：

## 1、修复引用Java类型

搜索 Packages. 关键词，找出所有Java引用类型，并统一替换。如：

```
Packages.java.util.File  ==>  (Java.type('java.util.File'))
Packages.java.lang.String  ==>  Java.type("java.lang.String")

......
```

一个项目中，虽然用到比较多的Java类型引用，但总类型并不会很多，因此所以可以快速完成。



## 2、修复字符串比较

查找 .equals 关键词，并统一替换为 ==。如：

```
if ("1".euqals(a)) {...}

替换为

if ("1"==(a)) {...}
```



## 3、修复字符串长度

查找 .length() ，并统一替换为 length 

```
if (str.length() > 0) {...}

替换为

if (str.length > 0) {...}
```

# 升级程序完成升级

源码运行：obpm-upgrade中

```
cn.myapps.run.UpgradeWordspaceTo52

```
运行后，如还有问题，继续通过手工修复剩余问题。





# 必须手工修复

（1）!abc.equals("1") 升级替换完成后为  !abc==("1")  需要手工替换为： abc!=("1")  可以通过查找 【==(】后手工替换