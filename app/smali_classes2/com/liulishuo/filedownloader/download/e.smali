.class public Lcom/liulishuo/filedownloader/download/e;
.super Ljava/lang/Object;
.source "DownloadStatusCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private final b:Lcom/liulishuo/filedownloader/b/a;

.field private final c:Lcom/liulishuo/filedownloader/download/e$a;

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private volatile j:Z

.field private volatile k:Ljava/lang/Thread;

.field private volatile l:J

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;III)V
    .locals 5

    const/4 v0, 0x5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/liulishuo/filedownloader/download/e;->j:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/e;->l:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/download/c;->c()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    iput p3, p0, Lcom/liulishuo/filedownloader/download/e;->e:I

    iput p4, p0, Lcom/liulishuo/filedownloader/download/e;->f:I

    new-instance v0, Lcom/liulishuo/filedownloader/download/e$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/e$a;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Lcom/liulishuo/filedownloader/download/e$a;

    iput p2, p0, Lcom/liulishuo/filedownloader/download/e;->d:I

    return-void
.end method

.method private static a(JJ)J
    .locals 8

    const-wide/16 v0, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p2, v6

    if-gtz v4, :cond_1

    move-wide v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    div-long v2, p0, p2

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method private a(B)V
    .locals 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "High concurrent cause, Already paused and we don\'t need to call-back to Task in here, %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/liulishuo/filedownloader/message/c;->a()Lcom/liulishuo/filedownloader/message/c;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->c:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-static {p1, v1, v2}, Lcom/liulishuo/filedownloader/message/d;->a(BLcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/download/e$a;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/message/c;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v0

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->e(I)Z

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private b(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 9

    const-wide/16 v4, 0x1000

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/liulishuo/filedownloader/e/e;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->f(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const-wide/16 v6, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Exception with: free space isn\'t enough, and the target file not exist."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJLjava/lang/Throwable;)V

    move-object p1, v1

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;

    invoke-direct/range {v1 .. v7}, Lcom/liulishuo/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    move-object p1, v1

    goto :goto_1
.end method

.method private b(J)V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "inspectNeedCallbackToUser need callback to user"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-wide p1, p0, Lcom/liulishuo/filedownloader/download/e;->l:J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    return-void

    :cond_2
    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/e;->l:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/e;->g:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/liulishuo/filedownloader/download/e;->g:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/liulishuo/filedownloader/download/e;->e:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private b(Ljava/lang/Exception;I)V
    .locals 4

    const/4 v3, 0x5

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->c:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/download/e$a;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->c:Lcom/liulishuo/filedownloader/download/e$a;

    iget v2, p0, Lcom/liulishuo/filedownloader/download/e;->d:I

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/download/e$a;->a(I)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/liulishuo/filedownloader/b/a;->a(ILjava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->b(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v0, v1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Landroid/database/sqlite/SQLiteFullException;)V

    :goto_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/e$a;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, v6}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v2

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v4

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/liulishuo/filedownloader/b/a;->a(ILjava/lang/Throwable;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Landroid/database/sqlite/SQLiteFullException;)V

    goto :goto_0
.end method

.method private h()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v8, "Can\'t delete the old file([%s], [%d]), so can\'t replace it with the new downloaded one."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v0

    invoke-static {v8, v9}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "delete the temp file(%s) failed, on completed downloading."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    throw v0

    :cond_1
    :try_start_1
    const-string v8, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {p0, v8, v9}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    :try_start_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Can\'t rename the  temp downloaded file(%s) to the target file(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "delete the temp file(%s) failed, on completed downloading."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/b/a;->a(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "handleProgress update model\'s status with progress"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    :cond_3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "handleProgress notify user progress status"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0, v6}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    goto :goto_0
.end method

.method private j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x3

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->h()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/b/a;->b(IJ)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->d(I)V

    invoke-direct {p0, v4}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/liulishuo/filedownloader/e/e;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/services/f;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    :cond_0
    return-void
.end method

.method private k()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(J)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v3, "sofar[%d] not equal total[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/liulishuo/filedownloader/download/e;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private l()V
    .locals 5

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/b/a;->c(IJ)V

    invoke-direct {p0, v4}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p1, p2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/liulishuo/filedownloader/download/e;->b(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method a(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/download/e;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method a(Ljava/lang/Exception;I)V
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/liulishuo/filedownloader/download/e;->b(Ljava/lang/Exception;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/e;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method a(ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback onConnected must with precondition succeed, but the etag is changes(%s != %s)"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->c:Lcom/liulishuo/filedownloader/download/e$a;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/e$a;->a(Z)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p2, p3}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p4}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, p5}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/liulishuo/filedownloader/b/a;->a(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    iget v0, p0, Lcom/liulishuo/filedownloader/download/e;->f:I

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/e;->g:J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->k:Ljava/lang/Thread;

    :goto_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/e;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/liulishuo/filedownloader/download/e;->k:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->f(I)V

    invoke-direct {p0, v2}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    return-void
.end method

.method d()V
    .locals 2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    invoke-direct {p0, v1}, Lcom/liulishuo/filedownloader/download/e;->a(B)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->b:Lcom/liulishuo/filedownloader/b/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->a(I)V

    return-void
.end method

.method e()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "source-status-callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->h:Landroid/os/Handler;

    return-void
.end method

.method f()V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->l()V

    return-void
.end method

.method g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->j()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/download/e;->j:Z

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/download/e;->j:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e;->k:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return v3

    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/liulishuo/filedownloader/download/e;->j:Z

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->k:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/e;->k:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    throw v0

    :pswitch_2
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/liulishuo/filedownloader/download/e;->b(Ljava/lang/Exception;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
