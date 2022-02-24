.class public final Lcom/amap/api/col/l3/d$c;
.super Landroid/os/Handler;
.source "AmapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/d;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/d;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    .line 4
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-boolean v1, v1, Lcom/amap/api/col/l3/d;->m:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3/jz;->d()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "handleMessage RESULT_LBS_ON_CALLBACK"

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocation;

    .line 5
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;Lcom/amap/api/location/AMapLocation;)V

    return-void

    :pswitch_1
    const-string v0, "handleMessage RESULT_INSTALLED_MOCK_APP"

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "installMockApp"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->a(Z)Z

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x85d    # 3.0E-42f

    .line 8
    invoke-static {v0, v1}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_3
    const-string v0, "handleMessage RESULT_NGPS_ABLE"

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    const-string v2, "ngpsAble"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->b(Lcom/amap/api/col/l3/d;Z)Z

    return-void

    :pswitch_4
    const-string v0, "handleMessage RESULT_GPS_GEO_SUCCESS"

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-object v1, v1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-object v1, v1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/g;->a(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_5
    const-string v0, "handleMessage RESULT_GPS_LOCATIONCHANGE"

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "optBundle"

    .line 15
    iget-object v2, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-object v2, v2, Lcom/amap/api/col/l3/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/l3/jz;->a(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "handleMessage RESULT_GPS_LOCATIONSUCCESS"

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xc

    .line 18
    iput v2, v1, Landroid/os/Message;->what:I

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    iget-object p1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->w:Lcom/amap/api/col/l3/d$a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    const-string v0, "handleMessage RESULT_LBS_LOCATIONSUCCESS"

    .line 21
    iget-object v1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-object v1, v1, Lcom/amap/api/col/l3/d;->w:Lcom/amap/api/col/l3/d$a;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    .line 22
    iput v2, v1, Landroid/os/Message;->what:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 24
    iget-object p1, p0, Lcom/amap/api/col/l3/d$c;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->w:Lcom/amap/api/col/l3/d$a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-nez v0, :cond_4

    const-string v0, "handleMessage"

    :cond_4
    const-string v1, "AmapLocationManager$MainHandler"

    .line 25
    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
