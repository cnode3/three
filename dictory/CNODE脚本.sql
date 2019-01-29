create table User    -- 用户表
(
   ID                   int primary key auto_increment,   -- yonghuID
   UserName             varchar(20)                    null,  -- 用户姓名
   DataID               int                            null,   -- 头像
   ProID                int                            null,  -- 所在省
   CityID               int                            null-- 所在市
);
create table Active  -- 动态表
(
   ID                   int primary key auto_increment,   -- 动态IF
   Title                varchar(50)                    null,  -- 标题
   Content              varchar(5000)                  null,  -- 内容
   TypeID               int                            null,    -- 类别ID
   BrowserNum           int                            null, -- 浏览量
   GoodNum              int                            null,  -- 点赞量
   PublishDate          datetime                       null,  -- 发布日期
   PublisherID          int                            null    -- 发布人
);
create table ClickGood  -- 用户评论点赞关系表
(
   ClickID              int  primary key auto_increment,  -- 点赞人
   TargetID             int                            null  -- 点赞动态 
);

create table Comment  -- 评论表
(
   ID                   int primary key auto_increment,   -- 评论ID
   Content              varchar(1000)                  null,  -- 评论内容
   GoodNum              int                            null,   -- 获赞量
   ComerID              int                            null,   -- 评论人 
   ActiveID             int                            null,   -- 所说动态
   CommentDate          datetime                       null   -- 评论时间
);

create table ClickGood2   -- 点赞评论关系表
(
   ClickID              int primary key auto_increment,   -- 点赞人
   TargetID             int                            null   -- 点赞评论
);
create table Type  -- 类别表
(
   ID                   int primary key auto_increment,   -- 类别ID
   TypeName             varchar(20)                    null   -- 类别名称
);
create table DataResource   -- 资料表
( 
   ID                   int primary key auto_increment,   -- 资料表
   ImgUrl               varchar(200)                   null  -- 图片路径 
);
create table Province   -- 省表
(
   ID                   int primary key auto_increment,  -- 省ID 
   ProvinceName         varchar(20)                    null   -- 省名称
);
create table City  -- 城市表
(
   ID                   int  primary key auto_increment,  -- 城市ID
   CityName             varchar(20)                    null   -- 城市名称
);

