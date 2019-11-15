.class final Lcom/amap/api/col/sl/de;
.super Lcom/amap/api/col/sl/cz;
.source "DynamicLoader.java"


# instance fields
.field private i:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/sl/cz;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V

    iput-object v1, p0, Lcom/amap/api/col/sl/de;->i:Ljava/security/PublicKey;

    invoke-virtual {p2}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/col/sl/bz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/sl/db;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "dexPath or dexOutputDir is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/sl/dg;->b()Lcom/amap/api/col/sl/dg;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-virtual {v4, v5}, Lcom/amap/api/col/sl/dg;->a(Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/dg$a;

    move-result-object v4

    iget-boolean v4, v4, Lcom/amap/api/col/sl/dg$a;->b:Z

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "file is downloading"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/sl/de;->c:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/sl/dg;->b()Lcom/amap/api/col/sl/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/dg;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/de$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/amap/api/col/sl/de$1;-><init>(Lcom/amap/api/col/sl/de;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-void

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/amap/api/col/sl/dg;->b()Lcom/amap/api/col/sl/dg;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-virtual {v4, v5}, Lcom/amap/api/col/sl/dg;->a(Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/dg$a;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/amap/api/col/sl/dg$a;->a:Z

    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/col/sl/de;->b()V

    iget-boolean v4, v1, Lcom/amap/api/col/sl/dg$a;->b:Z

    if-eqz v4, :cond_7

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "file is downloading"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "dLoader"

    const-string v3, "loadFile"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "load file fail"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, v1, Lcom/amap/api/col/sl/dg$a;->a:Z

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    :goto_2
    throw v0

    :cond_7
    const/4 v4, 0x0

    :try_start_6
    invoke-static {v2, v0, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/de;->c:Ldalvik/system/DexFile;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, v1, Lcom/amap/api/col/sl/dg$a;->a:Z

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v1

    throw v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    :try_start_1
    invoke-static {v1}, Lcom/amap/api/col/sl/dh;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "DyLoader"

    const-string v3, "loadJa"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1}, Lcom/amap/api/col/sl/dh;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v1}, Lcom/amap/api/col/sl/dh;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/de;->i:Ljava/security/PublicKey;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/dh;->a()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/de;->i:Ljava/security/PublicKey;

    :cond_0
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "classes.dex"

    invoke-virtual {v3, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_3
    invoke-static {v3, v1}, Lcom/amap/api/col/sl/de;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-direct {p0, v1}, Lcom/amap/api/col/sl/de;->a([Ljava/security/cert/Certificate;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    :try_start_6
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_1
    :try_start_7
    const-string v3, "DyLoader"

    const-string v4, "verify"

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :cond_4
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private a([Ljava/security/cert/Certificate;)Z
    .locals 3

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/amap/api/col/sl/de;->i:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "DyLoader"

    const-string v2, "check"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    :try_start_0
    new-instance v6, Lcom/amap/api/col/sl/cq;

    invoke-static {}, Lcom/amap/api/col/sl/dd;->b()Lcom/amap/api/col/sl/dd;

    move-result-object v1

    invoke-direct {v6, p1, v1}, Lcom/amap/api/col/sl/cq;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/cp;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/amap/api/col/sl/db$a;->a(Lcom/amap/api/col/sl/cq;Ljava/lang/String;)Lcom/amap/api/col/sl/df;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/sl/df;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/de;->f:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/amap/api/col/sl/de;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/amap/api/col/sl/de;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amap/api/col/sl/bz;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3, v1}, Lcom/amap/api/col/sl/dh;->a(Lcom/amap/api/col/sl/cq;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/sl/bz;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/sl/de;->d:Z

    iget-object v1, p0, Lcom/amap/api/col/sl/de;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v6, v3}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/cq;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/de;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-static {v1, v6, v3}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/cq;Lcom/amap/api/col/sl/bz;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v1, p0, Lcom/amap/api/col/sl/de;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/sl/de;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-static {v1, v3}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/sl/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/amap/api/col/sl/de;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/sl/de;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-static {v6, v1, v2, v3}, Lcom/amap/api/col/sl/dh;->a(Lcom/amap/api/col/sl/cq;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/col/sl/bz;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v6, v1}, Lcom/amap/api/col/sl/db$a;->a(Lcom/amap/api/col/sl/cq;Ljava/lang/String;)Lcom/amap/api/col/sl/df;

    move-result-object v3

    if-eqz v3, :cond_5

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/de;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/de;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/amap/api/col/sl/df$a;

    invoke-static {v2}, Lcom/amap/api/col/sl/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/sl/de;->e:Lcom/amap/api/col/sl/bz;

    invoke-virtual {v4}, Lcom/amap/api/col/sl/bz;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/df$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "useod"

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/df$a;->a(Ljava/lang/String;)Lcom/amap/api/col/sl/df$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/sl/df$a;->a()Lcom/amap/api/col/sl/df;

    move-result-object v0

    invoke-static {v1}, Lcom/amap/api/col/sl/df;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/amap/api/col/sl/cq;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "dLoader"

    const-string v2, "verifyD()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/de;->c:Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/amap/api/col/sl/de;->h:Z

    throw v0

    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/sl/de;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/sl/de;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/amap/api/col/sl/de;->h:Z

    :goto_1
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string v2, "dLoader"

    const-string v3, "findCl"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/sl/de;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "dLoader"

    const-string v2, "findCl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/amap/api/col/sl/de;->h:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/de;->c:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/de;->c:Ldalvik/system/DexFile;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v2, p0, Lcom/amap/api/col/sl/de;->c:Ldalvik/system/DexFile;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p0, Lcom/amap/api/col/sl/de;->h:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_3
    :try_start_b
    iget-object v2, p0, Lcom/amap/api/col/sl/de;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v1, p0, Lcom/amap/api/col/sl/de;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_3
    iput-boolean v4, p0, Lcom/amap/api/col/sl/de;->h:Z

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v2

    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_3
    move-exception v1

    :try_start_e
    const-string v2, "dLoader"

    const-string v3, "findCl"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method
