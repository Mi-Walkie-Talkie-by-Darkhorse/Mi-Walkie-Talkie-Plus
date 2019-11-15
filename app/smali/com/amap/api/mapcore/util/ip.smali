.class public final Lcom/amap/api/mapcore/util/ip;
.super Landroid/os/Handler;
.source "MapLocationManagerResultHandler.java"


# instance fields
.field a:Lcom/amap/api/mapcore/util/in;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/in;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ip;->a:Lcom/amap/api/mapcore/util/in;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ip;->a:Lcom/amap/api/mapcore/util/in;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/in;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ip;->a:Lcom/amap/api/mapcore/util/in;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ip;->a:Lcom/amap/api/mapcore/util/in;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ip;->a:Lcom/amap/api/mapcore/util/in;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ip;->a:Lcom/amap/api/mapcore/util/in;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/in;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ClientResultHandler"

    const-string v2, "RESULT_LOCATION_FINISH"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
