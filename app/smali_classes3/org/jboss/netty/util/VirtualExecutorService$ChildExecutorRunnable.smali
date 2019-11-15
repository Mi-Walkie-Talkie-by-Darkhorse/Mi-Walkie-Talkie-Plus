.class Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;
.super Ljava/lang/Object;
.source "VirtualExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/VirtualExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildExecutorRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/jboss/netty/util/VirtualExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/util/VirtualExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v2, v0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v0, v0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v2, v0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v0, v0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_0
    :try_start_4
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-virtual {v1}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v1, v1, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    invoke-virtual {v0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v0, v0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_2
    move-exception v0

    iget-object v2, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v2, v2, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v3, p0, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->this$0:Lorg/jboss/netty/util/VirtualExecutorService;

    iget-object v3, v3, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v3, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
