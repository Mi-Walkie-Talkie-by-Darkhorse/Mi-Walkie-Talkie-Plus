.class public Lorg/jboss/netty/channel/DefaultChannelPipeline;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;,
        Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    }
.end annotation


# static fields
.field static final discardingSink:Lorg/jboss/netty/channel/ChannelSink;

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile channel:Lorg/jboss/netty/channel/Channel;

.field private volatile head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sink:Lorg/jboss/netty/channel/ChannelSink;

.field private volatile tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method private callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 8

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    instance-of v1, v1, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    :try_start_0
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v2, v0

    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v2

    sget-object v5, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove a handler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

.method private checkDuplicateName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate handler name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0
.end method

.method private getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0
.end method

.method private getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v0, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0
.end method

.method private replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v3, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object v0, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v9, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v6

    move-object v2, v8

    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-nez v1, :cond_5

    if-nez v6, :cond_5

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-virtual {v8}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v8}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Both "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".afterRemove() and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".afterAdd() failed; see logs."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v7

    goto :goto_1

    :catch_1
    move-exception v8

    move v6, v7

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    throw v2

    :cond_6
    if-nez v6, :cond_0

    throw v8
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v2

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v3, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v1, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v3

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v2, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v1, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object v0, v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iput-object v0, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

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
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attached already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    iput-object p2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
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

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public declared-synchronized getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 3
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

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlerType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    :cond_2
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    :cond_2
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    if-ne v2, p1, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNames()Ljava/util/List;
    .locals 3
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

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSink()Lorg/jboss/netty/channel/ChannelSink;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    :cond_0
    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

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

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-interface {v0, p0, p1, p2}, Lorg/jboss/netty/channel/ChannelSink;->exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "An exception was thrown by an exception handler."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_1
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2

    instance-of v0, p2, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot send an upstream event to downstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

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

    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelUpstreamHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
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

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    :cond_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
