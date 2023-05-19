.class public abstract Lcom/just/agentweb/AbsAgentWebSettings;
.super Ljava/lang/Object;
.source "AbsAgentWebSettings.java"

# interfaces
.implements Lcom/just/agentweb/IAgentWebSettings;
.implements Lcom/just/agentweb/WebListenerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsAgentWebSettings"

.field public static final USERAGENT_AGENTWEB:Ljava/lang/String; = " AgentWeb/4.1.3 "

.field public static final USERAGENT_QQ_BROWSER:Ljava/lang/String; = " MQQBrowser/8.0 "

.field public static final USERAGENT_UC:Ljava/lang/String; = " UCBrowser/11.6.4.950 "


# instance fields
.field protected mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field private mWebSettings:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/just/agentweb/AbsAgentWebSettings;
    .locals 1

    .line 1
    new-instance v0, Lcom/just/agentweb/AgentWebSettingsImpl;

    invoke-direct {v0}, Lcom/just/agentweb/AgentWebSettingsImpl;-><init>()V

    return-object v0
.end method

.method private settings(Landroid/webkit/WebView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 4
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 5
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 9
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x13

    if-lt v0, v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 11
    invoke-virtual {p1, v4, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    if-lt v0, v6, :cond_2

    .line 12
    invoke-virtual {p1, v4, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    if-ge v0, v6, :cond_3

    .line 13
    invoke-virtual {p1, v1, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 15
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 16
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 17
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 18
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 19
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 20
    iget-object v3, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    .line 21
    iget-object v4, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 22
    iget-object v4, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 23
    :cond_4
    iget-object v4, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    if-lt v0, v6, :cond_5

    .line 24
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_2

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 26
    :goto_2
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 27
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 28
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 30
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 32
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 33
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/just/agentweb/AbsAgentWebSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   appcache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/just/agentweb/AgentWebConfig;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 40
    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Lcom/just/agentweb/AbsAgentWebSettings;->getWebSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " AgentWeb/4.1.3 "

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " UCBrowser/11.6.4.950 "

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserAgentString : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final bindAgentWeb(Lcom/just/agentweb/AgentWeb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 2
    invoke-virtual {p0, p1}, Lcom/just/agentweb/AbsAgentWebSettings;->bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V

    return-void
.end method

.method protected abstract bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V
.end method

.method public getWebSettings()Landroid/webkit/WebSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method public setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-object p0
.end method

.method public setWebChromeClient(Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object p0
.end method

.method public setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object p0
.end method

.method public toSetting(Landroid/webkit/WebView;)Lcom/just/agentweb/IAgentWebSettings;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/AbsAgentWebSettings;->settings(Landroid/webkit/WebView;)V

    return-object p0
.end method
