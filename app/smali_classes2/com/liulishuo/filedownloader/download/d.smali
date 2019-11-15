.class public Lcom/liulishuo/filedownloader/download/d;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/d$a;
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/liulishuo/filedownloader/download/a;

.field private final c:Lcom/liulishuo/filedownloader/download/g;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private f:Lcom/liulishuo/filedownloader/download/f;

.field private volatile g:Z

.field private final h:I


# direct methods
.method private constructor <init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    iput p2, p0, Lcom/liulishuo/filedownloader/download/d;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z

    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    iput-object p6, p0, Lcom/liulishuo/filedownloader/download/d;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    iput-boolean p5, p0, Lcom/liulishuo/filedownloader/download/d;->e:Z

    return-void
.end method

.method synthetic constructor <init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;Lcom/liulishuo/filedownloader/download/d$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/liulishuo/filedownloader/download/d;-><init>(IILcom/liulishuo/filedownloader/download/a;Lcom/liulishuo/filedownloader/download/g;ZLjava/lang/String;)V

    return-void
.end method

.method private c()J
    .locals 4

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/c;->c()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    iget v1, p0, Lcom/liulishuo/filedownloader/download/d;->a:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->b()I

    move-result v2

    iget v3, p0, Lcom/liulishuo/filedownloader/download/d;->a:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/a;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget v1, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/b/a;->b(I)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/f;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/download/d;->a()V

    return-void
.end method

.method public run()V
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a;->e()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/b;->b:J

    move v1, v2

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/a;->a()Lcom/liulishuo/filedownloader/a/b;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->e()I

    move-result v0

    sget-boolean v4, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "the connection[%d] for %d, is connected %s with code[%d]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/liulishuo/filedownloader/download/d;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/download/a;->e()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/16 v4, 0xce

    if-eq v0, v4, :cond_3

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_3

    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v8}, Lcom/liulishuo/filedownloader/download/a;->d()Ljava/util/Map;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->c()Ljava/util/Map;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x3

    iget v7, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x4

    iget v7, p0, Lcom/liulishuo/filedownloader/download/d;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    move-object v4, v1

    move v1, v2

    :goto_2
    move-object v10, v0

    move v0, v1

    move-object v1, v4

    move-object v4, v10

    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v5, v4}, Lcom/liulishuo/filedownloader/download/g;->a(Ljava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    if-nez v5, :cond_6

    const-string v0, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v0, v4}, Lcom/liulishuo/filedownloader/download/g;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    goto/16 :goto_1

    :cond_3
    :try_start_4
    new-instance v0, Lcom/liulishuo/filedownloader/download/f$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/download/f$a;-><init>()V

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    goto/16 :goto_1

    :cond_4
    :try_start_5
    iget v4, p0, Lcom/liulishuo/filedownloader/download/d;->h:I

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/download/f$a;->b(I)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    iget v4, p0, Lcom/liulishuo/filedownloader/download/d;->a:I

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/download/f$a;->a(I)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/download/f$a;->a(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/download/f$a;->a(Lcom/liulishuo/filedownloader/download/d;)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/download/d;->e:Z

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/download/f$a;->a(Z)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/f$a;->a(Lcom/liulishuo/filedownloader/a/b;)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v4}, Lcom/liulishuo/filedownloader/download/a;->e()Lcom/liulishuo/filedownloader/download/b;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/download/f$a;->a(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/download/f$a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/f$a;->a()Lcom/liulishuo/filedownloader/download/f;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/f;->b()V

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/d;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/download/f;->a()V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/liulishuo/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    goto/16 :goto_1

    :cond_6
    :try_start_6
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->f:Lcom/liulishuo/filedownloader/download/f;

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/d;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->b:Lcom/liulishuo/filedownloader/download/a;

    invoke-virtual {v5, v6, v7}, Lcom/liulishuo/filedownloader/download/a;->a(J)V

    :cond_7
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v5, v4}, Lcom/liulishuo/filedownloader/download/g;->c(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_8
    move-object v4, v1

    move v1, v0

    goto/16 :goto_0

    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/d;->c:Lcom/liulishuo/filedownloader/download/g;

    invoke-interface {v0, v4}, Lcom/liulishuo/filedownloader/download/g;->b(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a/b;->f()V

    :cond_a
    throw v0

    :catch_1
    move-exception v0

    move-object v4, v1

    move v1, v2

    :goto_5
    move-object v10, v0

    move v0, v1

    move-object v1, v4

    move-object v4, v10

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v4, v1

    move v1, v2

    :goto_6
    move-object v10, v0

    move v0, v1

    move-object v1, v4

    move-object v4, v10

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v4, v1

    move v1, v2

    :goto_7
    move-object v10, v0

    move v0, v1

    move-object v1, v4

    move-object v4, v10

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, v1

    move v1, v3

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move v1, v2

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v4, v1

    move v1, v3

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    move v1, v2

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v4, v1

    move v1, v3

    goto :goto_7

    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v0

    move v1, v2

    goto :goto_7

    :catch_d
    move-exception v0

    move-object v4, v1

    move v1, v3

    goto :goto_6

    :catch_e
    move-exception v0

    goto :goto_6

    :catch_f
    move-exception v0

    move v1, v2

    goto :goto_6
.end method
