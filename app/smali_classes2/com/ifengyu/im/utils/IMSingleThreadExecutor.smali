.class public Lcom/ifengyu/im/utils/IMSingleThreadExecutor;
.super Ljava/lang/Object;
.source "IMSingleThreadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;,
        Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->l()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/library/base/BaseApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->uiHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/utils/IMSingleThreadExecutor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/ifengyu/im/utils/IMSingleThreadExecutor;
    .locals 2

    sget-object v0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->instance:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->instance:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    invoke-direct {v0}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;-><init>()V

    sput-object v0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->instance:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->instance:Lcom/ifengyu/im/utils/IMSingleThreadExecutor;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMRunnable;-><init>(Lcom/ifengyu/im/utils/IMSingleThreadExecutor;Lcom/ifengyu/im/utils/IMSingleThreadExecutor$IMTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/utils/IMSingleThreadExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
