.class Lcom/sina/weibo/sdk/component/b;
.super Lcom/sina/weibo/sdk/component/j;
.source "AuthWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/a;

.field private d:Lb/b/a/a/c/b;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/b;->e:Z

    .line 3
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/b;->b:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/b;->c:Lcom/sina/weibo/sdk/component/a;

    .line 5
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/a;->f()Lb/b/a/a/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/b;->d:Lb/b/a/a/c/b;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/i;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "error"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_description"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/b;->d:Lb/b/a/a/c/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lb/b/a/a/c/b;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/b;->d:Lb/b/a/a/c/b;

    if-eqz p1, :cond_1

    .line 8
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    invoke-direct {v3, v1, v0, v2}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1, v3}, Lb/b/a/a/c/b;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    :cond_1
    :goto_0
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
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/b;->c:Lcom/sina/weibo/sdk/component/a;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/a;->e()Lb/b/a/a/c/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lb/b/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/b;->e:Z

    if-nez v0, :cond_1

    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lcom/sina/weibo/sdk/component/b;->e:Z

    .line 7
    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/component/b;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 9
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/b;->b:Landroid/app/Activity;

    .line 10
    iget-object p2, p0, Lcom/sina/weibo/sdk/component/b;->c:Lcom/sina/weibo/sdk/component/a;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/a;->g()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 11
    invoke-static {p1, p2, p3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/j;->a:Lcom/sina/weibo/sdk/component/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/component/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_0
    const-string v0, "sms:"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "address"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "vnd.android-dir/mms-sms"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/sina/weibo/sdk/component/b;->b:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    const-string v0, "sinaweibo://browser/close"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/b;->d:Lb/b/a/a/c/b;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lb/b/a/a/c/b;->onCancel()V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/sina/weibo/sdk/component/b;->b:Landroid/app/Activity;

    .line 12
    iget-object p2, p0, Lcom/sina/weibo/sdk/component/b;->c:Lcom/sina/weibo/sdk/component/a;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/component/a;->g()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p2, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
