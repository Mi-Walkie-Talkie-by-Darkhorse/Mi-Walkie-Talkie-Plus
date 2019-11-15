.class public Lcom/amap/api/mapcore/util/hd;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/hd$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pngex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Lcom/amap/api/mapcore/util/fx;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copy"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/hh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/mapcore/util/hh;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v3}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/hh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4, p2}, Lcom/amap/api/mapcore/util/hj;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;Lcom/amap/api/mapcore/util/fx;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v4, v5}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "FileManager"

    const-string v5, "loadAvailableD"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fs;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/hd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BaseLoader"

    const-string v2, "getInstanceByThread()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    invoke-static {p0, v1, v2, p1}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/amap/api/mapcore/util/fx;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x20

    :try_start_1
    new-array v0, v0, [B

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/amap/api/mapcore/util/hd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v6, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x400

    :try_start_2
    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    const/16 v8, 0x400

    if-ne v5, v8, :cond_0

    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V

    :goto_1
    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    new-array v8, v5, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2, v9, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v10, v0

    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v8}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    :goto_3
    :try_start_4
    invoke-static {v7}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    invoke-static {v6}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    throw v0

    :cond_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/amap/api/mapcore/util/hh$a;

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/hh$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "used"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/hh$a;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hh$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh$a;->a()Lcom/amap/api/mapcore/util/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/hh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/hd$a;->a(Lcom/amap/api/mapcore/util/gl;Lcom/amap/api/mapcore/util/hh;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v7}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    :try_start_8
    invoke-static {v6}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :goto_7
    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v2

    move-object v7, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v7

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amap/api/mapcore/util/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;Lcom/amap/api/mapcore/util/fx;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/amap/api/mapcore/util/fx;)V
    .locals 7

    const/4 v5, 0x0

    new-instance v6, Lcom/amap/api/mapcore/util/gl;

    invoke-static {}, Lcom/amap/api/mapcore/util/hf;->a()Lcom/amap/api/mapcore/util/hf;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/amap/api/mapcore/util/gl;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gk;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/amap/api/mapcore/util/hd$a;->a(Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)Lcom/amap/api/mapcore/util/hh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->e()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/amap/api/mapcore/util/fu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/amap/api/mapcore/util/fx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/amap/api/mapcore/util/fx;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/amap/api/mapcore/util/hh$a;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/hh$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "useod"

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/hh$a;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/hh$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh$a;->a()Lcom/amap/api/mapcore/util/hh;

    move-result-object v0

    invoke-static {v1}, Lcom/amap/api/mapcore/util/hh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/amap/api/mapcore/util/hd$a;->a(Lcom/amap/api/mapcore/util/gl;Lcom/amap/api/mapcore/util/hh;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static a(Lcom/amap/api/mapcore/util/gl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "used"

    invoke-static {p0, p2, v0}, Lcom/amap/api/mapcore/util/hd$a;->a(Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/hh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amap/api/mapcore/util/hh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/amap/api/mapcore/util/hh;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore/util/gl;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/hh;

    const-string v2, "errorstatus"

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/hh;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/hh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/amap/api/mapcore/util/hd$a;->a(Lcom/amap/api/mapcore/util/gl;Lcom/amap/api/mapcore/util/hh;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/amap/api/mapcore/util/gl;

    invoke-static {}, Lcom/amap/api/mapcore/util/hf;->a()Lcom/amap/api/mapcore/util/hf;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/amap/api/mapcore/util/gl;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/gk;)V

    const-string v1, "copy"

    invoke-static {v2, p1, v1}, Lcom/amap/api/mapcore/util/hd$a;->a(Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/hj;->a(Ljava/util/List;)V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/hh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/amap/api/mapcore/util/hd;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/amap/api/mapcore/util/gl;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/amap/api/mapcore/util/hd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/hh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/mapcore/util/hh;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore/util/gl;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore/util/gf;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/hd$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/mapcore/util/hd$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
