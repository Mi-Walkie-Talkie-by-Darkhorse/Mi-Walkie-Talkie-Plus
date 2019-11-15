.class public Lcom/amap/api/col/sl/ec;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/col/sl/dw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/ec;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/ec$3;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/ec$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/amap/api/col/sl/ec;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/amap/api/col/sl/ed;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/sl/dw;

    move-result-object v1

    sget-object v2, Lcom/amap/api/col/sl/ck;->h:Ljava/lang/String;

    const/16 v3, 0x3e8

    const v4, 0x4b000

    const-string v5, "2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/ed;->a(Landroid/content/Context;Lcom/amap/api/col/sl/dw;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->e:Lcom/amap/api/col/sl/cd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/cf;

    invoke-direct {v0}, Lcom/amap/api/col/sl/cf;-><init>()V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->e:Lcom/amap/api/col/sl/cd;

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, v1}, Lcom/amap/api/col/sl/dx;->a(Ljava/lang/String;[BLcom/amap/api/col/sl/dw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "stm"

    const-string v2, "wts"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/amap/api/col/sl/eb;Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/amap/api/col/sl/ec;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/amap/api/col/sl/ec$1;

    invoke-direct {v2, p1, p0}, Lcom/amap/api/col/sl/ec$1;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/eb;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/sl/eb;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-class v1, Lcom/amap/api/col/sl/ec;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/amap/api/col/sl/ec$2;

    invoke-direct {v2, p0, p1}, Lcom/amap/api/col/sl/ec$2;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
