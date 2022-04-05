.class public final Lcom/amap/api/col/l3/hh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/hh$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pngex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p2}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copy"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/hk;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/col/l3/hk;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/amap/api/col/l3/hn;->a(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/hk;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5, p2}, Lcom/amap/api/col/l3/hn;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/l3/gh;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v4, v5}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    const-string v4, "FileManager"

    const-string v5, "loadAvailableD"

    invoke-static {v3, v4, v5}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/amap/api/col/l3/gb;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/ge;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jar"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".o"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    .locals 12

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/hm;->a(Lcom/amap/api/col/l3/gh;)Lcom/amap/api/col/l3/hm$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/amap/api/col/l3/hm$a;->a:Z

    if-eqz v1, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/l3/hm$a;->b:Z

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/hh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/l3/hh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ldalvik/system/DexFile;->close()V

    const/4 v1, 0x0

    new-instance v5, Lcom/amap/api/col/l3/gz;

    invoke-static {}, Lcom/amap/api/col/l3/hj;->a()Lcom/amap/api/col/l3/hj;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/amap/api/col/l3/gz;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/amap/api/col/l3/hh$a;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;)Lcom/amap/api/col/l3/hk;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v11, v1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Lcom/amap/api/col/l3/ge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v10

    new-instance p1, Lcom/amap/api/col/l3/hk$a;

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/col/l3/hk$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "useod"

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/hk$a;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/hk$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/hk$a;->a()Lcom/amap/api/col/l3/hk;

    move-result-object p1

    invoke-static {p0}, Lcom/amap/api/col/l3/hk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p1, p0}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    iput-boolean v4, v0, Lcom/amap/api/col/l3/hm$a;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "BaseLoader"

    const-string v0, "getInstanceByThread()"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/amap/api/col/l3/hm;->a(Lcom/amap/api/col/l3/gh;)Lcom/amap/api/col/l3/hm$a;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v10, :cond_0

    :try_start_1
    iget-boolean v4, v10, Lcom/amap/api/col/l3/hm$a;->a:Z

    if-eqz v4, :cond_0

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10

    throw v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/amap/api/col/l3/hm$a;->b:Z

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v7, v4}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    move-object/from16 v8, p3

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/16 v4, 0x20

    :try_start_4
    new-array v4, v4, [B

    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/amap/api/col/l3/hh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v12, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/16 v0, 0x400

    :try_start_5
    new-array v2, v0, [B

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    if-ne v9, v0, :cond_1

    int-to-long v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_2

    :cond_1
    new-array v13, v9, [B

    invoke-static {v2, v3, v13, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v14, v8

    invoke-virtual {v12, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v12, v13}, Ljava/io/RandomAccessFile;->write([B)V

    :goto_2
    add-int/2addr v8, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/ge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/amap/api/col/l3/hk$a;

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v8

    move-object v4, v2

    move-object v5, v6

    move-object v6, v0

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3/hk$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "used"

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3/hk$a;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/hk$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hk$a;->a()Lcom/amap/api/col/l3/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/hk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {v11}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_7
    invoke-static {v12}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    if-eqz v10, :cond_3

    :try_start_8
    iput-boolean v3, v10, Lcom/amap/api/col/l3/hm$a;->b:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    nop

    :catchall_3
    :cond_3
    return-void

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v12, v2

    :goto_5
    move-object v2, v11

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v12, v2

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v10, v2

    move-object v12, v10

    :goto_6
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-static {v2}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    :try_start_b
    invoke-static {v12}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    if-eqz v10, :cond_4

    :try_start_c
    iput-boolean v3, v10, Lcom/amap/api/col/l3/hm$a;->b:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :catchall_b
    :cond_4
    throw v1
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/amap/api/col/l3/hh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;Lcom/amap/api/col/l3/gh;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/amap/api/col/l3/gz;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "used"

    invoke-static {p0, p2, v0}, Lcom/amap/api/col/l3/hh$a;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/hk;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hk;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/amap/api/col/l3/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/col/l3/hk;

    invoke-virtual {p0, v1, v2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/hk;

    const-string v2, "errorstatus"

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/hk;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/hk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/amap/api/col/l3/gz;

    invoke-static {}, Lcom/amap/api/col/l3/hj;->a()Lcom/amap/api/col/l3/hj;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/gz;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V

    const-string v1, "copy"

    invoke-static {v0, p1, v1}, Lcom/amap/api/col/l3/hh$a;->a(Lcom/amap/api/col/l3/gz;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/hn;->a(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/hk;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {p2}, Lcom/amap/api/col/l3/hk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/amap/api/col/l3/hk;

    invoke-virtual {p1, p0, p2}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3/hh$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/col/l3/hh$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
