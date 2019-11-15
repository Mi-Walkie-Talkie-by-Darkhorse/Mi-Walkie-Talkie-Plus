.class public final Lcom/amap/api/mapcore/util/io;
.super Landroid/os/Handler;
.source "MapLocationManagerActionHandler.java"


# instance fields
.field a:Lcom/amap/api/mapcore/util/in;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/in;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/in;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_SET_OPTION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/in;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_SET_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/in;->b(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_START_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in;->b()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_GET_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in;->c()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/io;->a:Lcom/amap/api/mapcore/util/in;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/in;->d()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "ClientActionHandler"

    const-string v2, "ACTION_DESTROY"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
