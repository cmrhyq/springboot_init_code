# 数据库初始化

-- 创建库
# create database if not exists my_db;
#
# -- 切换库
# use my_db;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    user_account  varchar(256)                           not null comment '账号',
    user_password varchar(512)                           not null comment '密码',
    phone         varchar(20)                            null   comment '手机号',
    email         varchar(50)                            null   comment '邮箱',
    union_id      varchar(256)                           null comment '微信开放平台id',
    mp_open_id     varchar(256)                           null comment '公众号openId',
    username     varchar(256)                           null comment '用户昵称',
    user_avatar   varchar(1024)                          null comment '用户头像',
    user_profile  varchar(512)                           null comment '用户简介',
    user_gender   tinyint      default 0                 not null comment '0=男，1=女',
    user_role     varchar(256) default 'user'            not null comment '用户角色：user/admin/ban',
    create_time   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_delete     tinyint      default 0                 not null comment '是否删除',
    index idx_unionId (union_id)
) comment '用户' collate = utf8mb4_unicode_ci;
