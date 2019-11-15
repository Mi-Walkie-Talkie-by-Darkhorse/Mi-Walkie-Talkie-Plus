.class Lcom/tencent/connect/auth/a$a;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/a;


# direct methods
.method private constructor <init>(Lcom/tencent/connect/auth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/connect/auth/a;Lcom/tencent/connect/auth/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/connect/auth/a$a;-><init>(Lcom/tencent/connect/auth/a;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onPageFinished, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->g(Lcom/tencent/connect/auth/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->setVisibility(I)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->n(Lcom/tencent/connect/auth/a;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->p(Lcom/tencent/connect/auth/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onPageStarted, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->g(Lcom/tencent/connect/auth/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;J)J

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->n(Lcom/tencent/connect/auth/a;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->p(Lcom/tencent/connect/auth/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0, p2}, Lcom/tencent/connect/auth/a;->c(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/tencent/connect/auth/a$d;

    iget-object v1, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/connect/auth/a$d;-><init>(Lcom/tencent/connect/auth/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v1}, Lcom/tencent/connect/auth/a;->p(Lcom/tencent/connect/auth/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v1}, Lcom/tencent/connect/auth/a;->n(Lcom/tencent/connect/auth/a;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->onReceivedError, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/16 v2, 0x2329

    const-string v3, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-direct {v1, v2, v3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/a$b;->onError(Lcom/tencent/tauth/UiError;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->j(Lcom/tencent/connect/auth/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->k(Lcom/tencent/connect/auth/a;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->l(Lcom/tencent/connect/auth/a;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->m(Lcom/tencent/connect/auth/a;)I

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->n(Lcom/tencent/connect/auth/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/connect/auth/a$a$1;

    invoke-direct {v1, p0}, Lcom/tencent/connect/auth/a$a$1;-><init>(Lcom/tencent/connect/auth/a$a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v1}, Lcom/tencent/connect/auth/a;->o(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/a$b;->onError(Lcom/tencent/tauth/UiError;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->dismiss()V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-virtual {p3}, Landroid/net/http/a;->a()I

    move-result v2

    const-string v3, "\u8bf7\u6c42\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5\u624b\u673a\u5b89\u5168\u8bbe\u7f6e\uff0c\u5982\u7cfb\u7edf\u65f6\u95f4\u3001\u4ee3\u7406\u7b49\u3002"

    const-string v4, "ssl error"

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/a$b;->onError(Lcom/tencent/tauth/UiError;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "openSDK_LOG.AuthDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->Redirect URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "auth://browser"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Lcom/tencent/open/utils/i;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    iget-object v3, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v3}, Lcom/tencent/connect/auth/a;->b(Lcom/tencent/connect/auth/a;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;Z)Z

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->c(Lcom/tencent/connect/auth/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    const-string v2, "fail_cb"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    const-string v3, "fail_cb"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/tencent/connect/auth/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "fall_to_wv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->d(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_3

    const-string v0, "&"

    :goto_2
    invoke-static {v2, v0}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    const-string v2, "browser_error=1"

    invoke-static {v0, v2}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->d(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "?"

    goto :goto_2

    :cond_4
    const-string v2, "redir"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/open/c/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "auth://tauth.qq.com/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/open/utils/i;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/connect/auth/a$b;->onComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->dismiss()V

    move v0, v1

    goto :goto_1

    :cond_6
    const-string v2, "auth://cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a$b;->onCancel()V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->dismiss()V

    move v0, v1

    goto/16 :goto_1

    :cond_7
    const-string v2, "auth://close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->dismiss()V

    move v0, v1

    goto/16 :goto_1

    :cond_8
    const-string v2, "download://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :try_start_0
    const-string v0, "download://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v2, "openSDK_LOG.AuthDialog"

    const-string v3, "-->start download activity exception, e: "

    invoke-static {v2, v3, v0}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    const-string v2, "auth://progress"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->g(Lcom/tencent/connect/auth/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/open/c/c;->setVisibility(I)V

    :cond_b
    :goto_4
    move v0, v1

    goto/16 :goto_1

    :cond_c
    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v0}, Lcom/tencent/connect/auth/a;->g(Lcom/tencent/connect/auth/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_1

    :cond_d
    const-string v2, "auth://onLoginSubmit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :try_start_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/connect/auth/a;->b(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    :goto_5
    move v0, v1

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->h(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/web/security/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v3}, Lcom/tencent/connect/auth/a;->e(Lcom/tencent/connect/auth/a;)Lcom/tencent/open/c/c;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/tencent/open/web/security/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto/16 :goto_1

    :cond_10
    const-string v1, "openSDK_LOG.AuthDialog"

    const-string v2, "-->Redirect URL: return false"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_5
.end method
