.class public Lcom/amap/api/mapcore/util/in;
.super Ljava/lang/Object;
.source "MapLocationManager.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/in$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field d:Landroid/os/Handler;

.field e:Lcom/amap/api/mapcore/util/in$a;

.field f:Landroid/os/Handler;

.field g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field h:Lcom/amap/api/mapcore/util/iq;

.field i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

.field j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/in;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/in;->d:Landroid/os/Handler;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    sget-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Hight_Accuracy:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/in;->j:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/in;->e()V

    return-void
.end method

.method private a(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/in;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/io;

    invoke-direct {v0, p1, p0}, Lcom/amap/api/mapcore/util/io;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/in;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/in;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/in;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/ip;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/in;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/ip;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/in;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->d:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/in$a;

    const-string v1, "locaitonClientActionThread"

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/in$a;-><init>(Ljava/lang/String;Lcom/amap/api/mapcore/util/in;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/in$a;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in$a;->start()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/in;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_0
    :try_start_2
    new-instance v0, Lcom/amap/api/mapcore/util/ip;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ip;-><init>(Lcom/amap/api/mapcore/util/in;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->d:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "initResultHandler"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "initActionThreadAndActionHandler"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/in;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->f:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/in;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/in;->j:Z

    const/16 v0, 0x3ed

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "doStartLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/in;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setProvider(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/jg;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/jg;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setBearing(F)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/jg;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setSpeed(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;->onLocationChanged(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/in;->c()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v0

    const-string v1, "LocationClientManger"

    const-string v2, "callBackLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 3

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "doSetLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/iq;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/in;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/in;->c()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/in;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    return-void
.end method

.method final b()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x3ed

    const-wide/16 v0, 0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/iq;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    :goto_0
    invoke-direct {p0, v6, v7, v0, v1}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "LocationClientManager"

    const-string v4, "doGetLocation"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    :goto_2
    invoke-direct {p0, v6, v7, v0, v1}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v0

    goto :goto_2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOnceLocation()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_5

    :goto_3
    invoke-direct {p0, v6, v7, v0, v1}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V

    :cond_4
    throw v2

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->g:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v0

    goto :goto_3
.end method

.method final b(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/in;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "doUnregisterListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final c()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/in;->j:Z

    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/in;->a(I)V

    const/16 v0, 0x3ed

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/in;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iq;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "doStopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final d()V
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/in;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->h:Lcom/amap/api/mapcore/util/iq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iq;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/in;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in$a;->quit()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/in;->e:Lcom/amap/api/mapcore/util/in$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in$a;->quit()Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    const/16 v0, 0x3ef

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 4

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationOption(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 4

    const/16 v0, 0x3e9

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 4

    const/16 v0, 0x3ee

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 4

    const/16 v0, 0x3ee

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/mapcore/util/in;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationClientManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
