.class public Lcom/ifengyu/im/imservice/network/MsgServerHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "MsgServerHandler.java"


# instance fields
.field private logger:Lcom/ifengyu/im/utils/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-class v0, Lcom/ifengyu/im/imservice/network/MsgServerHandler;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/MsgServerHandler;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method


# virtual methods
.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/MsgServerHandler;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "channel#channelConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onMsgServerConnected()V

    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/MsgServerHandler;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "channel#channelDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onMsgServerDisconn()V

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->instance()Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMHeartBeatManager;->onMsgServerDisconn()V

    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->onConnectMsgServerFail()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/MsgServerHandler;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "channel#[\u7f51\u7edc\u5f02\u5e38\u4e86]exceptionCaught:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/MsgServerHandler;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "channel#messageReceived"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->instance()Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;->packetDispatch(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :cond_0
    return-void
.end method
