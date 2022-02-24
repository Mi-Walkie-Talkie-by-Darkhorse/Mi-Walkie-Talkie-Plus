.class public Lcom/ifengyu/intercom/lite/utils/e;
.super Ljava/lang/Object;
.source "EventUtils.java"


# direct methods
.method public static a(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const v1, 0x8f03

    if-eq p0, v1, :cond_0

    const-string p0, "DOLPHIN"

    goto :goto_0

    :cond_0
    const-string p0, "LITE"

    goto :goto_0

    :cond_1
    const-string p0, "SEAL"

    goto :goto_0

    :cond_2
    const-string p0, "SHARK"

    :goto_0
    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p0

    const-string v1, "Device_Connection_Counter_Event"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
