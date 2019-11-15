.class public Lcom/liulishuo/filedownloader/download/f;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/f$a;
    }
.end annotation


# instance fields
.field a:J

.field private final b:Lcom/liulishuo/filedownloader/download/g;

.field private final c:I

.field private final d:I

.field private final e:Lcom/liulishuo/filedownloader/download/d;

.field private final f:Lcom/liulishuo/filedownloader/a/b;

.field private final g:Z

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:Ljava/lang/String;

.field private l:Lcom/liulishuo/filedownloader/d/a;

.field private volatile m:Z

.field private final n:Lcom/liulishuo/filedownloader/b/a;

.field private volatile o:J

.field private volatile p:J


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    iput-object p7, p0, Lcom/liulishuo/filedownloader/download/f;->b:Lcom/liulishuo/filedownloader/download/g;

    iput-object p8, p0, Lcom/liulishuo/filedownloader/download/f;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f;->f:Lcom/liulishuo/filedownloader/a/b;

    iput-boolean p6, p0, Lcom/liulishuo/filedownloader/download/f;->g:Z

    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/f;->e:Lcom/liulishuo/filedownloader/download/d;

    iput p5, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    iput p4, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->c()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->n:Lcom/liulishuo/filedownloader/b/a;

    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/b;->a:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->h:J

    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/b;->c:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/b;->b:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    iget-wide v0, p2, Lcom/liulishuo/filedownloader/download/b;->d:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->j:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/f$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/liulishuo/filedownloader/download/f;-><init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Lcom/liulishuo/filedownloader/e/g;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    iput-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->o:J

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->p:J

    :cond_0
    return-void
.end method

.method private d()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->l:Lcom/liulishuo/filedownloader/d/a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    if-ltz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->n:Lcom/liulishuo/filedownloader/b/a;

    iget v3, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    iget v6, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    iget-wide v8, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-interface {v0, v3, v6, v8, v9}, Lcom/liulishuo/filedownloader/b/a;->a(IIJ)V

    :goto_2
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    iget v2, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {p0, v3, v6}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->b:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/download/g;->c()V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/f;->m:Z

    return-void
.end method

.method public b()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/f;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/f;->f:Lcom/liulishuo/filedownloader/a/b;

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->c(ILcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->f:Lcom/liulishuo/filedownloader/a/b;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->c(Lcom/liulishuo/filedownloader/a/b;)J

    move-result-wide v0

    move-wide v4, v0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v1, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->j:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "range[%d-)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v2, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/f;->j:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v0

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p0, Lcom/liulishuo/filedownloader/download/f;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget v4, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "range[%d-%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-wide v6, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->e()Z

    move-result v0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/f;->e:Lcom/liulishuo/filedownloader/download/d;

    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v3, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v0, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    :try_start_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_6
    if-eqz v1, :cond_7

    :try_start_3
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :cond_7
    :goto_4
    throw v0

    :cond_8
    :try_start_4
    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/f;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/liulishuo/filedownloader/e/g;->n(Ljava/lang/String;)Lcom/liulishuo/filedownloader/d/a;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/f;->l:Lcom/liulishuo/filedownloader/d/a;

    if-eqz v0, :cond_9

    iget-wide v8, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-interface {v1, v8, v9}, Lcom/liulishuo/filedownloader/d/a;->a(J)V

    :cond_9
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_a

    const-string v0, "start fetch(%d): range [%d, %d), seek to[%d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/liulishuo/filedownloader/download/f;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x2

    iget-wide v10, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x3

    iget-wide v10, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-static {p0, v0, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->f:Lcom/liulishuo/filedownloader/a/b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a/b;->a()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/f;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_e

    if-eqz v2, :cond_b

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    :try_start_6
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_c
    if-eqz v1, :cond_0

    :try_start_7
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_d

    :try_start_8
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_d
    :goto_6
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_e
    :try_start_9
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_12

    if-eqz v2, :cond_f

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_f
    :goto_7
    if-eqz v1, :cond_10

    :try_start_b
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_10
    if-eqz v1, :cond_11

    :try_start_c
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_11
    :goto_8
    iget-wide v0, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    sub-long/2addr v0, v6

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_19

    cmp-long v2, v4, v0

    if-eqz v2, :cond_19

    new-instance v2, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;

    const-string v3, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset[%d]"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v3, v8}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const/4 v8, 0x0

    :try_start_d
    invoke-interface {v1, v0, v8, v3}, Lcom/liulishuo/filedownloader/d/a;->a([BII)V

    iget-wide v8, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/liulishuo/filedownloader/download/f;->a:J

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/f;->b:Lcom/liulishuo/filedownloader/download/g;

    int-to-long v10, v3

    invoke-interface {v8, v10, v11}, Lcom/liulishuo/filedownloader/download/g;->a(J)V

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->c()V

    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/f;->m:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_16

    if-eqz v2, :cond_13

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_13
    :goto_9
    if-eqz v1, :cond_14

    :try_start_f
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/f;->d()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_14
    if-eqz v1, :cond_0

    :try_start_10
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_15

    :try_start_11
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    :cond_15
    :goto_a
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_16
    :try_start_12
    iget-boolean v3, p0, Lcom/liulishuo/filedownloader/download/f;->g:Z

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/liulishuo/filedownloader/e/g;->d()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v0, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_17

    :try_start_13
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_17
    :goto_b
    throw v0

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_9
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_a
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    if-eqz v1, :cond_18

    :try_start_14
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d/a;->b()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    :cond_18
    :goto_c
    throw v0

    :catch_b
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f;->b:Lcom/liulishuo/filedownloader/download/g;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/f;->e:Lcom/liulishuo/filedownloader/download/d;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/download/f;->h:J

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/download/f;->i:J

    invoke-interface/range {v0 .. v5}, Lcom/liulishuo/filedownloader/download/g;->a(Lcom/liulishuo/filedownloader/download/d;JJ)V

    goto/16 :goto_0

    :cond_1a
    move-wide v4, v0

    goto/16 :goto_1
.end method
