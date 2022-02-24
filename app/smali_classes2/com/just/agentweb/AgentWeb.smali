.class public final Lcom/just/agentweb/AgentWeb;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/AgentWeb$PermissionInterceptorWrapper;,
        Lcom/just/agentweb/AgentWeb$CommonBuilder;,
        Lcom/just/agentweb/AgentWeb$IndicatorBuilder;,
        Lcom/just/agentweb/AgentWeb$AgentBuilder;,
        Lcom/just/agentweb/AgentWeb$SecurityType;,
        Lcom/just/agentweb/AgentWeb$PreAgentWeb;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TAG:I = 0x0

.field private static final FRAGMENT_TAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AgentWeb"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field private mAgentWebJsInterfaceCompat:Lcom/just/agentweb/AgentWebJsInterfaceCompat;

.field private mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

.field private mEnableIndicator:Z

.field private mEventInterceptor:Lcom/just/agentweb/EventInterceptor;

.field private mIEventHandler:Lcom/just/agentweb/IEventHandler;

.field private mIUrlLoader:Lcom/just/agentweb/IUrlLoader;

.field private mIVideo:Lcom/just/agentweb/IVideo;

.field private mIndicatorController:Lcom/just/agentweb/IndicatorController;

.field private mIsInterceptUnkownUrl:Z

.field private mJavaObjects:La/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mJsAccessEntrace:Lcom/just/agentweb/JsAccessEntrace;

.field private mJsInterfaceHolder:Lcom/just/agentweb/JsInterfaceHolder;

.field private mMiddleWrareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

.field private mMiddlewareWebChromeBaseHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

.field private mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

.field private mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private mTagTarget:I

.field private mTargetChromeClient:Landroid/webkit/WebChromeClient;

.field private mUrlHandleWays:I

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

.field private mWebClientHelper:Z

.field private mWebCreator:Lcom/just/agentweb/WebCreator;

.field private mWebLifeCycle:Lcom/just/agentweb/WebLifeCycle;

.field private mWebListenerManager:Lcom/just/agentweb/WebListenerManager;

.field private mWebSecurityCheckLogic:Lcom/just/agentweb/WebSecurityCheckLogic;

.field private mWebSecurityController:Lcom/just/agentweb/WebSecurityController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/just/agentweb/WebSecurityController<",
            "Lcom/just/agentweb/WebSecurityCheckLogic;",
            ">;"
        }
    .end annotation
.end field

