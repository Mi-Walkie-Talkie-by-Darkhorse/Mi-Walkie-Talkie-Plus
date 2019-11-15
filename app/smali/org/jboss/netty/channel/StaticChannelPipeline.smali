.class public Lorg/jboss/netty/channel/StaticChannelPipeline;
.super Ljava/lang/Object;
.source "StaticChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile channel:Lorg/jboss/netty/channel/Channel;

.field private final contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

.field private final lastIndex:I

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public varargs constructor <init>([Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no handlers specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    new-array v2, v0, [Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    if-nez v3, :cond_3

    :cond_2
    array-length v3, v2

    if-ne v0, v3, :cond_4

    iput-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_5

    aget-object v4, p1, v3

    invoke-static {v3}, Lorg/jboss/netty/util/internal/ConversionUtil;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    invoke-direct {v6, p0, v3, v5, v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/StaticChannelPipeline;ILjava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    aput-object v6, v2, v3

    iget-object v4, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-array v2, v0, [Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    iput-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    goto :goto_1

    :cond_5
    array-length v0, v2

    :goto_3
    if-ge v1, v0, :cond_6

    aget-object v3, v2, v1

    invoke-static {v3}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-static {v3}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/channel/StaticChannelPipeline;I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jboss/netty/channel/StaticChannelPipeline;I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method private static callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 7

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    sget-object v4, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove a handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".afterRemove() has thrown an exception."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".beforeAdd() has thrown an exception; not adding."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    :try_start_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".beforeRemove() has thrown an exception; not removing."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .locals 2

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attached already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    iput-object p2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlerType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    if-ne v4, p1, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSink()Lorg/jboss/netty/channel/ChannelSink;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    :cond_0
    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception was thrown by a user handler while handling an exception event ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-interface {v0, p0, p1, p2}, Lorg/jboss/netty/channel/ChannelSink;->exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "An exception was thrown by an exception handler."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualDownstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2

    instance-of v0, p2, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot send an upstream event to downstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelDownstreamHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getActualUpstreamContext(I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/StaticChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pipeline contains no upstream handlers; discarding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelUpstreamHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline;->contexts:[Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, "}"

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
