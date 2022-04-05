.class public Lcom/sina/weibo/sdk/component/e;
.super Lcom/sina/weibo/sdk/component/d;


# instance fields
.field private e:Lb/b/a/a/c/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/d;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/d;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "version"

    const-string v1, "0031405000"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->h:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->e:Lb/b/a/a/c/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/h;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->e:Lb/b/a/a/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;Lb/b/a/a/c/b;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    const-string v1, "key_listener"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

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

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object p1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sina/weibo/sdk/component/h;->a(Ljava/lang/String;)Lb/b/a/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/e;->e:Lb/b/a/a/c/b;

    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Lb/b/a/a/c/b;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->e:Lb/b/a/a/c/b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Ljava/lang/String;

    return-object v0
.end method
