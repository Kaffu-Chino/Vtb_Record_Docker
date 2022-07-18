# Vtb_Record_Docker

[Vtb_Record](https://github.com/AlotOfBlahaj/Vtb_Record) runing in Docker

## 部署方法

* 1、复制或修改Dockerfile，根据文档创建新仓库上传配置文件`config.json`
* 2、创建镜像`docker image build ./ -t record_bili:v1.1`等待完成
* 3、运行镜像并挂载外部目录（例如将`/mnt/user/movie`挂载为`vtb_record/outdir`则运行
`docker run -d -v /mnt/user/movie:/vtb_recoed/outdir record_bili:v1.1`）
