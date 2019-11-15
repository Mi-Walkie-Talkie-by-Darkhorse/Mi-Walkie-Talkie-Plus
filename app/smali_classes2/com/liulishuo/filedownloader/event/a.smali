.class public Lcom/liulishuo/filedownloader/event/a;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/liulishuo/filedownloader/event/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const-string v1, "EventPool"

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/util/LinkedList;Lcom/liulishuo/filedownloader/event/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/liulishuo/filedownloader/event/c;",
            ">;",
            "Lcom/liulishuo/filedownloader/event/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/liulishuo/filedownloader/event/c;

    invoke-virtual {v0, p2}, Lcom/liulishuo/filedownloader/event/c;->a(Lcom/liulishuo/filedownloader/event/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p2, Lcom/liulishuo/filedownloader/event/b;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/liulishuo/filedownloader/event/b;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/liulishuo/filedownloader/event/b;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "publish %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/event/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/event/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "No listener for this event %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    monitor-exit v4

    move v0, v1

    :goto_0
    return v0

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/liulishuo/filedownloader/event/a;->a(Ljava/util/LinkedList;Lcom/liulishuo/filedownloader/event/b;)V

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/liulishuo/filedownloader/event/c;)Z
    .locals 3

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "setListener %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/liulishuo/filedownloader/event/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public b(Lcom/liulishuo/filedownloader/event/b;)V
    .locals 4

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "asyncPublishInNewThread %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/event/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/event/a$1;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/event/a$1;-><init>(Lcom/liulishuo/filedownloader/event/a;Lcom/liulishuo/filedownloader/event/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
