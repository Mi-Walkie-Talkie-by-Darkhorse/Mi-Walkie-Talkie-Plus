.class public Lcom/amap/api/col/sl/as;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorUtil.java"


# static fields
.field private static volatile c:Lcom/amap/api/col/sl/as;


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/as;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/as;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v3, v2, 0x2

    const-wide/16 v4, 0x1

    iget-object v7, p0, Lcom/amap/api/col/sl/as;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/amap/api/col/sl/as;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/amap/api/col/sl/as;
    .locals 2

    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    if-nez v0, :cond_1

    const-class v1, Lcom/amap/api/col/sl/as;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/as;

    invoke-direct {v0}, Lcom/amap/api/col/sl/as;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    if-eqz v0, :cond_1

    const-class v1, Lcom/amap/api/col/sl/as;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    iget-object v0, v0, Lcom/amap/api/col/sl/as;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/amap/api/col/sl/as;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/sl/as;->c:Lcom/amap/api/col/sl/as;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/as;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/as;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
