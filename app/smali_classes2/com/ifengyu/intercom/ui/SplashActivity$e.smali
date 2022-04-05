.class Lcom/ifengyu/intercom/ui/SplashActivity$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/SplashActivity;->a(Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/bean/AdModel;

.field final synthetic b:Lpl/droidsonroids/gif/c;

.field final synthetic c:Lcom/ifengyu/intercom/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/SplashActivity;Lcom/ifengyu/intercom/bean/AdModel;Lpl/droidsonroids/gif/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->b:Lpl/droidsonroids/gif/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->d(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->b:Lpl/droidsonroids/gif/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lpl/droidsonroids/gif/c;->pause()V

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/SplashActivity;->b(Lcom/ifengyu/intercom/ui/SplashActivity;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "url"

    const-string v4, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v6, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v7, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iget-object v6, v6, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-array v2, v2, [Landroid/content/Intent;

    aput-object p1, v2, v1

    aput-object v5, v2, v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LiteLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v5, "com.ifengyu.intercom.FROM_SPLASH"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/SplashActivity;->c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/SplashActivity;->c(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v7, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iget-object v6, v6, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-array v2, v2, [Landroid/content/Intent;

    aput-object p1, v2, v1

    aput-object v5, v2, v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$e;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
