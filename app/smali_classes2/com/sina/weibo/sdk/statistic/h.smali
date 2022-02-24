.class Lcom/sina/weibo/sdk/statistic/h;
.super Ljava/lang/Object;
.source "WBAgentExecutor.java"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/sina/weibo/sdk/statistic/h;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/sina/weibo/sdk/statistic/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/sina/weibo/sdk/statistic/h;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/h;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
