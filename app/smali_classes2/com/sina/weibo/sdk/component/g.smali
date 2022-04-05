.class Lcom/sina/weibo/sdk/component/g;
.super Lcom/sina/weibo/sdk/component/j;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/f;

.field private d:Lb/b/a/a/c/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/j;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/f;->f()Lb/b/a/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/g;->d:Lb/b/a/a/c/b;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/f;->g()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    const-string p3, "ReceivedSslError"

    invoke-virtual {p1, p2, p3}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/f;->g()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->d:Lb/b/a/a/c/b;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lb/b/a/a/c/b;->a(Landroid/os/Bundle;)V

    :cond_1
    const-string p2, "code"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/sina/weibo/sdk/component/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sina/weibo/sdk/component/f;->b(Landroid/app/Activity;)V

    :goto_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/g;->b:Landroid/app/Activity;

    iget-object p2, p0, Lcom/sina/weibo/sdk/component/g;->c:Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/f;->g()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
