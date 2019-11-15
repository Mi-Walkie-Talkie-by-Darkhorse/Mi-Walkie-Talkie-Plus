.class public Lcom/sina/weibo/sdk/component/e;
.super Lcom/sina/weibo/sdk/component/d;
.source "GameRequestParam.java"


# instance fields
.field private e:Lcom/sina/weibo/sdk/a/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/d;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sina/weibo/sdk/a/b;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->e:Lcom/sina/weibo/sdk/a/b;

    return-object v0
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    const-string v0, "key_listener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->e:Lcom/sina/weibo/sdk/a/b;

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->e:Lcom/sina/weibo/sdk/a/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/h;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->e:Lcom/sina/weibo/sdk/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;Lcom/sina/weibo/sdk/a/b;)V

    const-string v0, "key_listener"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
