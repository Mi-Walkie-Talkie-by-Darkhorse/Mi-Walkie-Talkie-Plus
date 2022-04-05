.class Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/service/ShareLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a5\u6536\u5230\u5e7f\u64ad--\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/j0;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShareLocationService"

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$c;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x2

    if-lt v2, v3, :cond_2

    invoke-virtual {p2, v4, v0, v1, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x13

    if-lt v2, v3, :cond_3

    invoke-virtual {p2, v4, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v4, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_4
    :goto_1
    return-void
.end method
