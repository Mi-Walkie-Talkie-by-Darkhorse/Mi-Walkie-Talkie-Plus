.class Lcom/ifengyu/intercom/MiTalkiApp$2;
.super Ljava/lang/Object;
.source "MiTalkiApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/MiTalkiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/MiTalkiApp;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/MiTalkiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$2;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$2;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Z)Z

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ifengyu/intercom/b/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/activity/PermissionActivity;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/SplashActivity;

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "MiTalkiApp"

    const-string v1, "avoiding repetion"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/PermissionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$2;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Z)Z

    :cond_0
    return-void
.end method
