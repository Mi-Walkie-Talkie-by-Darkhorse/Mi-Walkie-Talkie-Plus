.class public abstract Lcom/sina/weibo/sdk/component/d;
.super Ljava/lang/Object;
.source "BrowserRequestParamBase.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    const-string v2, "key_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/d;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-eqz v1, :cond_1

    const-string v2, "key_launcher"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/d;->d:Ljava/lang/String;

    const-string v2, "key_specify_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/d;->a(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public abstract a(Landroid/app/Activity;I)V
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/d;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/sina/weibo/sdk/component/BrowserLauncher;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/d;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    return-object v0
.end method

.method protected abstract b(Landroid/os/Bundle;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_url"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    const-string v0, "key_launcher"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/d;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    const-string v0, "key_specify_title"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/d;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/component/d;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/d;->b:Ljava/lang/String;

    return-object v0
.end method