.field private mWebViewClient:Lcom/just/agentweb/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 4
    new-instance v1, La/b/a;

    invoke-direct {v1}, La/b/a;-><init>()V

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/just/agentweb/AgentWeb;->mTagTarget:I

    .line 6
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebSecurityController:Lcom/just/agentweb/WebSecurityController;

    .line 7
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebSecurityCheckLogic:Lcom/just/agentweb/WebSecurityCheckLogic;

    .line 8
    sget-object v1, Lcom/just/agentweb/AgentWeb$SecurityType;->DEFAULT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 9
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWebJsInterfaceCompat:Lcom/just/agentweb/AgentWebJsInterfaceCompat;

    .line 10
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsAccessEntrace:Lcom/just/agentweb/JsAccessEntrace;

    .line 11
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIUrlLoader:Lcom/just/agentweb/IUrlLoader;

    .line 12
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIVideo:Lcom/just/agentweb/IVideo;

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->mWebClientHelper:Z

    .line 14
    iput-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->mIsInterceptUnkownUrl:Z

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/just/agentweb/AgentWeb;->mUrlHandleWays:I

    .line 16
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsInterfaceHolder:Lcom/just/agentweb/JsInterfaceHolder;

    .line 17
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$000(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I

    move-result v1

    iput v1, p0, Lcom/just/agentweb/AgentWeb;->mTagTarget:I

    .line 18
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$100(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    .line 19
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$200(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    .line 20
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$300(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IEventHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    .line 21
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$400(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->mEnableIndicator:Z

    .line 22
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$500(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebCreator;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$600(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/BaseIndicatorView;

    move-result-object v3

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$700(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I

    move-result v4

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$800(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$900(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I

    move-result v6

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1000(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I

    move-result v7

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1100(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/webkit/WebView;

    move-result-object v8

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1200(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IWebLayout;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/just/agentweb/AgentWeb;->configWebCreator(Lcom/just/agentweb/BaseIndicatorView;ILandroid/view/ViewGroup$LayoutParams;IILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)Lcom/just/agentweb/WebCreator;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$500(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebCreator;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    .line 23
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1300(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IndicatorController;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    .line 24
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1400(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebChromeClient;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    .line 25
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1500(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebViewClient;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    .line 26
    iput-object p0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 27
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1600(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IAgentWebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

    .line 28
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1700(Lcom/just/agentweb/AgentWeb$AgentBuilder;)La/b/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1700(Lcom/just/agentweb/AgentWeb$AgentBuilder;)La/b/a;

    move-result-object v1

    invoke-virtual {v1}, La/b/g;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1700(Lcom/just/agentweb/AgentWeb$AgentBuilder;)La/b/a;

    move-result-object v2

    invoke-virtual {v1, v2}, La/b/a;->putAll(Ljava/util/Map;)V

    .line 30
    sget-object v1, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mJavaObject size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    invoke-virtual {v3}, La/b/g;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1800(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/PermissionInterceptor;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/just/agentweb/AgentWeb$PermissionInterceptorWrapper;

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$1800(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/PermissionInterceptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/just/agentweb/AgentWeb$PermissionInterceptorWrapper;-><init>(Lcom/just/agentweb/PermissionInterceptor;Lcom/just/agentweb/AgentWeb$1;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    .line 32
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2000(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AgentWeb$SecurityType;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 33
    new-instance v0, Lcom/just/agentweb/UrlLoaderImpl;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->create()Lcom/just/agentweb/WebCreator;

    move-result-object v1

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2100(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/HttpHeaders;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/just/agentweb/UrlLoaderImpl;-><init>(Landroid/webkit/WebView;Lcom/just/agentweb/HttpHeaders;)V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIUrlLoader:Lcom/just/agentweb/IUrlLoader;

    .line 34
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebParentLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    instance-of v0, v0, Lcom/just/agentweb/WebParentLayout;

    if-eqz v0, :cond_4

    .line 35
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebParentLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/WebParentLayout;

    .line 36
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2200(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/just/agentweb/AgentWebUIControllerImplBase;->build()Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2200(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/just/agentweb/WebParentLayout;->bindController(Lcom/just/agentweb/AbsAgentWebUIController;)V

    .line 37
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2300(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I

    move-result v1

    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2400(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/WebParentLayout;->setErrorLayoutRes(II)V

    .line 38
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2500(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/WebParentLayout;->setErrorView(Landroid/view/View;)V

    .line 39
    :cond_4
    new-instance v0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/just/agentweb/DefaultWebLifeCycleImpl;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebLifeCycle:Lcom/just/agentweb/WebLifeCycle;

    .line 40
    new-instance v0, Lcom/just/agentweb/WebSecurityControllerImpl;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    iget-object v2, v2, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-direct {v0, v1, v2, v3}, Lcom/just/agentweb/WebSecurityControllerImpl;-><init>(Landroid/webkit/WebView;La/b/a;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebSecurityController:Lcom/just/agentweb/WebSecurityController;

    .line 41
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2600(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb;->mWebClientHelper:Z

    .line 42
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2700(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb;->mIsInterceptUnkownUrl:Z

    .line 43
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2800(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 44
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2800(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    move-result-object v0

    iget v0, v0, Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;->code:I

    iput v0, p0, Lcom/just/agentweb/AgentWeb;->mUrlHandleWays:I

    .line 45
    :cond_5
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$2900(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebClientBase;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mMiddleWrareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

    .line 46
    invoke-static {p1}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->access$3000(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebChromeBase;

    move-result-object p1

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb;->mMiddlewareWebChromeBaseHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 47
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/AgentWeb$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWeb;-><init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/just/agentweb/AgentWeb;)Lcom/just/agentweb/AgentWeb;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->ready()Lcom/just/agentweb/AgentWeb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/just/agentweb/AgentWeb;Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/AgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object p0

    return-object p0
.end method

.method private configWebCreator(Lcom/just/agentweb/BaseIndicatorView;ILandroid/view/ViewGroup$LayoutParams;IILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)Lcom/just/agentweb/WebCreator;
    .locals 12

    move-object v0, p0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v1, v0, Lcom/just/agentweb/AgentWeb;->mEnableIndicator:Z

    if-eqz v1, :cond_0

    .line 2
    new-instance v9, Lcom/just/agentweb/DefaultWebCreator;

    iget-object v2, v0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    move-object v1, v9

    move-object v4, p3

    move v5, p2

    move-object v6, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/just/agentweb/DefaultWebCreator;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILcom/just/agentweb/BaseIndicatorView;Landroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V

    return-object v9

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/just/agentweb/AgentWeb;->mEnableIndicator:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/just/agentweb/DefaultWebCreator;

    iget-object v3, v0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    move-object v2, v1

    move-object v5, p3

    move v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/just/agentweb/DefaultWebCreator;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IIILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/just/agentweb/DefaultWebCreator;

    iget-object v6, v0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v7, v0, Lcom/just/agentweb/AgentWeb;->mViewGroup:Landroid/view/ViewGroup;

    move-object v5, v1

    move-object v8, p3

    move v9, p2

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Lcom/just/agentweb/DefaultWebCreator;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V

    :goto_0
    return-object v1
.end method

.method private doCompat()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    new-instance v1, Lcom/just/agentweb/AgentWebJsInterfaceCompat;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/just/agentweb/AgentWebJsInterfaceCompat;-><init>(Lcom/just/agentweb/AgentWeb;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mAgentWebJsInterfaceCompat:Lcom/just/agentweb/AgentWebJsInterfaceCompat;

    const-string v2, "agentWeb"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doSafeCheck()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebSecurityCheckLogic:Lcom/just/agentweb/WebSecurityCheckLogic;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebViewType()I

    move-result v0

    invoke-static {v0}, Lcom/just/agentweb/WebSecurityLogicImpl;->getInstance(I)Lcom/just/agentweb/WebSecurityLogicImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebSecurityCheckLogic:Lcom/just/agentweb/WebSecurityCheckLogic;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebSecurityController:Lcom/just/agentweb/WebSecurityController;

    invoke-interface {v1, v0}, Lcom/just/agentweb/WebSecurityController;->check(Ljava/lang/Object;)V

    return-void
.end method

.method private getChromeClient()Landroid/webkit/WebChromeClient;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/just/agentweb/IndicatorHandler;->getInstance()Lcom/just/agentweb/IndicatorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/IWebIndicator;->offer()Lcom/just/agentweb/BaseIndicatorSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/IndicatorHandler;->inJectIndicator(Lcom/just/agentweb/BaseIndicatorSpec;)Lcom/just/agentweb/IndicatorHandler;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 3
    new-instance v0, Lcom/just/agentweb/DefaultChromeClient;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iput-object v3, p0, Lcom/just/agentweb/AgentWeb;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    const/4 v4, 0x0

    .line 4
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getIVideo()Lcom/just/agentweb/IVideo;

    move-result-object v5

    iput-object v5, p0, Lcom/just/agentweb/AgentWeb;->mIVideo:Lcom/just/agentweb/IVideo;

    iget-object v6, p0, Lcom/just/agentweb/AgentWeb;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    .line 5
    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/just/agentweb/DefaultChromeClient;-><init>(Landroid/app/Activity;Lcom/just/agentweb/IndicatorController;Landroid/webkit/WebChromeClient;Lcom/just/agentweb/IVideo;Lcom/just/agentweb/PermissionInterceptor;Landroid/webkit/WebView;)V

    .line 6
    sget-object v1, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebChromeClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/just/agentweb/AgentWeb;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mMiddlewareWebChromeBaseHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 8
    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2, v1}, Lcom/just/agentweb/MiddlewareWebChromeBase;->enq(Lcom/just/agentweb/MiddlewareWebChromeBase;)Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 10
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    :cond_1
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    move-object v3, v1

    .line 11
    :goto_0
    invoke-virtual {v3}, Lcom/just/agentweb/MiddlewareWebChromeBase;->next()Lcom/just/agentweb/MiddlewareWebChromeBase;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/just/agentweb/MiddlewareWebChromeBase;->next()Lcom/just/agentweb/MiddlewareWebChromeBase;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    sget-object v4, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiddlewareWebClientBase middleware count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v0}, Lcom/just/agentweb/MiddlewareWebChromeBase;->setDelegate(Landroid/webkit/WebChromeClient;)V

    .line 15
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mTargetChromeClient:Landroid/webkit/WebChromeClient;

    return-object v1

    .line 16
    :cond_3
    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mTargetChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method private getIVideo()Lcom/just/agentweb/IVideo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIVideo:Lcom/just/agentweb/IVideo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/just/agentweb/VideoImpl;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v2}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/just/agentweb/VideoImpl;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    :cond_0
    return-object v0
.end method

.method private getInterceptor()Lcom/just/agentweb/EventInterceptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mEventInterceptor:Lcom/just/agentweb/EventInterceptor;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIVideo:Lcom/just/agentweb/IVideo;

    instance-of v1, v0, Lcom/just/agentweb/VideoImpl;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/just/agentweb/EventInterceptor;

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mEventInterceptor:Lcom/just/agentweb/EventInterceptor;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 7

    .line 1
    sget-object v0, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDelegate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mMiddleWrareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/just/agentweb/DefaultWebClient;->createBuilder()Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$Builder;->setActivity(Landroid/app/Activity;)Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->mWebClientHelper:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$Builder;->setWebClientHelper(Z)Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    .line 5
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$Builder;->setPermissionInterceptor(Lcom/just/agentweb/PermissionInterceptor;)Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    .line 6
    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$Builder;->setWebView(Landroid/webkit/WebView;)Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/just/agentweb/AgentWeb;->mIsInterceptUnkownUrl:Z

    .line 7
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$Builder;->setInterceptUnkownUrl(Z)Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/just/agentweb/AgentWeb;->mUrlHandleWays:I

    .line 8
    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultWebClient$Builder;->setUrlHandleWays(I)Lcom/just/agentweb/DefaultWebClient$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/just/agentweb/DefaultWebClient$Builder;->build()Lcom/just/agentweb/DefaultWebClient;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mMiddleWrareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

    .line 11
    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2, v1}, Lcom/just/agentweb/MiddlewareWebClientBase;->enq(Lcom/just/agentweb/MiddlewareWebClientBase;)Lcom/just/agentweb/MiddlewareWebClientBase;

    .line 13
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    :cond_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    move-object v3, v1

    .line 14
    :goto_0
    invoke-virtual {v3}, Lcom/just/agentweb/MiddlewareWebClientBase;->next()Lcom/just/agentweb/MiddlewareWebClientBase;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v3}, Lcom/just/agentweb/MiddlewareWebClientBase;->next()Lcom/just/agentweb/MiddlewareWebClientBase;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    sget-object v4, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiddlewareWebClientBase middleware count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3, v0}, Lcom/just/agentweb/MiddlewareWebClientBase;->setDelegate(Landroid/webkit/WebViewClient;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getUrlLoader()Lcom/just/agentweb/IUrlLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/just/agentweb/IUrlLoader;->loadUrl(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getIndicatorController()Lcom/just/agentweb/IndicatorController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/just/agentweb/IndicatorController;->offerIndicator()Lcom/just/agentweb/BaseIndicatorSpec;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getIndicatorController()Lcom/just/agentweb/IndicatorController;

    move-result-object p1

    invoke-interface {p1}, Lcom/just/agentweb/IndicatorController;->offerIndicator()Lcom/just/agentweb/BaseIndicatorSpec;

    move-result-object p1

    invoke-interface {p1}, Lcom/just/agentweb/BaseIndicatorSpec;->show()V

    :cond_0
    return-object p0
.end method

.method private init()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->doCompat()V

    .line 2
    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->doSafeCheck()V

    return-void
.end method

.method private ready()Lcom/just/agentweb/AgentWeb;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->initCookiesManager(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/just/agentweb/AbsAgentWebSettings;->getInstance()Lcom/just/agentweb/AbsAgentWebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/just/agentweb/AbsAgentWebSettings;

    if-eqz v1, :cond_1

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/just/agentweb/AbsAgentWebSettings;

    invoke-virtual {v2, p0}, Lcom/just/agentweb/AbsAgentWebSettings;->bindAgentWeb(Lcom/just/agentweb/AgentWeb;)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mWebListenerManager:Lcom/just/agentweb/WebListenerManager;

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/just/agentweb/WebListenerManager;

    iput-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebListenerManager:Lcom/just/agentweb/WebListenerManager;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/just/agentweb/IAgentWebSettings;->toSetting(Landroid/webkit/WebView;)Lcom/just/agentweb/IAgentWebSettings;

    .line 9
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsInterfaceHolder:Lcom/just/agentweb/JsInterfaceHolder;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    invoke-static {v0, v1}, Lcom/just/agentweb/JsInterfaceHolderImpl;->getJsInterfaceHolder(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/JsInterfaceHolderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsInterfaceHolder:Lcom/just/agentweb/JsInterfaceHolder;

    .line 11
    :cond_3
    sget-object v0, Lcom/just/agentweb/AgentWeb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mJavaObjects:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    invoke-virtual {v2}, La/b/g;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, La/b/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsInterfaceHolder:Lcom/just/agentweb/JsInterfaceHolder;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mJavaObjects:La/b/a;

    invoke-interface {v0, v1}, Lcom/just/agentweb/JsInterfaceHolder;->addJavaObjects(Ljava/util/Map;)Lcom/just/agentweb/JsInterfaceHolder;

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebListenerManager:Lcom/just/agentweb/WebListenerManager;

    if-eqz v0, :cond_5

    .line 15
    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/just/agentweb/WebListenerManager;->setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;

    .line 16
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebListenerManager:Lcom/just/agentweb/WebListenerManager;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/just/agentweb/WebListenerManager;->setWebChromeClient(Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)Lcom/just/agentweb/WebListenerManager;

    .line 17
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebListenerManager:Lcom/just/agentweb/WebListenerManager;

    iget-object v1, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/just/agentweb/WebListenerManager;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lcom/just/agentweb/WebListenerManager;

    :cond_5
    return-object p0
.end method

.method public static with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-direct {v0, p0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "activity can not be null ."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/just/agentweb/AgentWeb$AgentBuilder;
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/just/agentweb/AgentWeb$AgentBuilder;

    invoke-direct {v1, v0, p0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "activity can not be null ."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public back()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getInterceptor()Lcom/just/agentweb/EventInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/EventHandlerImpl;->getInstantce(Landroid/webkit/WebView;Lcom/just/agentweb/EventInterceptor;)Lcom/just/agentweb/EventHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    invoke-interface {v0}, Lcom/just/agentweb/IEventHandler;->back()Z

    move-result v0

    return v0
.end method

.method public clearWebCache()Lcom/just/agentweb/AgentWeb;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb;->getWebCreator()Lcom/just/agentweb/WebCreator;

    move-result-object v1

    invoke-interface {v1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/AgentWebUtils;->clearWebViewAllCache(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->clearWebViewAllCache(Landroid/content/Context;)V

    :goto_0
    return-object p0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebLifeCycle:Lcom/just/agentweb/WebLifeCycle;

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onDestroy()V

    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAgentWebSettings()Lcom/just/agentweb/IAgentWebSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

    return-object v0
.end method

.method public getIEventHandler()Lcom/just/agentweb/IEventHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getInterceptor()Lcom/just/agentweb/EventInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/EventHandlerImpl;->getInstantce(Landroid/webkit/WebView;Lcom/just/agentweb/EventInterceptor;)Lcom/just/agentweb/EventHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    :cond_0
    return-object v0
.end method

.method public getIndicatorController()Lcom/just/agentweb/IndicatorController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    return-object v0
.end method

.method public getJsAccessEntrace()Lcom/just/agentweb/JsAccessEntrace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsAccessEntrace:Lcom/just/agentweb/JsAccessEntrace;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/JsAccessEntraceImpl;->getInstance(Landroid/webkit/WebView;)Lcom/just/agentweb/JsAccessEntraceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsAccessEntrace:Lcom/just/agentweb/JsAccessEntrace;

    :cond_0
    return-object v0
.end method

.method public getJsInterfaceHolder()Lcom/just/agentweb/JsInterfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mJsInterfaceHolder:Lcom/just/agentweb/JsInterfaceHolder;

    return-object v0
.end method

.method public getPermissionInterceptor()Lcom/just/agentweb/PermissionInterceptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    return-object v0
.end method

.method public getUrlLoader()Lcom/just/agentweb/IUrlLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIUrlLoader:Lcom/just/agentweb/IUrlLoader;

    return-object v0
.end method

.method public getWebCreator()Lcom/just/agentweb/WebCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    return-object v0
.end method

.method public getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebLifeCycle:Lcom/just/agentweb/WebLifeCycle;

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb;->getInterceptor()Lcom/just/agentweb/EventInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/EventHandlerImpl;->getInstantce(Landroid/webkit/WebView;Lcom/just/agentweb/EventInterceptor;)Lcom/just/agentweb/EventHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/just/agentweb/IEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
