.class Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;
.super Landroid/content/BroadcastReceiver;
.source "ShareLocationService.java"


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ShareLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a5\u6536\u5230\u5e7f\u64ad--\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ac;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a()Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->g(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->f(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->e(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$3;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->a(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->k(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    invoke-virtual {v0, v8, v4, v5, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_4

    invoke-virtual {v0, v8, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v8, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method
