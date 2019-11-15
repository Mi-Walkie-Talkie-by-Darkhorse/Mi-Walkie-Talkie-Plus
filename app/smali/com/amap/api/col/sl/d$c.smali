.class public final Lcom/amap/api/col/sl/d$c;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/d;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    iget-boolean v0, v0, Lcom/amap/api/col/sl/d;->n:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/sl/fq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/d;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage RESULT_LBS_LOCATIONSUCCESS"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    const/16 v1, 0x85d    # 3.0E-42f

    :try_start_3
    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :sswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0, p1}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage RESULT_GPS_LOCATIONSUCCESS"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :sswitch_4
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    iget-object v2, v2, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/sl/fq;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/d;->b(Lcom/amap/api/col/sl/d;Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage RESULT_GPS_LOCATIONCHANGE"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :sswitch_5
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    iget-object v1, v1, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    iget-object v1, v1, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/sl/g;->a(Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_9
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage RESULT_GPS_GEO_SUCCESS"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    :sswitch_6
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    const-string v2, "ngpsAble"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/d;->b(Lcom/amap/api/col/sl/d;Z)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_b
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage RESULT_NGPS_ABLE"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :sswitch_7
    :try_start_c
    iget-object v0, p0, Lcom/amap/api/col/sl/d$c;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/d;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_d
    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage RESULT_FASTSKY"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_2
        0x64 -> :sswitch_7
    .end sparse-switch
.end method
