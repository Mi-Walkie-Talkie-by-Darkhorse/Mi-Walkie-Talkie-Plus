.class public Lcom/amap/api/location/APSService;
.super Landroid/app/Service;
.source "APSService.java"


# instance fields
.field a:Lcom/amap/api/location/APSServiceBase;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0, p1}, Lcom/amap/api/location/APSServiceBase;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onBind"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/sl/fw;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/fq;->b()Lcom/amap/api/col/sl/bz;

    move-result-object v1

    const-string v0, "AY29tLmFtYXAuYXBpLmxvY2F0aW9uLkFQU1NlcnZpY2VXcmFwcGVy"

    invoke-static {v0}, Lcom/amap/api/col/sl/ca;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amap/api/col/sl/f;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/APSServiceBase;

    iput-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/sl/f;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0}, Lcom/amap/api/location/APSServiceBase;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/f;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0}, Lcom/amap/api/location/APSServiceBase;->onDestroy()V

    iget-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/APSService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "g"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "i"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "h"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/amap/api/location/APSService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/location/APSServiceBase;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_2
    const-string v0, "j"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/location/APSService;->b:I

    :cond_2
    iget v0, p0, Lcom/amap/api/location/APSService;->b:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/location/APSService;->stopForeground(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/APSService;->c:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/location/APSService;->stopForeground(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSService"

    const-string v2, "onStartCommand"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_1
.end method
