.class public Lorg/jboss/netty/handler/ssl/SslHandler;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "SslHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/ssl/SslHandler$7;,
        Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;,
        Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;,
        Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

.field private closeOnSSLException:Z

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private volatile enableRenegotiation:Z

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private volatile handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field final handshakeLock:Ljava/lang/Object;

.field private handshakeTimeout:Lorg/jboss/netty/util/Timeout;

.field private final handshakeTimeoutInMillis:J

.field private volatile handshaken:Z

.field private handshaking:Z

.field ignoreClosedChannelException:I

.field final ignoreClosedChannelExceptionLock:Ljava/lang/Object;

.field private volatile issueHandshake:Z

.field private packetLength:I

.field private final pendingEncryptedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

.field private final pendingUnencryptedWrites:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

.field private final sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

.field private final startTls:Z

.field private final timer:Lorg/jboss/netty/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    const-class v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    const-string v0, "^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    const-string v0, "^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;Lorg/jboss/netty/util/Timer;J)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;Lorg/jboss/netty/util/Timer;J)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    new-instance v0, Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    new-instance v0, Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    new-instance v0, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "engine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferPool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegatedTaskExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p5, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Timer was given but a handshakeTimeoutInMillis, need both or none"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    iput-object p4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    iput-object p5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->timer:Lorg/jboss/netty/util/Timer;

    iput-wide p6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeoutInMillis:J

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/ssl/SslHandler;->getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/jboss/netty/handler/ssl/SslBufferPool;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jboss/netty/handler/ssl/SslHandler;)J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeoutInMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jboss/netty/handler/ssl/SslHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    return v0
.end method

