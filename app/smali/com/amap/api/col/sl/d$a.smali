.class public final Lcom/amap/api/col/sl/d$a;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/d;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/d;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManage$MHandlerr"

    const-string v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/d;->b(Lcom/amap/api/col/sl/d;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_3
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->d(Lcom/amap/api/col/sl/d;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :pswitch_4
    :try_start_7
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->e(Lcom/amap/api/col/sl/d;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_8
    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :pswitch_5
    :try_start_9
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/d;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_a
    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0, p1}, Lcom/amap/api/col/sl/d;->b(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    :pswitch_7
    :try_start_b
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, v0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    iget-object v1, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v1, v1, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    :try_start_c
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_0

    :pswitch_8
    :try_start_d
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, v0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->f(Lcom/amap/api/col/sl/d;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_e
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_LBS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    :cond_1
    :try_start_f
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->g(Lcom/amap/api/col/sl/d;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    :pswitch_9
    :try_start_10
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, v0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/g;->a()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_11
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage STOP_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    :pswitch_a
    :try_start_12
    iget-object v1, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, v1, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    iget-object v0, v0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->h(Lcom/amap/api/col/sl/d;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    :try_start_13
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage SET_OPTION"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_0

    :pswitch_b
    :try_start_14
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->i(Lcom/amap/api/col/sl/d;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_15
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_0

    :pswitch_c
    :try_start_16
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->j(Lcom/amap/api/col/sl/d;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    :try_start_17
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_0

    :pswitch_d
    :try_start_18
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0, p1}, Lcom/amap/api/col/sl/d;->c(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v0

    :try_start_19
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_ENABLE_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_0

    :pswitch_e
    :try_start_1a
    iget-object v0, p0, Lcom/amap/api/col/sl/d$a;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0, p1}, Lcom/amap/api/col/sl/d;->d(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    :try_start_1b
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_DISABLE_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
