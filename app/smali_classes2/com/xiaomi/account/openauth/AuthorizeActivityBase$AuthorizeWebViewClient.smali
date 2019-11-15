.class Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorizeWebViewClient"
.end annotation


# instance fields
.field private final mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onHideProgress()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowProgress()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowErrorUI()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onShowErrorUI()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->mRedirectUrlOf3rdPartyApp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/account/utils/OAuthUrlPaser;->parse(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    sget v2, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
