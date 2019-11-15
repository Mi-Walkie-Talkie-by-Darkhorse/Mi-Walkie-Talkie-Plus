.class Lcom/sina/weibo/sdk/component/g;
.super Lcom/sina/weibo/sdk/component/j;
.source "ShareWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/f;

.field private d:Lcom/sina/weibo/sdk/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/f;)V
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/j;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/f;->c()Lcom/sina/weibo/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/g;->d:Lcom/sina/weibo/sdk/a/b;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/j;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/j;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/f;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    const-string v2, "ReceivedSslError"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/f;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->d:Lcom/sina/weibo/sdk/a/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->d:Lcom/sina/weibo/sdk/a/b;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/a/b;->a(Landroid/os/Bundle;)V

    :cond_1
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;)V

    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/f;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/f;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/j;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
