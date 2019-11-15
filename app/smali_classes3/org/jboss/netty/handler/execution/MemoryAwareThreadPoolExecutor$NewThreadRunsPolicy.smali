.class final Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;
.super Ljava/lang/Object;
.source "MemoryAwareThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewThreadRunsPolicy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Temporary task executor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Failed to start a new thread"

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
