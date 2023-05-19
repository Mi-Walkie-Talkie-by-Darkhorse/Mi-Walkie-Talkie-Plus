.class public Lcom/amap/api/col/l3/ft;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;
.implements Lcom/amap/api/trace/LBSTraceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/ft$c;,
        Lcom/amap/api/col/l3/ft$a;,
        Lcom/amap/api/col/l3/ft$b;
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

.field private h:Lcom/amap/api/col/l3/ap;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/amap/api/col/l3/ft$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/col/l3/ft;->e:J

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/ft;->f:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/ft;->j:I

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/ft;->k:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/amap/api/col/l3/ft;->l:J

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ft;->a:Landroid/content/Context;

    .line 9
    new-instance v0, Lcom/amap/api/maps/CoordinateConverter;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->b:Lcom/amap/api/maps/CoordinateConverter;

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ft;->c:Ljava/util/concurrent/ExecutorService;

    .line 11
    new-instance p1, Lcom/amap/api/col/l3/ft$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/ft$c;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/ft;->m:Lcom/amap/api/col/l3/ft$c;

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x3

    .line 13
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ft;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/ft;)Lcom/amap/api/trace/TraceStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ft;->g:Lcom/amap/api/trace/TraceStatusListener;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/ft;->h:Lcom/amap/api/col/l3/ap;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ap;->deactivate()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->h:Lcom/amap/api/col/l3/ap;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v1, Lcom/amap/api/col/l3/ft$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3/ft$b;-><init>(Lcom/amap/api/col/l3/ft;Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/amap/api/col/l3/ft;->queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/ft;)Lcom/amap/api/col/l3/ft$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ft;->m:Lcom/amap/api/col/l3/ft$c;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/ft;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ft;->b:Lcom/amap/api/maps/CoordinateConverter;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/ft;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ft;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/ft;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/ft;->d:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/ft;->a()V

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->d:Ljava/util/concurrent/ExecutorService;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 11
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    .line 12
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->g:Lcom/amap/api/trace/TraceStatusListener;

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 14
    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->a:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/amap/api/col/l3/ft;->b:Lcom/amap/api/maps/CoordinateConverter;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ft;->g:Lcom/amap/api/trace/TraceStatusListener;

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/amap/api/col/l3/ft;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 4
    iget-object v2, p0, Lcom/amap/api/col/l3/ft;->g:Lcom/amap/api/trace/TraceStatusListener;

    if-eqz v2, :cond_0

    const-string v3, "\u5b9a\u4f4d\u8d85\u65f6"

    const/4 v4, 0x0

    .line 5
    invoke-interface {v2, v4, v4, v3}, Lcom/amap/api/trace/TraceStatusListener;->onTraceStatus(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iput-wide v0, p0, Lcom/amap/api/col/l3/ft;->l:J

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Locate failed [errorCode:\""

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"  errorInfo:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    new-instance v11, Lcom/amap/api/trace/TraceLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v8

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/amap/api/trace/TraceLocation;-><init>(DDFFJ)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget p1, p0, Lcom/amap/api/col/l3/ft;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/col/l3/ft;->j:I

    .line 13
    iget v1, p0, Lcom/amap/api/col/l3/ft;->f:I

    if-ne p1, v1, :cond_2

    .line 14
    iget v1, p0, Lcom/amap/api/col/l3/ft;->k:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/amap/api/col/l3/ft;->k:I

    .line 15
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/ft;->a(I)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/api/col/l3/ft;->l:J

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/amap/api/col/l3/ft;->j:I

    .line 18
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v6, Lcom/amap/api/col/l3/ft$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/ft$a;-><init>(Lcom/amap/api/col/l3/ft;ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/ft;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setLocationInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/col/l3/ft;->e:J

    return-void
.end method

.method public setTraceStatusInterval(I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/ft;->f:I

    return-void
.end method

.method public startTrace(Lcom/amap/api/trace/TraceStatusListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ft;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/ft;->l:J

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/ft;->g:Lcom/amap/api/trace/TraceStatusListener;

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/ft;->h:Lcom/amap/api/col/l3/ap;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/amap/api/col/l3/ap;

    iget-object v0, p0, Lcom/amap/api/col/l3/ft;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/ap;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/ft;->h:Lcom/amap/api/col/l3/ap;

    .line 6
    iget-wide v0, p0, Lcom/amap/api/col/l3/ft;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/col/l3/ap;->a(J)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/ft;->h:Lcom/amap/api/col/l3/ap;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3/ap;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    :cond_1
    return-void
.end method

.method public stopTrace()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/ft;->a()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3/ft;->k:I

    if-le v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3/ft;->k:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amap/api/col/l3/ft;->f:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/amap/api/col/l3/ft;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/amap/api/col/l3/ft;->a(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget v3, p0, Lcom/amap/api/col/l3/ft;->k:I

    iget v4, p0, Lcom/amap/api/col/l3/ft;->f:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/amap/api/col/l3/ft;->k:I

    .line 7
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3/ft;->a(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
