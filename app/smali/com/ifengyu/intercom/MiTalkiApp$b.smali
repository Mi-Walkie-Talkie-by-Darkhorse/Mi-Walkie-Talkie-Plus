.class Lcom/ifengyu/intercom/MiTalkiApp$b;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$b;->a:Lcom/ifengyu/intercom/MiTalkiApp;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$b;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Landroid/app/Activity;)Landroid/app/Activity;

    instance-of v0, p1, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$b;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Z)Z

    :cond_0
    instance-of v0, p1, Lcom/ifengyu/intercom/ui/SplashActivity;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$b;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->d()V

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    instance-of p1, p1, Lcom/ifengyu/intercom/ui/MainActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$b;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Z)Z

    :cond_0
    return-void
.end method
