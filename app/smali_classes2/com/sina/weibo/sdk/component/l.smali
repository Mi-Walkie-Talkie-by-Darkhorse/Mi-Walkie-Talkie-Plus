.class Lcom/sina/weibo/sdk/component/l;
.super Lcom/sina/weibo/sdk/component/j;
.source "WidgetWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/k;

.field private d:Lcom/sina/weibo/sdk/a/b;

.field private e:Lcom/sina/weibo/sdk/component/k$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/k;)V
    .locals 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/j;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/l;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/l;->c:Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/k;->c()Lcom/sina/weibo/sdk/component/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/l;->e:Lcom/sina/weibo/sdk/component/k$a;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/k;->a()Lcom/sina/weibo/sdk/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/l;->d:Lcom/sina/weibo/sdk/a/b;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/j;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/j;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/j;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/j;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->a:Lcom/sina/weibo/sdk/component/c;

    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "sinaweibo://browser/close"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sinaweibo://browser/datatransfer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    invoke-static {p2}, Lcom/sina/weibo/sdk/utils/i;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/l;->d:Lcom/sina/weibo/sdk/a/b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/l;->d:Lcom/sina/weibo/sdk/a/b;

    invoke-interface {v2, v1}, Lcom/sina/weibo/sdk/a/b;->a(Landroid/os/Bundle;)V

    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/l;->e:Lcom/sina/weibo/sdk/component/k$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/l;->e:Lcom/sina/weibo/sdk/component/k$a;

    invoke-interface {v1, p2}, Lcom/sina/weibo/sdk/component/k$a;->a(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/l;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/l;->c:Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/k;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/l;->c:Lcom/sina/weibo/sdk/component/k;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/component/k;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/j;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
