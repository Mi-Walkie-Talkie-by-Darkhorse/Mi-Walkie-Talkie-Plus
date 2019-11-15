.class public Lcom/liulishuo/filedownloader/e/f;
.super Ljava/lang/Object;
.source "FileDownloadSerialQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/e/f$a;,
        Lcom/liulishuo/filedownloader/e/f$b;
    }
.end annotation


# instance fields
.field volatile a:Lcom/liulishuo/filedownloader/a;

.field final b:Lcom/liulishuo/filedownloader/e/f$a;

.field volatile c:Z

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/liulishuo/filedownloader/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liulishuo/filedownloader/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/HandlerThread;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/e/f;->c:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SerialDownloadManager"

    invoke-static {v1}, Lcom/liulishuo/filedownloader/e/g;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/e/f;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/e/f$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/liulishuo/filedownloader/e/f$b;-><init>(Lcom/liulishuo/filedownloader/e/f;Lcom/liulishuo/filedownloader/e/f$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->h:Landroid/os/Handler;

    new-instance v0, Lcom/liulishuo/filedownloader/e/f$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/e/f$a;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->b:Lcom/liulishuo/filedownloader/e/f$a;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/e/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/e/f;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic b(Lcom/liulishuo/filedownloader/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/e/f;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v1, p0, Lcom/liulishuo/filedownloader/e/f;->b:Lcom/liulishuo/filedownloader/e/f$a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/e/f;->c:Z

    if-nez v0, :cond_0

    const-string v0, "require resume this queue(remain %d), but it is still running"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/e/f;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/e/f;->c:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->e:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/e/f;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->a:Lcom/liulishuo/filedownloader/a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/e/f;->b()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->a:Lcom/liulishuo/filedownloader/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/e/f;->b:Lcom/liulishuo/filedownloader/e/f$a;

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/a$a;)Lcom/liulishuo/filedownloader/a;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->a:Lcom/liulishuo/filedownloader/a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->c()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/liulishuo/filedownloader/a;)V
    .locals 2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/e/f;->b:Lcom/liulishuo/filedownloader/e/f$a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/e/f;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/e/f;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
