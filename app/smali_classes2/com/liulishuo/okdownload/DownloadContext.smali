.class public Lcom/liulishuo/okdownload/DownloadContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/okdownload/DownloadContext$AlterContext;,
        Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;,
        Lcom/liulishuo/okdownload/DownloadContext$QueueSet;,
        Lcom/liulishuo/okdownload/DownloadContext$Builder;
    }
.end annotation


# static fields
.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "DownloadContext"


# instance fields
.field final contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

.field volatile started:Z

.field private final tasks:[Lcom/liulishuo/okdownload/DownloadTask;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload Serial"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/liulishuo/okdownload/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/DownloadContext;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>([Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/DownloadContextListener;Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)V
    .locals 1
    .param p1    # [Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadContextListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/DownloadContext$QueueSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadContext;->started:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadContext;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    iput-object p3, p0, Lcom/liulishuo/okdownload/DownloadContext;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    return-void
.end method

.method constructor <init>([Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/DownloadContextListener;Lcom/liulishuo/okdownload/DownloadContext$QueueSet;Landroid/os/Handler;)V
    .locals 0
    .param p1    # [Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/liulishuo/okdownload/DownloadContextListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/liulishuo/okdownload/DownloadContext$QueueSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/liulishuo/okdownload/DownloadContext;-><init>([Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/DownloadContextListener;Lcom/liulishuo/okdownload/DownloadContext$QueueSet;)V

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadContext;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/liulishuo/okdownload/DownloadContext;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/okdownload/DownloadContext;->callbackQueueEndOnSerialLoop(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/liulishuo/okdownload/DownloadContext;)[Lcom/liulishuo/okdownload/DownloadTask;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    return-object p0
.end method

.method private callbackQueueEndOnSerialLoop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext;->uiHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext;->uiHandler:Landroid/os/Handler;

    :cond_1
    iget-object p1, p0, Lcom/liulishuo/okdownload/DownloadContext;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/liulishuo/okdownload/DownloadContext$2;

    invoke-direct {v0, p0}, Lcom/liulishuo/okdownload/DownloadContext$2;-><init>(Lcom/liulishuo/okdownload/DownloadContext;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/DownloadContextListener;->queueEnd(Lcom/liulishuo/okdownload/DownloadContext;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public alter()Lcom/liulishuo/okdownload/DownloadContext$AlterContext;
    .locals 1

    new-instance v0, Lcom/liulishuo/okdownload/DownloadContext$AlterContext;

    invoke-direct {v0, p0}, Lcom/liulishuo/okdownload/DownloadContext$AlterContext;-><init>(Lcom/liulishuo/okdownload/DownloadContext;)V

    return-object v0
.end method

.method executeOnSerialExecutor(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/liulishuo/okdownload/DownloadContext;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTasks()[Lcom/liulishuo/okdownload/DownloadTask;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "user must know change this array will effect internal job"
        value = {
            "EI"
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadContext;->started:Z

    return v0
.end method

.method public start(Lcom/liulishuo/okdownload/DownloadListener;Z)V
    .locals 6
    .param p1    # Lcom/liulishuo/okdownload/DownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadContext"

    invoke-static {v3, v2}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liulishuo/okdownload/DownloadContext;->started:Z

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    invoke-direct {v2}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    new-instance v2, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;

    iget-object v4, p0, Lcom/liulishuo/okdownload/DownloadContext;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    iget-object v5, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    array-length v5, v5

    invoke-direct {v2, p0, v4, v5}, Lcom/liulishuo/okdownload/DownloadContext$QueueAttachListener;-><init>(Lcom/liulishuo/okdownload/DownloadContext;Lcom/liulishuo/okdownload/DownloadContextListener;I)V

    invoke-virtual {p1, v2}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->append(Lcom/liulishuo/okdownload/DownloadListener;)Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch$Builder;->build()Lcom/liulishuo/okdownload/core/listener/DownloadListenerBunch;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Lcom/liulishuo/okdownload/DownloadContext$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/liulishuo/okdownload/DownloadContext$1;-><init>(Lcom/liulishuo/okdownload/DownloadContext;Ljava/util/List;Lcom/liulishuo/okdownload/DownloadListener;)V

    invoke-virtual {p0, v4}, Lcom/liulishuo/okdownload/DownloadContext;->executeOnSerialExecutor(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {v2, p1}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue([Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/DownloadListener;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start finish "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startOnParallel(Lcom/liulishuo/okdownload/DownloadListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/okdownload/DownloadContext;->start(Lcom/liulishuo/okdownload/DownloadListener;Z)V

    return-void
.end method

.method public startOnSerial(Lcom/liulishuo/okdownload/DownloadListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/okdownload/DownloadContext;->start(Lcom/liulishuo/okdownload/DownloadListener;Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadContext;->started:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher()Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->cancel([Lcom/liulishuo/okdownload/core/IdentifiedTask;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadContext;->started:Z

    return-void
.end method

.method public toBuilder()Lcom/liulishuo/okdownload/DownloadContext$Builder;
    .locals 4

    new-instance v0, Lcom/liulishuo/okdownload/DownloadContext$Builder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext;->set:Lcom/liulishuo/okdownload/DownloadContext$QueueSet;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/liulishuo/okdownload/DownloadContext;->tasks:[Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/liulishuo/okdownload/DownloadContext$Builder;-><init>(Lcom/liulishuo/okdownload/DownloadContext$QueueSet;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadContext;->contextListener:Lcom/liulishuo/okdownload/DownloadContextListener;

    invoke-virtual {v0, v1}, Lcom/liulishuo/okdownload/DownloadContext$Builder;->setListener(Lcom/liulishuo/okdownload/DownloadContextListener;)Lcom/liulishuo/okdownload/DownloadContext$Builder;

    move-result-object v0

    return-object v0
.end method
