.class Lcom/liulishuo/filedownloader/services/h;
.super Ljava/lang/Object;
.source "FileDownloadThreadPool.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    const-string v0, "Network"

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iput p1, p0, Lcom/liulishuo/filedownloader/services/h;->d:I

    return-void
.end method

.method private declared-synchronized c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/h;->c()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v4

    if-eq v4, p2, :cond_1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;)V
    .locals 2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->b()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/h;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget v0, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liulishuo/filedownloader/services/h;->e:I

    goto :goto_0
.end method

.method public declared-synchronized a(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/services/h;->a()I

    move-result v2

    if-lez v2, :cond_0

    const-string v1, "Can\'t change the max network thread count, because the  network thread pool isn\'t in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/liulishuo/filedownloader/e/e;->a(I)I

    move-result v0

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "change the max network thread count, from %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/liulishuo/filedownloader/services/h;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v2

    const-string v3, "Network"

    invoke-static {v0, v3}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iput-object v3, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "recreate the network thread pool and discard %d tasks"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput v0, p0, Lcom/liulishuo/filedownloader/services/h;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/h;->c()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 5

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/h;->c()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->a()V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "successful cancel %d %B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
