.class public Lcom/ifengyu/im/imservice/manager/IMSocketManager;
.super Lcom/ifengyu/im/imservice/manager/IMManager;
.source "IMSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/imservice/manager/IMSocketManager$Holder;
    }
.end annotation


# instance fields
.field private currentMsgAddress:Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;

.field private listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

.field private logger:Lcom/ifengyu/im/utils/Logger;

.field private msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

.field private socketStatus:Lcom/ifengyu/im/imservice/event/SocketEvent;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMManager;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    invoke-static {}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->instance()Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->NONE:Lcom/ifengyu/im/imservice/event/SocketEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->socketStatus:Lcom/ifengyu/im/imservice/event/SocketEvent;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#creating IMSocketManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)Lcom/ifengyu/im/utils/Logger;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/im/imservice/manager/IMSocketManager;Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->connectMsgServer(Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V

    return-void
.end method

.method private connectMsgServer(Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V
    .locals 7

    const/4 v5, 0x0

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECTING_MSG_SERVER:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->currentMsgAddress:Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;->getAs_info_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->getPriorIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity$AsInfoListBean;->getPort()I

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "login#connectMsgServer -> (%s:%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/network/SocketThread;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    :cond_0
    new-instance v2, Lcom/ifengyu/im/imservice/network/SocketThread;

    new-instance v3, Lcom/ifengyu/im/imservice/network/MsgServerHandler;

    invoke-direct {v3}, Lcom/ifengyu/im/imservice/network/MsgServerHandler;-><init>()V

    invoke-direct {v2, v1, v0, v3}, Lcom/ifengyu/im/imservice/network/SocketThread;-><init>(Ljava/lang/String;ILorg/jboss/netty/channel/SimpleChannelHandler;)V

    iput-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/network/SocketThread;->start()V

    return-void
.end method

.method public static instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager$Holder;->access$100()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disconnectMsgServer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->onDestory()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#disconnectMsgServer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/network/SocketThread;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#do real disconnectMsgServer ok"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public doOnStart()V
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->NONE:Lcom/ifengyu/im/imservice/event/SocketEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->socketStatus:Lcom/ifengyu/im/imservice/event/SocketEvent;

    return-void
.end method

.method public getSocketStatus()Lcom/ifengyu/im/imservice/event/SocketEvent;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->socketStatus:Lcom/ifengyu/im/imservice/event/SocketEvent;

    return-object v0
.end method

.method public isSocketConnect()Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/network/SocketThread;->isClose()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConnectMsgServerFail()V
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    return-void
.end method

.method public onMsgServerConnected()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#onMsgServerConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->onStart()V

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->reqLoginMsgServer()V

    return-void
.end method

.method public onMsgServerDisconn()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "login#onMsgServerDisconn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->disconnectMsgServer()V

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->MSG_SERVER_DISCONNECTED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    return-void
.end method

.method public packetDispatch(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    invoke-direct {v0, p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    new-instance v1, Lcom/ifengyu/im/protobuf/base/Header;

    invoke-direct {v1}, Lcom/ifengyu/im/protobuf/base/Header;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/protobuf/base/Header;->decode(Lcom/ifengyu/im/protobuf/base/DataBuffer;)V

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/base/Header;->getCommandId()S

    move-result v2

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/base/Header;->getServiceId()S

    move-result v3

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/base/Header;->getSeqnum()S

    move-result v1

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v5, "dispatch packet, serviceId:%d, commandId:%d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->getOrignalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-static {v4}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    iget-object v4, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-virtual {v4, v1}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->pop(I)Lcom/ifengyu/im/imservice/callback/Packetlistener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "packet#unhandled serviceId:%d, commandId:%d"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v2, v0}, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->loginPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2, v0}, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->buddyPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v2, v0}, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->msgPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v2, v0}, Lcom/ifengyu/im/imservice/manager/IMPacketDispatcher;->groupPacketDispatcher(ILcom/google/protobuf/CodedInputStream;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reconnectMsg()V
    .locals 2

    const-class v1, Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->currentMsgAddress:Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->currentMsgAddress:Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;

    invoke-direct {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->connectMsgServer(Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->disconnectMsgServer()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->instance()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->relogin()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reqMsgServerAddrs()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "socket#reqMsgServerAddrs."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/network/http/IMRetrofitClient;->getServiceApi()Lcom/ifengyu/im/imservice/network/http/IMServiceApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/im/imservice/network/http/IMServiceApi;->getMsgServerAddrs()Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/e/a;->b()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lio/reactivex/a/b/a;->a()Lio/reactivex/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/r;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;-><init>(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)V

    new-instance v2, Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager$2;-><init>(Lcom/ifengyu/im/imservice/manager/IMSocketManager;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/b/f;Lio/reactivex/b/f;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->disconnectMsgServer()V

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->NONE:Lcom/ifengyu/im/imservice/event/SocketEvent;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->socketStatus:Lcom/ifengyu/im/imservice/event/SocketEvent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->currentMsgAddress:Lcom/ifengyu/im/imservice/network/http/entity/MsgServerAddrsEntity;

    return-void
.end method

.method public sendRequest(Lcom/google/protobuf/GeneratedMessageLite;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    return-void
.end method

.method public sendRequest(Lcom/google/protobuf/GeneratedMessageLite;IILcom/ifengyu/im/imservice/callback/Packetlistener;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/ifengyu/im/protobuf/base/DefaultHeader;

    invoke-direct {v2, p2, p3}, Lcom/ifengyu/im/protobuf/base/DefaultHeader;-><init>(II)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/protobuf/base/Header;->setLength(I)V

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/base/Header;->getSeqnum()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-virtual {v3, v0, p4}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->push(ILcom/ifengyu/im/imservice/callback/Packetlistener;)V

    iget-object v3, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->msgServerThread:Lcom/ifengyu/im/imservice/network/SocketThread;

    invoke-virtual {v3, p1, v2}, Lcom/ifengyu/im/imservice/network/SocketThread;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Lcom/ifengyu/im/protobuf/base/Header;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/ifengyu/im/imservice/callback/Packetlistener;->onFaild()V

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->listenerQueue:Lcom/ifengyu/im/imservice/callback/ListenerQueue;

    invoke-virtual {v2, v0}, Lcom/ifengyu/im/imservice/callback/ListenerQueue;->pop(I)Lcom/ifengyu/im/imservice/callback/Packetlistener;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "#sendRequest#channel is close!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public setSocketStatus(Lcom/ifengyu/im/imservice/event/SocketEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->socketStatus:Lcom/ifengyu/im/imservice/event/SocketEvent;

    return-void
.end method

.method public triggerEvent(Lcom/ifengyu/im/imservice/event/SocketEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->setSocketStatus(Lcom/ifengyu/im/imservice/event/SocketEvent;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->g(Ljava/lang/Object;)V

    return-void
.end method
