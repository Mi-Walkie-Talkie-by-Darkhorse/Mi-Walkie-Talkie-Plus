.class public Lcom/liulishuo/filedownloader/j;
.super Ljava/lang/Object;
.source "FileDownloadMessageStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/j$b;,
        Lcom/liulishuo/filedownloader/j$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/liulishuo/filedownloader/t;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liulishuo/filedownloader/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/liulishuo/filedownloader/j;->a:I

    const/4 v0, 0x5

    sput v0, Lcom/liulishuo/filedownloader/j;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const-string v1, "BlockCompleted"

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/liulishuo/filedownloader/j$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/liulishuo/filedownloader/j$b;-><init>(Lcom/liulishuo/filedownloader/j$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/j$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/j;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/j$a;->a()Lcom/liulishuo/filedownloader/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j;->c()V

    return-void
.end method

.method private b(Lcom/liulishuo/filedownloader/t;)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget v0, Lcom/liulishuo/filedownloader/j;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/j;->d:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    :try_start_2
    sget v1, Lcom/liulishuo/filedownloader/j;->a:I

    iget-object v3, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    sget v4, Lcom/liulishuo/filedownloader/j;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v4, p0, Lcom/liulishuo/filedownloader/j;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private c(Lcom/liulishuo/filedownloader/t;)V
    .locals 2

    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/j;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Lcom/liulishuo/filedownloader/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/filedownloader/j;->a(Lcom/liulishuo/filedownloader/t;Z)V

    return-void
.end method

.method a(Lcom/liulishuo/filedownloader/t;Z)V
    .locals 3

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/t;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/liulishuo/filedownloader/t;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/j$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/j$1;-><init>(Lcom/liulishuo/filedownloader/j;Lcom/liulishuo/filedownloader/t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/liulishuo/filedownloader/j;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/t;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/j;->b(Lcom/liulishuo/filedownloader/t;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/j;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/j;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/j;->b(Lcom/liulishuo/filedownloader/t;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/j;->c(Lcom/liulishuo/filedownloader/t;)V

    goto :goto_0
.end method
