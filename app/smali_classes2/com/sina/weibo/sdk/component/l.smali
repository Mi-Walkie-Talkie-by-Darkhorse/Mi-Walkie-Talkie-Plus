.class Lcom/sina/weibo/sdk/component/l;
.super Lcom/sina/weibo/sdk/component/j;
.source "WidgetWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/k;

.field private d:Lb/b/a/a/c/b;

.field private e:Lcom/sina/weibo/sdk/component/k$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/j;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/l;->b:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/l;->c:Lcom/sina/weibo/sdk/component/k;

    .line 4
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/k;->g()Lcom/sina/weibo/sdk/component/k$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/l;->e:Lcom/sina/weibo/sdk/component/k$a;

    .line 5
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/k;->e()Lb/b/a/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/l;->d:Lb/b/a/a/c/b;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "sinaweibo://browser/close"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sinaweibo://browser/datatransfer"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 7
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->d:Lb/b/a/a/c/b;

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0, p1}, Lb/b/a/a/c/b;->a(Landroid/os/Bundle;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/l;->e:Lcom/sina/weibo/sdk/component/k$a;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1, p2}, Lcom/sina/weibo/sdk/component/k$a;->a(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/l;->b:Landroid/app/Activity;

    .line 14
    iget-object p2, p0, Lcom/sina/weibo/sdk/component/l;->c:Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/k;->f()Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->c:Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/k;->h()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p1, p2, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
