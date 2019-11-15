.class public Lcom/sina/weibo/sdk/component/a;
.super Lcom/sina/weibo/sdk/component/d;
.source "AuthRequestParam.java"


# instance fields
.field private e:Lcom/sina/weibo/sdk/a/a;

.field private f:Lcom/sina/weibo/sdk/a/b;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/d;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/a;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-void
.end method


# virtual methods
.method public a()Lcom/sina/weibo/sdk/a/a;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->e:Lcom/sina/weibo/sdk/a/a;

    return-object v0
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lcom/sina/weibo/sdk/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lcom/sina/weibo/sdk/a/b;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/a/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_authinfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/a/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sina/weibo/sdk/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/a;->e:Lcom/sina/weibo/sdk/a/a;

    :cond_0
    const-string v0, "key_listener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lcom/sina/weibo/sdk/a/b;

    :cond_1
    return-void
.end method

.method public b()Lcom/sina/weibo/sdk/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lcom/sina/weibo/sdk/a/b;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->e:Lcom/sina/weibo/sdk/a/a;

    if-eqz v0, :cond_0

    const-string v0, "key_authinfo"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/a;->e:Lcom/sina/weibo/sdk/a/a;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/a/a;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lcom/sina/weibo/sdk/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/h;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/a;->f:Lcom/sina/weibo/sdk/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;Lcom/sina/weibo/sdk/a/b;)V

    const-string v0, "key_listener"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    return-object v0
.end method
