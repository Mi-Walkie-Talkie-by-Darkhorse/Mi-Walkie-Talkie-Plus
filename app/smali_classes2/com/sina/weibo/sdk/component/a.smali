.class public Lcom/sina/weibo/sdk/component/a;
.super Lcom/sina/weibo/sdk/component/d;
.source "AuthRequestParam.java"


# instance fields
.field private e:Lb/b/a/a/c/a;

.field private f:Lb/b/a/a/c/b;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/d;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/d;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 9
    iget-object p2, p0, Lcom/sina/weibo/sdk/component/a;->f:Lb/b/a/a/c/b;

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2}, Lb/b/a/a/c/b;->onCancel()V

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->e:Lb/b/a/a/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/a/a/c/a;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_authinfo"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lb/b/a/a/c/b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/h;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/a;->f:Lb/b/a/a/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;Lb/b/a/a/c/b;)V

    .line 8
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    const-string v1, "key_listener"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_authinfo"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lb/b/a/a/c/a;->a(Landroid/content/Context;Landroid/os/Bundle;)Lb/b/a/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/a;->e:Lb/b/a/a/c/a;

    :cond_0
    const-string v0, "key_listener"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;)Lb/b/a/a/c/b;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/a;->f:Lb/b/a/a/c/b;

    :cond_1
    return-void
.end method

.method public e()Lb/b/a/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->e:Lb/b/a/a/c/a;

    return-object v0
.end method

.method public f()Lb/b/a/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->f:Lb/b/a/a/c/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a;->g:Ljava/lang/String;

    return-object v0
.end method
