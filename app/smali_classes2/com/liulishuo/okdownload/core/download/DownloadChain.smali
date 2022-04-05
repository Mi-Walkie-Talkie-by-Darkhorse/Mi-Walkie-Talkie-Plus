.class public Lcom/liulishuo/okdownload/core/download/DownloadChain;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String; = "DownloadChain"


# instance fields
.field private final blockIndex:I

.field private final cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field connectIndex:I

.field final connectInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

.field volatile currentThread:Ljava/lang/Thread;

.field fetchIndex:I

.field final fetchInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;",
            ">;"
        }
    .end annotation
.end field

.field final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field noCallbackIncreaseBytes:J

.field private final releaseConnectionRunnable:Ljava/lang/Runnable;

.field private responseContentLength:J

.field private final store:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final task:Lcom/liulishuo/okdownload/DownloadTask;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload Cancel Block"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/liulishuo/okdownload/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(ILcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V
    .locals 2
    .param p2    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/download/DownloadCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    iput v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/liulishuo/okdownload/core/download/DownloadChain$1;

    invoke-direct {v0, p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain$1;-><init>(Lcom/liulishuo/okdownload/core/download/DownloadChain;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iput-object p5, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->store:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-void
.end method

.method static createChain(ILcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)Lcom/liulishuo/okdownload/core/download/DownloadChain;
    .locals 7
    .param p2    # Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/core/download/DownloadCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/okdownload/core/download/DownloadChain;-><init>(ILcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;)V

    return-object v6
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public flushNoCallbackIncreaseBytes()V
    .locals 7

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    iget-wide v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    invoke-interface {v0, v1, v4, v5, v6}, Lcom/liulishuo/okdownload/DownloadListener;->fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    iput-wide v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    return-void
.end method

.method public getBlockIndex()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    return v0
.end method

.method public getCache()Lcom/liulishuo/okdownload/core/download/DownloadCache;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    return-object v0
.end method

.method public declared-synchronized getConnection()Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionOrCreate()Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "DownloadChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create connection on url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Factory;->create(Ljava/lang/String;)Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadStore()Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->store:Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;

    return-object v0
.end method

.method public getInfo()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    return-object v0
.end method

.method public getOutputStream()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->getOutputStream()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->responseContentLength:J

    return-wide v0
.end method

.method public getTask()Lcom/liulishuo/okdownload/DownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    return-object v0
.end method

.method public increaseCallbackBytes(J)V
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    return-void
.end method

.method isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loopFetch()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processFetch()J

    move-result-wide v0

    return-wide v0
.end method

.method public processConnect()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    iget v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;

    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;->interceptConnect(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    throw v0
.end method

.method public processFetch()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    iget v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;

    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;->interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    throw v0
.end method

.method public declared-synchronized releaseConnection()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    invoke-interface {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection;->release()V

    const-string v0, "DownloadChain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseConnectionAsync()V
    .locals 2

    sget-object v0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetConnectForRetry()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnection()V

    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionAsync()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionAsync()V

    throw v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The chain has been finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setConnection(Lcom/liulishuo/okdownload/core/connection/DownloadConnection;)V
    .locals 0
    .param p1    # Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/liulishuo/okdownload/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0, p1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->setRedirectLocation(Ljava/lang/String;)V

    return-void
.end method

.method public setResponseContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->responseContentLength:J

    return-void
.end method

.method start()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    move-result-object v0

    new-instance v1, Lcom/liulishuo/okdownload/core/interceptor/RetryInterceptor;

    invoke-direct {v1}, Lcom/liulishuo/okdownload/core/interceptor/RetryInterceptor;-><init>()V

    new-instance v2, Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;

    invoke-direct {v2}, Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;-><init>()V

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    new-instance v4, Lcom/liulishuo/okdownload/core/interceptor/connect/HeaderInterceptor;

    invoke-direct {v4}, Lcom/liulishuo/okdownload/core/interceptor/connect/HeaderInterceptor;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    new-instance v4, Lcom/liulishuo/okdownload/core/interceptor/connect/CallServerInterceptor;

    invoke-direct {v4}, Lcom/liulishuo/okdownload/core/interceptor/connect/CallServerInterceptor;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processConnect()Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;

    move-result-object v4

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v5}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v5

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v7, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getResponseContentLength()J

    move-result-wide v8

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/liulishuo/okdownload/DownloadListener;->fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    new-instance v5, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;

    iget v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    invoke-interface {v4}, Lcom/liulishuo/okdownload/core/connection/DownloadConnection$Connected;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getOutputStream()Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;-><init>(ILjava/io/InputStream;Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processFetch()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/liulishuo/okdownload/DownloadListener;

    move-result-object v0

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/liulishuo/okdownload/DownloadListener;->fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    return-void

    :cond_0
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException;

    throw v0
.end method
