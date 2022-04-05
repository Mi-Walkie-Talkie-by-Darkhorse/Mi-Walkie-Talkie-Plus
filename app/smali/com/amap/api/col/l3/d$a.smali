.class public final Lcom/amap/api/col/l3/d$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/d;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_7

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3f0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3f1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    const-wide/32 v2, 0x493e0

    const/16 v4, 0x401

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    const-string v0, "handleMessage ACTION_REBOOT_GPS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/g;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/g;->a()V

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object v1, v1, Lcom/amap/api/col/l3/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1, v4, v2, v3}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;IJ)V

    goto :goto_0

    :pswitch_1
    const-string v0, "handleMessage ACTION_DISABLE_BACKGROUND"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->d(Lcom/amap/api/col/l3/d;Landroid/os/Message;)V

    return-void

    :pswitch_2
    const-string v0, "handleMessage ACTION_ENABLE_BACKGROUND"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->c(Lcom/amap/api/col/l3/d;Landroid/os/Message;)V

    return-void

    :pswitch_3
    const-string v0, "handleMessage SET_OPTION"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object p1, v1, Lcom/amap/api/col/l3/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->f(Lcom/amap/api/col/l3/d;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_4
    const-string v0, "handleMessage STOP_GPS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/g;->a()V

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->e(Lcom/amap/api/col/l3/d;)V

    return-void

    :pswitch_5
    const-string v0, "handleMessage START_LBS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/g;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    const/16 v1, 0x3f8

    const-wide/16 v2, 0x3e8

    invoke-static {p1, v1, v2, v3}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;IJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->d(Lcom/amap/api/col/l3/d;)V

    return-void

    :pswitch_6
    const-string v0, "handleMessage START_GPS_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Lcom/amap/api/col/l3/d;->c:Lcom/amap/api/col/l3/g;

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object v1, v1, Lcom/amap/api/col/l3/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1, v4, v2, v3}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;IJ)V

    return-void

    :pswitch_7
    const-string v0, "handleMessage ACTION_SAVE_LAST_LOCATION"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->b(Lcom/amap/api/col/l3/d;Landroid/os/Message;)V

    return-void

    :pswitch_8
    const-string v0, "handleMessage REMOVE_LISTENER"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->b(Lcom/amap/api/col/l3/d;Lcom/amap/api/location/AMapLocationListener;)V

    return-void

    :pswitch_9
    const-string v0, "handleMessage STOP_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->c(Lcom/amap/api/col/l3/d;)V

    return-void

    :pswitch_a
    const-string v0, "handleMessage START_LOCATION"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->b(Lcom/amap/api/col/l3/d;)V

    return-void

    :pswitch_b
    const-string v0, "handleMessage SET_LISTENER"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;Lcom/amap/api/location/AMapLocationListener;)V

    return-void

    :cond_3
    const-string v0, "handleMessage DESTROY"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/d;->a()V

    return-void

    :cond_4
    const-string v0, "handleMessage STOP_SOCKET"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->h(Lcom/amap/api/col/l3/d;)V

    return-void

    :cond_5
    const-string v0, "handleMessage START_SOCKET"

    iget-object p1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {p1}, Lcom/amap/api/col/l3/d;->g(Lcom/amap/api/col/l3/d;)V

    return-void

    :cond_6
    const-string v0, "handleMessage ACTION_GPS_LOCATIONSUCCESS"

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->a(Lcom/amap/api/col/l3/d;Landroid/os/Message;)V

    return-void

    :cond_7
    const-string v0, "handleMessage ACTION_LBS_LOCATIONSUCCES"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/d$a;->a:Lcom/amap/api/col/l3/d;

    invoke-static {v1, p1}, Lcom/amap/api/col/l3/d;->b(Lcom/amap/api/col/l3/d;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-nez v0, :cond_8

    const-string v0, "handleMessage"

    :cond_8
    const-string v1, "AMapLocationManage$MHandlerr"

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3ff
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