.method static synthetic access$400(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/util/internal/NonReentrantLock;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jboss/netty/handler/ssl/SslHandler;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jboss/netty/handler/ssl/SslHandler;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method private cancelHandshakeTimeout()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    :cond_0
    return-void
.end method

.method private closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler$ClosingChannelFutureListener;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to unwrap before sending a close_notify message"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to encode a close_notify message"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move v0, v7

    goto :goto_2
.end method

.method private flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultBufferPool()Lorg/jboss/netty/handler/ssl/SslBufferPool;
    .locals 2

    const-class v1, Lorg/jboss/netty/handler/ssl/SslHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/ssl/SslHandler;->defaultBufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getEncryptedPacketLength(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 8

    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v7, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer must have at least 5 readable bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_0
    if-eqz v0, :cond_a

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {p0, v3}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v3

    const v6, 0xffff

    and-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x5

    if-gt v3, v7, :cond_1

    move v0, v4

    :cond_1
    :goto_1
    if-nez v0, :cond_9

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v6

    if-eq v6, v1, :cond_2

    if-ne v6, v2, :cond_7

    :cond_2
    if-ne v0, v1, :cond_6

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-static {p0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v1

    and-int/lit16 v1, v1, 0x7fff

    add-int/lit8 v3, v1, 0x2

    :goto_3
    if-gt v3, v0, :cond_8

    move v1, v4

    move v0, v3

    :goto_4
    if-nez v1, :cond_3

    const/4 v0, -0x1

    :cond_3
    :goto_5
    return v0

    :pswitch_0
    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v4

    move v3, v4

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-static {p0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S

    move-result v1

    and-int/lit16 v1, v1, 0x3fff

    add-int/lit8 v3, v1, 0x3

    goto :goto_3

    :cond_7
    move v1, v4

    move v0, v3

    goto :goto_4

    :cond_8
    move v1, v5

    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    move v3, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)S
    .locals 2

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v2, :cond_0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v2, :cond_3

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    monitor-exit v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    :goto_2
    monitor-exit v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "renegotiation attempted by peer; closing the connection"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_4

    instance-of v2, p1, Ljava/io/IOException;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "org.jboss.netty."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v7, "read"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/jboss/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    const-class v6, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_2

    const-string v6, "com.sun.nio.sctp.SctpChannel"

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static isEncrypted(Lorg/jboss/netty/buffer/ChannelBuffer;)Z
    .locals 2

    invoke-static {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->getEncryptedPacketLength(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method private runDelegatedTasks()V
    .locals 3

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    monitor-exit v1

    if-nez v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/handler/ssl/SslHandler$4;

    invoke-direct {v2, p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler$4;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    :cond_2
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->cancelHandshakeTimeout()V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "SSLEngine.closeInbound() raised an exception after a handshake failure."

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V
    .locals 2

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->cancelHandshakeTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p3, p4, p5}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v3, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    sget-object v6, Lorg/jboss/netty/handler/ssl/SslHandler$7;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    sget-object v6, Lorg/jboss/netty/handler/ssl/SslHandler$7;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown handshake status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1, v4}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :pswitch_0
    :try_start_8
    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    invoke-virtual {v6}, Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;->setClosed()V

    goto :goto_2

    :pswitch_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSLEngine.unwrap() reported an impossible buffer overflow."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_3
    monitor-exit v2

    goto/16 :goto_0

    :cond_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    if-eqz v0, :cond_2

    :try_start_9
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)V

    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    :goto_5
    invoke-virtual {v1, v4}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    return-object v0

    :pswitch_3
    :try_start_a
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_3

    :pswitch_4
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    monitor-exit v2

    move v0, v1

    goto :goto_4

    :pswitch_6
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, v1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    goto :goto_5

    :cond_4
    move v2, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v1, 0x0

    move v2, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->lock()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-nez v0, :cond_4

    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move v1, v3

    move v3, v4

    :goto_1
    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v6, v5}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    :cond_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SSLEngine already closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->lock()V

    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_2
    if-eqz v3, :cond_3

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_3
    return-void

    :cond_4
    :try_start_4
    iget-object v6, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_5

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    new-instance v1, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    iget-object v6, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v7, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-direct {v1, p2, v6, v7, v8}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v2, v3

    :goto_3
    :try_start_5
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v1, v0

    goto :goto_0

    :cond_5
    :try_start_6
    iget-object v7, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1, v6, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v1

    :try_start_8
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_6
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->outAppBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    :goto_4
    new-instance v8, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-direct {v8, p2, v1, v6, v9}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-direct {p0, v8}, Lorg/jboss/netty/handler/ssl/SslHandler;->offerEncryptedWriteRequest(Lorg/jboss/netty/channel/MessageEvent;)V

    move v2, v3

    :cond_7
    :goto_5
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_6
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_7
    :try_start_a
    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catch_0
    move-exception v0

    :goto_8
    :try_start_b
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move v3, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_9
    iget-object v4, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v4, v5}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ssl/SslHandler;->flushPendingEncryptedWrites(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    :cond_8
    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SSLEngine already closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_9
    :goto_a
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->lock()V

    :try_start_c
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    :cond_a
    throw v1

    :catchall_3
    move-exception v1

    :try_start_d
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_b
    throw v1

    :cond_c
    iget-object v1, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v8

    sget-object v9, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-ne v8, v9, :cond_e

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :try_start_f
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move v3, v4

    move v1, v4

    goto/16 :goto_1

    :cond_e
    :try_start_10
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    sget-object v9, Lorg/jboss/netty/handler/ssl/SslHandler$7;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown handshake status: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_7

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V
    :try_end_11
    .catch Ljavax/net/ssl/SSLException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move v1, v3

    move v3, v4

    goto/16 :goto_1

    :pswitch_1
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move v1, v3

    goto/16 :goto_1

    :pswitch_2
    :try_start_14
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto/16 :goto_5

    :pswitch_3
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v8, v6, :cond_f

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    :cond_f
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v6, :cond_10

    move v3, v4

    :cond_10
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V
    :try_end_15
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move v1, v3

    move v3, v4

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0

    :cond_11
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0

    :cond_12
    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_9

    :catchall_7
    move-exception v1

    goto/16 :goto_9

    :catchall_8
    move-exception v1

    move v3, v4

    goto/16 :goto_9

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_8

    :catchall_9
    move-exception v0

    goto/16 :goto_7

    :catchall_a
    move-exception v1

    move v3, v4

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquireBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v7}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v1, Lorg/jboss/netty/handler/ssl/SslHandler$3;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/ssl/SslHandler$3;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V

    invoke-interface {v6, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-static {p1, v6, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handleRenegotiation(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler$7;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected handshake status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeFailure(Lorg/jboss/netty/channel/Channel;Ljavax/net/ssl/SSLException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v1, v7}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ssl/SslHandler;->setHandshakeSuccess(Lorg/jboss/netty/channel/Channel;)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    :cond_2
    :goto_0
    :pswitch_1
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->bufferPool:Lorg/jboss/netty/handler/ssl/SslBufferPool;

    invoke-virtual {v0, v7}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    if-nez v6, :cond_3

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_2
    :try_start_6
    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingEncryptedWrites:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to write data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to write data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/ssl/SslHandler$6;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/handler/ssl/SslHandler$6;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/ssl/SslHandler$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/handler/ssl/SslHandler$5;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    goto :goto_0
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->cancelHandshakeTimeout()V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v6

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentCloseNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_2

    :try_start_4
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_1
    throw v6

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to clean up SSLEngine."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to clean up SSLEngine."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-boolean v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_0
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v6, -0x80000000

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    if-ne v1, v6, :cond_5

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p3}, Lorg/jboss/netty/handler/ssl/SslHandler;->getEncryptedPacketLength(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/jboss/netty/handler/ssl/NotSslRecordException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an SSL/TLS record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget-boolean v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v2, :cond_2

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :cond_2
    throw v1

    :cond_3
    sget-boolean v2, Lorg/jboss/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-gtz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iput v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    :cond_5
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    if-lt v1, v2, :cond_0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    :try_start_0
    iget v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/ssl/SslHandler;->unwrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->packetLength:I

    throw v0
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    if-lez v2, :cond_1

    iget v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/jboss/netty/handler/ssl/SslHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Swallowing an exception raised while writing non-app data"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public getCloseOnSSLException()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    return v0
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public getHandshakeTimeout()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeoutInMillis:J

    return-wide v0
.end method

.method public getSSLEngineInboundCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sslEngineCloseFuture:Lorg/jboss/netty/handler/ssl/SslHandler$SSLEngineInboundCloseFuture;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/ssl/SslHandler$7;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

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
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    goto :goto_0

    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_3

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->sentFirstMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrap(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;-><init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->pendingUnencryptedWritesLock:Lorg/jboss/netty/util/internal/NonReentrantLock;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handshake()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 11

    iget-object v2, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaken:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->isEnableRenegotiation()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "renegotiation disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshaking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    invoke-direct {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    iget-wide v6, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeoutInMillis:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    iget-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v6, Lorg/jboss/netty/handler/ssl/SslHandler$1;

    invoke-direct {v6, p0, v4}, Lorg/jboss/netty/handler/ssl/SslHandler$1;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/Channel;)V

    iget-wide v8, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeoutInMillis:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v8, v9, v7}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeTimeout:Lorg/jboss/netty/util/Timeout;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_1
    if-nez v1, :cond_4

    :try_start_3
    invoke-direct {p0, v3, v4}, Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v5, Lorg/jboss/netty/handler/ssl/SslHandler$2;

    invoke-direct {v5, p0, v0, v3, v4}, Lorg/jboss/netty/handler/ssl/SslHandler$2;-><init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v1, v5}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeFuture:Lorg/jboss/netty/channel/ChannelFuture;

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v3, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v1, :cond_3

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_2

    :cond_4
    invoke-static {v3, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    if-eqz v1, :cond_3

    invoke-static {v4}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public isEnableRenegotiation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    return v0
.end method

.method public isIssueHandshake()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    return v0
.end method

.method public setCloseOnSSLException(Z)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only get changed before attached to ChannelPipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->closeOnSSLException:Z

    return-void
.end method

.method public setEnableRenegotiation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->enableRenegotiation:Z

    return-void
.end method

.method public setIssueHandshake(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler;->issueHandshake:Z

    return-void
.end method
