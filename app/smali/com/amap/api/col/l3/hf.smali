.class public final Lcom/amap/api/col/l3/hf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/hz$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/hf$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/amap/api/col/l3/hg;

.field protected b:Lcom/amap/api/col/l3/gh;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/io/RandomAccessFile;

.field protected e:Landroid/content/Context;

.field private f:Lcom/amap/api/col/l3/hz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    new-instance p3, Lcom/amap/api/col/l3/hz;

    new-instance v0, Lcom/amap/api/col/l3/hp;

    invoke-direct {v0, p2}, Lcom/amap/api/col/l3/hp;-><init>(Lcom/amap/api/col/l3/hg;)V

    invoke-direct {p3, v0}, Lcom/amap/api/col/l3/hz;-><init>(Lcom/amap/api/col/l3/ic;)V

    iput-object p3, p0, Lcom/amap/api/col/l3/hf;->f:Lcom/amap/api/col/l3/hz;

    iget-object p2, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object p2, p2, Lcom/amap/api/col/l3/hg;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/hf;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "dDownLoad"

    const-string p3, "DexDownLoad()"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/hf;)Lcom/amap/api/col/l3/hz;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/hf;->f:Lcom/amap/api/col/l3/hz;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3/hf$a;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/hf$a;-><init>(Lcom/amap/api/col/l3/hf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a([BJ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p2, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "dDownLoad"

    const-string p3, "onDownload()"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final b()Z
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3/gi;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    iget-object v4, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    invoke-static {v3, v4}, Lcom/amap/api/col/l3/hn;->a(Lcom/amap/api/col/l3/gh;Lcom/amap/api/col/l3/hg;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    invoke-static {v3}, Lcom/amap/api/col/l3/hn;->a(Lcom/amap/api/col/l3/hg;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/amap/api/col/l3/hn;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v4, p0, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/hn;->a(Landroid/content/Context;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/hg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/amap/api/col/l3/hg;->e()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/gi;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/hh;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_3
    return v2

    :catchall_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 10

    const-string v0, "dDownLoad"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->d:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lcom/amap/api/col/l3/hn;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hg;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/amap/api/col/l3/hn;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v1, v1, Lcom/amap/api/col/l3/hg;->d:Ljava/lang/String;

    new-instance v8, Lcom/amap/api/col/l3/gz;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/hj;->a()Lcom/amap/api/col/l3/hj;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Lcom/amap/api/col/l3/gz;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V

    new-instance v9, Lcom/amap/api/col/l3/hk$a;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v3, v2, Lcom/amap/api/col/l3/hg;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v5, v2, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v7, v2, Lcom/amap/api/col/l3/hg;->e:Ljava/lang/String;

    move-object v2, v9

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3/hk$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "copy"

    invoke-virtual {v9, v2}, Lcom/amap/api/col/l3/hk$a;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/hk$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/l3/hk$a;->a()Lcom/amap/api/col/l3/hk;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v3, v3, Lcom/amap/api/col/l3/hg;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v4, v4, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v5, v5, Lcom/amap/api/col/l3/hg;->e:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5}, Lcom/amap/api/col/l3/hk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Lcom/amap/api/col/l3/gz;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v2, v2, Lcom/amap/api/col/l3/hg;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "clearMarker()"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_0
    :try_start_3
    invoke-static {}, Lcom/amap/api/col/l3/hm;->b()Lcom/amap/api/col/l3/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/l3/hm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/amap/api/col/l3/hf$a;

    invoke-direct {v2, p0, v8}, Lcom/amap/api/col/l3/hf$a;-><init>(Lcom/amap/api/col/l3/hf;Lcom/amap/api/col/l3/gz;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    const-string v2, "onFinish1"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/amap/api/col/l3/il;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "O008"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/col/l3/il;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "{\"param_int_first\":1}"

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/il;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/im;->a(Lcom/amap/api/col/l3/il;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :cond_1
    :try_start_5
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    :try_start_6
    const-string v2, "onFinish"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    :catchall_3
    move-exception v1

    const-string v2, "onFinish()"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
