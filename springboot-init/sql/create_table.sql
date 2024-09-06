create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userAccount  varchar(256)                           not null,
    userPassword varchar(512)                           not null,
    userName     varchar(256)                           null,
    userAvatar   varchar(1024)                          null,
    userProfile  varchar(512)                           null,
    userRole     varchar(256) default 'user'            not null,
    createTime   datetime     default CURRENT_TIMESTAMP not null,
    updateTime   datetime     default CURRENT_TIMESTAMP not null,
    isDelete     tinyint      default 0                 not null
);

create table if not exists stress_test
(
    id                          integer primary key autoincrement,              -- id
    biz_id                      varchar(30),                                    -- biz id
    biz_title                   varchar(30),                                    -- biz title
    serv_id                     varchar(30),                                    -- 服务id
    proc_id                     varchar(30),                                    -- 进程id
    host_ip                     varchar(30),                                    -- 主机ip
    stress_test_time            varchar(30),                                    -- 压测时间
    cg_request_count            varchar(30),                                    -- CG请求处理总量
    cg_request_ok_count         varchar(30),                                    -- CG请求处理成功量
    cg_request_to_tp_fail_count varchar(30),                                    -- CG发往TP失败消息量
    cg_request_fail_count       varchar(30),                                    -- CG发往TP失败消息量
    cg_response_count           varchar(30),                                    -- CG应答处理总量
    cg_response_ok_count        varchar(30),                                    -- CG正常应答消息量
    cg_response_direct_count    varchar(30),                                    -- CG代应答消息量CG代应答消息量
    cg_response_timeout_count   varchar(30),                                    -- CG超时应答消息量
    cg_recv_rg_count            varchar(30),                                    -- CG收到的RG数
    cg_send_rg_count            varchar(30),                                    -- 发给反算的RG数
    cg_zero_rg_count            varchar(30),                                    -- CG收到零流量RG数
    cg_signal_rg_count          varchar(30),                                    -- CG收到信令RG数
    cg_request_recv_cost        varchar(30),                                    -- CG读取请求耗时
    cg_request_pop_cost         varchar(30),                                    -- CG出请求消息队列耗时
    cg_request_process_cost     varchar(30),                                    -- CG请求消息处理总耗时
    cg_request_decode_cost      varchar(30),                                    -- CG应答消息解码处理耗时
    cg_request_forward_cost     varchar(30),                                    -- CG请求消息会话管理处理耗时
    cg_response_pop_cost        varchar(30),                                    -- CG出应答消息队列耗时
    cg_response_process_cost    varchar(30),                                    -- CG应答消息处理总耗时
    cg_response_reverse_cost    varchar(30),                                    -- CG应答消息会话管理处理耗时
    cg_response_encode_cost     varchar(30),                                    -- CG应答消息编码处理耗时
    cg_response_msg_pop_cost    varchar(30),                                    -- CG出TP回复后消息队列耗时
    cg_writefile_cost           varchar(30),                                    -- CG罗文件处理耗时
    cg_cost                     varchar(30),                                    -- CG处理单条消息总耗时
    tp_cost                     varchar(30),                                    -- TP处理单挑消息总耗时
    cg_insock_cost              varchar(30),                                    -- CG落insock日志耗时
    cg_offline_forward_cost     varchar(30),                                    -- CG处理离线话单进行流量累加耗时
    create_time                 datetime default (datetime('now', 'localtime')) -- 创建时间
);