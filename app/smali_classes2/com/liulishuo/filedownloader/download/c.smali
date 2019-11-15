.class public Lcom/liulishuo/filedownloader/download/c;
.super Ljava/lang/Object;
.source "CustomComponentHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/services/c;

.field private b:Lcom/liulishuo/filedownloader/e/c$a;

.field private c:Lcom/liulishuo/filedownloader/e/c$b;

.field private d:Lcom/liulishuo/filedownloader/e/c$e;

.field private e:Lcom/liulishuo/filedownloader/b/a;

.field private f:Lcom/liulishuo/filedownloader/e/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/download/c;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c$a;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/liulishuo/filedownloader/b/a$a;)V
    .locals 23

    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/b/a$a;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/liulishuo/filedownloader/download/c;->a()Lcom/liulishuo/filedownloader/download/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/download/c;->b()Lcom/liulishuo/filedownloader/e/c$d;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :goto_0
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_0

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_0

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    :cond_0
    const/4 v14, -0x2

    invoke-virtual {v2, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V

    :cond_1
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->d()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a$a;->a(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v6

    move-wide v6, v8

    move-wide/from16 v21, v2

    move-wide v2, v4

    move-wide/from16 v4, v21

    :goto_2
    move-wide v8, v6

    move-wide v6, v4

    move-wide v4, v2

    goto :goto_0

    :cond_3
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v14

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v14

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v2, v0, v1}, Lcom/liulishuo/filedownloader/e/g;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Ljava/io/File;

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v15, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    sget-boolean v17, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v17, :cond_4

    const-class v17, Lcom/liulishuo/filedownloader/b/a;

    const-string v18, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v19, v20

    const/16 v16, 0x1

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v16

    const/16 v16, 0x2

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v19, v16

    invoke-static/range {v17 .. v19}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->f()B

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_5

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->g()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-gtz v14, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v14

    invoke-static {v14, v2}, Lcom/liulishuo/filedownloader/e/g;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)Z

    move-result v14

    if-nez v14, :cond_6

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->l()Z

    move-result v16

    move/from16 v0, v16

    invoke-interface {v11, v3, v14, v15, v0}, Lcom/liulishuo/filedownloader/e/c$d;->a(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v14

    if-eq v14, v3, :cond_9

    sget-boolean v15, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v15, :cond_8

    const-class v15, Lcom/liulishuo/filedownloader/b/a;

    const-string v16, "the id is changed on restoring from db: old[%d] -> new[%d]"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v2, v14}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(I)V

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v2}, Lcom/liulishuo/filedownloader/b/a$a;->a(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    :cond_9
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a$a;->b(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    move-wide/from16 v21, v4

    move-wide v4, v6

    move-wide v6, v2

    move-wide/from16 v2, v21

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/filedownloader/e/g;->b(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/b/a$a;->a()V

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_b

    const-class v2, Lcom/liulishuo/filedownloader/b/a;

    const-string v3, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v8

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v6

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-static {v2, v3, v10}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/liulishuo/filedownloader/e/g;->b(Landroid/content/Context;)V

    invoke-interface/range {p0 .. p0}, Lcom/liulishuo/filedownloader/b/a$a;->a()V

    sget-boolean v3, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v3, :cond_c

    const-class v3, Lcom/liulishuo/filedownloader/b/a;

    const-string v10, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v14

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v8

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v6

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v4

    invoke-static {v3, v10, v11}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    throw v2
.end method

.method private f()Lcom/liulishuo/filedownloader/e/c$a;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lcom/liulishuo/filedownloader/e/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lcom/liulishuo/filedownloader/e/c$a;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lcom/liulishuo/filedownloader/e/c$a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->i()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->e()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lcom/liulishuo/filedownloader/e/c$a;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->b:Lcom/liulishuo/filedownloader/e/c$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()Lcom/liulishuo/filedownloader/e/c$b;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lcom/liulishuo/filedownloader/e/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lcom/liulishuo/filedownloader/e/c$b;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lcom/liulishuo/filedownloader/e/c$b;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->i()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->d()Lcom/liulishuo/filedownloader/e/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lcom/liulishuo/filedownloader/e/c$b;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->c:Lcom/liulishuo/filedownloader/e/c$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h()Lcom/liulishuo/filedownloader/e/c$e;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lcom/liulishuo/filedownloader/e/c$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lcom/liulishuo/filedownloader/e/c$e;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lcom/liulishuo/filedownloader/e/c$e;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->i()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->c()Lcom/liulishuo/filedownloader/e/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lcom/liulishuo/filedownloader/e/c$e;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->d:Lcom/liulishuo/filedownloader/e/c$e;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i()Lcom/liulishuo/filedownloader/services/c;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/liulishuo/filedownloader/services/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/c;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->a:Lcom/liulishuo/filedownloader/services/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 6

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->f()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/liulishuo/filedownloader/e/c$a;->a(ILjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->g()Lcom/liulishuo/filedownloader/e/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/e/c$b;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)Lcom/liulishuo/filedownloader/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->h()Lcom/liulishuo/filedownloader/e/c$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/e/c$e;->a(Ljava/io/File;)Lcom/liulishuo/filedownloader/d/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/liulishuo/filedownloader/e/c$d;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lcom/liulishuo/filedownloader/e/c$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lcom/liulishuo/filedownloader/e/c$d;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lcom/liulishuo/filedownloader/e/c$d;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->i()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->f()Lcom/liulishuo/filedownloader/e/c$d;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lcom/liulishuo/filedownloader/e/c$d;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->f:Lcom/liulishuo/filedownloader/e/c$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Lcom/liulishuo/filedownloader/b/a;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lcom/liulishuo/filedownloader/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lcom/liulishuo/filedownloader/b/a;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lcom/liulishuo/filedownloader/b/a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->i()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->b()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lcom/liulishuo/filedownloader/b/a;

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lcom/liulishuo/filedownloader/b/a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/b/a;->b()Lcom/liulishuo/filedownloader/b/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/download/c;->a(Lcom/liulishuo/filedownloader/b/a$a;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/c;->e:Lcom/liulishuo/filedownloader/b/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->i()Lcom/liulishuo/filedownloader/services/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/services/c;->a()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/download/c;->h()Lcom/liulishuo/filedownloader/e/c$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/e/c$e;->a()Z

    move-result v0

    return v0
.end method
