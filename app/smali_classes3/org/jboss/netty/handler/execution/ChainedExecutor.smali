.class public Lorg/jboss/netty/handler/execution/ChainedExecutor;
.super Ljava/lang/Object;
.source "ChainedExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cur:Ljava/util/concurrent/Executor;

.field private final filter:Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;

.field private final next:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/execution/ChainedExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cur"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "next"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->filter:Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;

    iput-object p2, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static releaseExternal(Ljava/util/concurrent/Executor;)V
    .locals 1

    instance-of v0, p0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {p0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->filter:Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;->filter(Lorg/jboss/netty/handler/execution/ChannelEventRunnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->cur:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lorg/jboss/netty/handler/execution/ChainedExecutor;->releaseExternal(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChainedExecutor;->next:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lorg/jboss/netty/handler/execution/ChainedExecutor;->releaseExternal(Ljava/util/concurrent/Executor;)V

    return-void
.end method
