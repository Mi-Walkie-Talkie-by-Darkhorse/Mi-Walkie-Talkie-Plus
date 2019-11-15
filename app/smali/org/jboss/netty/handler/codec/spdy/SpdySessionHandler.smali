.class public Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "SpdySessionHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$5;,
        Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_WINDOW_SIZE:I = 0x10000

.field private static final PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;


# instance fields
.field private volatile closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field private final flowControl:Z

.field private final flowControlLock:Ljava/lang/Object;

.field private volatile initialReceiveWindowSize:I

.field private volatile initialSendWindowSize:I

.field private volatile lastGoodStreamID:I

.field private volatile localConcurrentStreams:I

.field private volatile maxConcurrentStreams:I

.field private final pings:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile receivedGoAwayFrame:Z

.field private volatile remoteConcurrentStreams:I

.field private volatile sentGoAwayFrame:Z

.field private final server:Z

.field private final spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/high16 v2, 0x10000

    const/4 v1, 0x3

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControlLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    if-lt p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;-><init>(IZ)V

    return-void
.end method

.method private declared-synchronized acceptStream(IBZZ)Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->receivedGoAwayFrame:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->numActiveStreams()I

    move-result v2

    if-ge v2, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->acceptStream(IBZZII)V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    return-void
.end method

.method private halfCloseStream(IZ)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->closeRemoteSide(I)V

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->closeLocalSide(I)V

    goto :goto_0
.end method

.method private isRemoteInitiatedID(I)Z
    .locals 2

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v0

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->server:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private issueSessionError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-void
.end method

.method private issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    invoke-direct {v1, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {p1, v2, v1, p2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    if-eqz v0, :cond_0

    invoke-static {p1, v1, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeStream(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->removeStream(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I

    invoke-direct {v1, v0, p4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-static {p1, v0, v1, p3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->noActiveStreams()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->closeSessionFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0
.end method

.method private updateConcurrentStreams(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    :goto_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    :goto_1
    return-void

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->remoteConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->localConcurrentStreams:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->maxConcurrentStreams:I

    goto :goto_1
.end method

.method private declared-synchronized updateInitialReceiveWindowSize(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    sub-int v0, p1, v0

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateAllReceiveWindowSizes(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateInitialSendWindowSize(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    sub-int v1, p1, v0

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialSendWindowSize:I

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getActiveStreams()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private updateSendWindowSize(Lorg/jboss/netty/channel/ChannelHandlerContext;II)V
    .locals 8

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControlLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getPendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    if-lt v1, v5, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->removePendingWrite(I)Lorg/jboss/netty/channel/MessageEvent;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, p2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    move-result v1

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v7, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;

    invoke-direct {v7, p0, p1, v5, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v6, v7}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    :cond_2
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {p1, v5, v0, v4}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, p2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    new-instance v5, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v5, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$4;

    invoke-direct {v6, p0, p1, v1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$4;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v4, v6}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-static {p1, v0, v5, v1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;->exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V

    return-void
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v6, 0x0

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$5;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sendGoAwayFrame(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControlLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v5, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v5

    if-lt v5, v4, :cond_6

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v5, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$1;

    invoke-direct {v5, p0, p1, v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$1;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v0, v5}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    :cond_5
    :goto_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_6
    if-lez v5, :cond_7

    :try_start_1
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    mul-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateSendWindowSize(II)I

    new-instance v4, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v4, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->putPendingWrite(ILorg/jboss/netty/channel/MessageEvent;)Z

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v6, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$2;

    invoke-direct {v6, p0, p1, v5, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$2;-><init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V

    invoke-interface {v0, v6}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-static {p1, v1, v4, v5}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->putPendingWrite(ILorg/jboss/netty/channel/MessageEvent;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v2, :cond_a

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v3

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v4

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v1

    invoke-direct {p0, v2, v3, v4, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->acceptStream(IBZZ)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_a
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v2, :cond_d

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_c
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    goto/16 :goto_1

    :cond_d
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(I)V

    goto/16 :goto_1

    :cond_e
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v2, :cond_11

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v0

    if-ltz v0, :cond_f

    invoke-direct {p0, v0, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateConcurrentStreams(IZ)V

    :cond_f
    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->removeValue(I)V

    :cond_10
    invoke-interface {v1, v3, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setPersistValue(IZ)V

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v0, :cond_5

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateInitialReceiveWindowSize(I)V

    goto/16 :goto_1

    :cond_11
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v2, :cond_13

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid PING ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto/16 :goto_1

    :cond_13
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v2, :cond_14

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_14
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v2, :cond_16

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_15
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    goto/16 :goto_1

    :cond_16
    instance-of v1, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->PROTOCOL_EXCEPTION:Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x7

    const/4 v6, 0x1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v1, :cond_9

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isActiveStream(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I

    if-gt v1, v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->sentGoAwayFrame:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->hasReceivedReply(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v2, :cond_7

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getReceiveWindowSizeLowerBound(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto :goto_0

    :cond_5
    if-gez v2, :cond_6

    :goto_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    if-le v3, v4, :cond_6

    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v3, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_1

    :cond_6
    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_7

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->initialReceiveWindowSize:I

    sub-int v2, v3, v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v3, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->updateReceiveWindowSize(II)I

    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v3, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_7
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto/16 :goto_0

    :cond_9
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isActiveStream(I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->lastGoodStreamID:I

    if-gt v1, v2, :cond_c

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueSessionError(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    goto/16 :goto_0

    :cond_c
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->acceptStream(IBZZ)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_d
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v1, :cond_11

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->hasReceivedReply(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->receivedReply(I)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    goto/16 :goto_2

    :cond_11
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v1, :cond_12

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->removeStream(I)V

    goto/16 :goto_2

    :cond_12
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v1, :cond_15

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v1

    if-ltz v1, :cond_13

    invoke-direct {p0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateConcurrentStreams(IZ)V

    :cond_13
    invoke-interface {v0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->removeValue(I)V

    :cond_14
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setPersistValue(IZ)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v1, :cond_8

    invoke-interface {v0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateInitialSendWindowSize(I)V

    goto/16 :goto_2

    :cond_15
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v1, :cond_17

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->isRemoteInitiatedID(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->pings:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto/16 :goto_2

    :cond_17
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v1, :cond_18

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->receivedGoAwayFrame:Z

    goto/16 :goto_2

    :cond_18
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v1, :cond_1b

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isRemoteSideClosed(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_1a
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->halfCloseStream(IZ)V

    goto/16 :goto_2

    :cond_1b
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->flowControl:Z

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getStreamId()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getDeltaWindowSize()I

    move-result v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->isLocalSideClosed(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->spdySession:Lorg/jboss/netty/handler/codec/spdy/SpdySession;

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySession;->getSendWindowSize(I)I

    move-result v2

    const v3, 0x7fffffff

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1c

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->issueStreamError(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    goto/16 :goto_0

    :cond_1c
    invoke-direct {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateSendWindowSize(Lorg/jboss/netty/channel/ChannelHandlerContext;II)V

    goto/16 :goto_0
.end method
