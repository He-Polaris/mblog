### praise开源主题 （支持响应式）

### 插件
* swiper 轮播图
* wow 动画
* animate 动画
* pace 加载条

### 程序：
* Mblog 开源Java博客系统

* gitee：https://gitee.com/mtons/mblog

* github:https://github.com/langhsu/mblog

### 配置：
 ```xml
 配置：src/main/resources/application.yml
 图片配置（需配一个即可，看个人上传比例）
 图片：thumbnail_post_size: 360x300 （最佳）
 或
 图片：thumbnail_post_size: 1920x1080 （等比例）
 ```

### 模板安装：
 * 上传模式：[praise模板下载](https://gitee.com/cuiweiboy/praise/attach_files/235658/download) 
 * 下载好模板，在后台可以直接上传
 * 模板上传后路径 在：storage/templates 可找到！
 * 注：图片路径/模板/都在storage下 切记备份数据和（storage下的图片）
![模板图](https://images.gitee.com/uploads/images/2019/0510/145422_b757f4c8_1758849.png "模板结构")



### 开发模式：
 * 如何是开发模式，下载[master](https://gitee.com/cuiweiboy/youth.git)分支，将分支拷贝到项目下的mblog-master\src\main\resources\templates 进行模板调试 [模板修改后，数据库表“mto_options” 修改theme 名字和模板统一]
![模板图](https://images.gitee.com/uploads/images/2019/0510/150137_44baf5bc_1758849.png "")



### 特别注意事项：

 * 在master下载的模板属于开发包，虽然上传成功，但是还是找不到模板，是因为，下载的包，文件名不对而已，只要把程序包名对上就可以了
 * 或是将master下载好的压缩包，解压出来，然后在模板中重新压缩成zip，上传也可以
 
图![压缩](https://images.gitee.com/uploads/images/2019/0510/143900_6c14a9cd_1758849.png "")


 * 非常建议将模板放到开发模式下调试，这样多模板可以互相切换，进行打包或是维护也很方便,也无需上传上面，将master解压后的文件夹，直接放到mblog-master\src\main\resources\templates 下

### 图片演示

右侧评论可根据屏幕滚动，不用担心文章显示过多导致不美观

![图片演示](https://images.gitee.com/uploads/images/2019/0511/142928_0c008673_1758849.jpeg "2019-05-11_133636.jpg")
