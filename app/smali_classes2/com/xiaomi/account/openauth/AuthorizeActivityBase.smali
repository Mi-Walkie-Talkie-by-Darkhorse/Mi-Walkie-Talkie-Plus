.class public abstract Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.super Landroid/app/Activity;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;
    }
.end annotation


# static fields
.field public static final KEY_KEEP_COOKIES:Ljava/lang/String; = "extra_keep_cookies "

.field private static final KEY_MY_BUNDLE:Ljava/lang/String; = "extra_my_bundle"

.field private static final KEY_MY_INTENT:Ljava/lang/String; = "extra_my_intent"

.field public static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final KEY_RESPONSE:Ljava/lang/String; = "extra_response"

.field private static final KEY_RESULT_CODE:Ljava/lang/String; = "extra_result_code"

.field public static final KEY_SERVICETOKEN:Ljava/lang/String; = "serviceToken"

.field public static final KEY_USERID:Ljava/lang/String; = "userid"

.field private static final REQUEST_CODE:I = 0x3e9

.field public static RESULT_CANCEL:I = 0x0

.field public static RESULT_FAIL:I = 0x0

.field public static RESULT_SUCCESS:I = 0x0

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mKeepCookies:Z

.field private mMiddleActivityMode:Z

.field private mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

.field private mSettings:Landroid/webkit/WebSettings;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mKeepCookies:Z

    iput-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mMiddleActivityMode:Z

    return-void
.end method

.method private appendPassportUserAgent()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%s Passport/OAuthSDK/%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static asMiddleActivity(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_my_bundle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "extra_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static asMiddleActivity(Landroid/app/Activity;Landroid/content/Intent;Lcom/xiaomi/account/IXiaomiAuthResponse;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Lcom/xiaomi/account/IXiaomiAuthResponse;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_my_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_response"

    new-instance v2, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {v2, p2}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private removeCookiesIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mKeepCookies:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected final isMiddleActivityMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mMiddleActivityMode:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    sget v1, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/account/utils/ParcelableAttackGuardian;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/ParcelableAttackGuardian;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/account/utils/ParcelableAttackGuardian;->safeCheck(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "extra_my_bundle"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "extra_result_code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResultAndFinish(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "extra_response"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/XiaomiOAuthResponse;

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    const-string v0, "extra_my_intent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v5, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mMiddleActivityMode:Z

    goto :goto_0

    :cond_2
    const-string v0, "extra_keep_cookies "

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mKeepCookies:Z

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mUrl:Ljava/lang/String;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->removeCookiesIfNeeded()V

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->appendPassportUserAgent()V

    const-string v0, "redirect_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;

    invoke-direct {v3, p0, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$AuthorizeWebViewClient;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v0, "userid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "serviceToken"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget-object v3, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView(Z)V

    goto/16 :goto_0
.end method

.method protected abstract onHideErrorUI()V
.end method

.method protected abstract onHideProgress()V
.end method

.method protected abstract onShowErrorUI()V
.end method

.method protected abstract onShowProgress()V
.end method

.method protected abstract onUpdateProgress(I)V
.end method

.method protected final refreshWebView()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView(Z)V

    return-void
.end method

.method protected final refreshWebView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onHideErrorUI()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setResultAndFinish(ILandroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0}, Lcom/xiaomi/account/XiaomiOAuthResponse;->onCancel()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->removeCookiesIfNeeded()V

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->mResponse:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/XiaomiOAuthResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0
.end method
