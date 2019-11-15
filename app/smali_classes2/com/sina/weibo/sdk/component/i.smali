.class Lcom/sina/weibo/sdk/component/i;
.super Lcom/sina/weibo/sdk/component/j;
.source "WeiboGameClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/e;

.field private d:Lcom/sina/weibo/sdk/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/j;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/i;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/i;->c:Lcom/sina/weibo/sdk/component/e;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->c:Lcom/sina/weibo/sdk/component/e;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/e;->a()Lcom/sina/weibo/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/i;->d:Lcom/sina/weibo/sdk/a/b;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/j;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/j;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/j;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/j;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/i;->d:Lcom/sina/weibo/sdk/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/i;->d:Lcom/sina/weibo/sdk/a/b;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/a/b;->a(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/i;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/i;->c:Lcom/sina/weibo/sdk/component/e;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/e;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/j;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
