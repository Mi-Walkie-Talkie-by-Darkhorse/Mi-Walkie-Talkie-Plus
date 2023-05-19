.class Lcom/ifengyu/intercom/service/ShareLocationService$b;
.super Landroid/content/BroadcastReceiver;
.source "ShareLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/service/ShareLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/service/ShareLocationService;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/service/ShareLocationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->a(Lcom/ifengyu/intercom/service/ShareLocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a5\u6536\u5230\u5e7f\u64ad--\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/i0;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShareLocationService"

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->e()Lcom/ifengyu/intercom/service/ShareLocationService;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/service/ShareLocationService;->b(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/service/ShareLocationService;->c(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/service/ShareLocationService;->c(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/service/ShareLocationService;->b(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object p2

    iget-object v0, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {v0}, Lcom/ifengyu/intercom/service/ShareLocationService;->c(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 7
    iget-object p2, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {p2}, Lcom/ifengyu/intercom/service/ShareLocationService;->b(Lcom/ifengyu/intercom/service/ShareLocationService;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    const-string p2, "alarm"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {v1}, Lcom/ifengyu/intercom/service/ShareLocationService;->a(Lcom/ifengyu/intercom/service/ShareLocationService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 11
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/service/ShareLocationService$b;->a:Lcom/ifengyu/intercom/service/ShareLocationService;

    invoke-static {p1}, Lcom/ifengyu/intercom/service/ShareLocationService;->d(Lcom/ifengyu/intercom/service/ShareLocationService;)V

    :cond_1
    return-void
.end method
