.class Lcom/ifengyu/intercom/ui/SplashActivity$5;
.super Ljava/lang/Object;
.source "SplashActivity.java"

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->b:Lpl/droidsonroids/gif/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->f(Lcom/ifengyu/intercom/ui/SplashActivity;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->b:Lpl/droidsonroids/gif/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->b:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->g(Lcom/ifengyu/intercom/ui/SplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "url"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iget-object v4, v4, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-array v2, v7, [Landroid/content/Intent;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->startActivities([Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->finish()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.intercom.FROM_SPLASH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->h(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/SplashActivity;->h(Lcom/ifengyu/intercom/ui/SplashActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    const-class v3, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "url"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->a:Lcom/ifengyu/intercom/bean/AdModel;

    iget-object v4, v4, Lcom/ifengyu/intercom/bean/AdModel;->detailUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-array v2, v7, [Landroid/content/Intent;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/SplashActivity;->startActivities([Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/SplashActivity$5;->c:Lcom/ifengyu/intercom/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/SplashActivity;->finish()V

    goto/16 :goto_0
.end method
