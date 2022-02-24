.class public final Lcom/amap/api/col/l3/ks;
.super Landroid/os/Handler;
.source "MapLocationManagerResultHandler.java"


# instance fields
.field a:Lcom/amap/api/col/l3/kq;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/amap/api/col/l3/kq;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3/ks;->a:Lcom/amap/api/col/l3/kq;

    iput-object p2, p0, Lcom/amap/api/col/l3/ks;->a:Lcom/amap/api/col/l3/kq;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/kq;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ks;->a:Lcom/amap/api/col/l3/kq;

    iput-object p1, p0, Lcom/amap/api/col/l3/ks;->a:Lcom/amap/api/col/l3/kq;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ks;->a:Lcom/amap/api/col/l3/kq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/ks;->a:Lcom/amap/api/col/l3/kq;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/kq;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ClientResultHandler"

    const-string v1, "RESULT_LOCATION_FINISH"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
