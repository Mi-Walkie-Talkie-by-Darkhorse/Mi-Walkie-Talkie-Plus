.class public Lcom/shanlitech/et/core/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/core/CoreService$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Lcom/shanlitech/et/core/CoreService$a;

.field private b:Lcom/shanlitech/et/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/core/CoreService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/core/CoreService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/shanlitech/et/core/CoreService$a;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/core/CoreService$a;-><init>(Lcom/shanlitech/et/core/CoreService;)V

    iput-object v0, p0, Lcom/shanlitech/et/core/CoreService;->a:Lcom/shanlitech/et/core/CoreService$a;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/CoreService;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Notification;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x104000a

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string p1, "RUN FROEGRAND"

    .line 2
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    const-string p1, "RUN backgrand"

    .line 4
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p1, "onBind"

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shanlitech/et/core/CoreService;->a:Lcom/shanlitech/et/core/CoreService$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/c/r;->e()Lcom/shanlitech/et/core/c/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/r;->g(Landroid/content/Context;)Lcom/shanlitech/et/core/c/r;

    .line 3
    new-instance v0, Lcom/shanlitech/et/core/a;

    invoke-direct {v0}, Lcom/shanlitech/et/core/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/a;->e(Lcom/shanlitech/et/core/CoreService;)Lcom/shanlitech/et/core/a;

    iput-object v0, p0, Lcom/shanlitech/et/core/CoreService;->b:Lcom/shanlitech/et/core/a;

    const-string v0, "onCreate: success..."

    .line 4
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->k(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->u(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/core/CoreService;->b:Lcom/shanlitech/et/core/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/a;->f(Lcom/shanlitech/et/core/CoreService;)V

    .line 5
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    .line 6
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const-string v0, "onLowMemory"

    .line 1
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "onStartCommand"

    .line 1
    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskRemoved>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "onUnBind"

    .line 1
    invoke-direct {p0, v0}, Lcom/shanlitech/et/core/CoreService;->a(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startForeground(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Account;->getOption()Lcom/shanlitech/et/core/sl/model/IAccountOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/CoreService;->b(Landroid/app/Notification;)V

    :cond_0
    return-void
.end method
