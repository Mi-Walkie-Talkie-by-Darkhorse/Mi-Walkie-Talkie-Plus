.class public Lcom/amap/api/mapcore/util/fl;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;
.implements Lcom/amap/api/trace/LBSTraceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fl$c;,
        Lcom/amap/api/mapcore/util/fl$a;,
        Lcom/amap/api/mapcore/util/fl$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/CoordinateConverter;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:J

.field private f:I

.field private g:Lcom/amap/api/trace/TraceStatusListener;

.field private h:Lcom/amap/api/mapcore/util/ag;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/amap/api/mapcore/util/fl$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fl;->e:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/mapcore/util/fl;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    iput v2, p0, Lcom/amap/api/mapcore/util/fl;->j:I

    iput v2, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fl;->l:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->a:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->b:Lcom/amap/api/maps/CoordinateConverter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/amap/api/mapcore/util/fl$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fl$c;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->m:Lcom/amap/api/mapcore/util/fl$c;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/trace/TraceStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->g:Lcom/amap/api/trace/TraceStatusListener;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ag;->deactivate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/amap/api/mapcore/util/fl$b;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/fl$b;-><init>(Lcom/amap/api/mapcore/util/fl;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/fl;->queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/mapcore/util/fl$c;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->m:Lcom/amap/api/mapcore/util/fl$c;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->b:Lcom/amap/api/maps/CoordinateConverter;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/fl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/fl;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fl;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->d:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->g:Lcom/amap/api/trace/TraceStatusListener;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/amap/api/mapcore/util/fl;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/fl;->b:Lcom/amap/api/maps/CoordinateConverter;

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->g:Lcom/amap/api/trace/TraceStatusListener;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/fl;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl;->g:Lcom/amap/api/trace/TraceStatusListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl;->g:Lcom/amap/api/trace/TraceStatusListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\u5b9a\u4f4d\u8d85\u65f6"

    invoke-interface {v2, v3, v4, v5}, Lcom/amap/api/trace/TraceStatusListener;->onTraceStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fl;->l:J

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "LBSTraceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locate failed [errorCode:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"  errorInfo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "errorInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    new-instance v1, Lcom/amap/api/trace/TraceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v7

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/trace/TraceLocation;-><init>(DDFFJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/amap/api/mapcore/util/fl;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fl;->j:I

    iget v0, p0, Lcom/amap/api/mapcore/util/fl;->j:I

    iget v1, p0, Lcom/amap/api/mapcore/util/fl;->f:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    iget v1, p0, Lcom/amap/api/mapcore/util/fl;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    iget v0, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/fl;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fl;->l:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/fl;->j:I

    :cond_3
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/fl$a;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/fl$a;-><init>(Lcom/amap/api/mapcore/util/fl;ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLocationInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/mapcore/util/fl;->e:J

    return-void
.end method

.method public setTraceStatusInterval(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/fl;->f:I

    return-void
.end method

.method public startTrace(Lcom/amap/api/trace/TraceStatusListener;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "LBSTraceClient"

    const-string v1, "Context need to be initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/fl;->l:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fl;->g:Lcom/amap/api/trace/TraceStatusListener;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/ag;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/fl;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/ag;->a(J)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->h:Lcom/amap/api/mapcore/util/ag;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/ag;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    goto :goto_0
.end method

.method public stopTrace()V
    .locals 5

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fl;->a()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/fl;->f:I

    div-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fl;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/fl;->a(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    iget v4, p0, Lcom/amap/api/mapcore/util/fl;->f:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    iget v3, p0, Lcom/amap/api/mapcore/util/fl;->k:I

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/fl;->a(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
