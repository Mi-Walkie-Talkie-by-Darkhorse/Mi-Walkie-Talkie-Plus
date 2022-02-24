.class public Lcom/just/agentweb/DefaultWebCreator;
.super Ljava/lang/Object;
.source "DefaultWebCreator.java"

# interfaces
.implements Lcom/just/agentweb/WebCreator;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWebCreator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

.field private mColor:I

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHeight:I

.field private mIWebLayout:Lcom/just/agentweb/IWebLayout;

.field private mIndex:I

.field private mIsCreated:Z

.field private mIsNeedDefaultProgress:Z

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mProgressView:Lcom/just/agentweb/BaseIndicatorView;

.field private mTargetProgress:Landroid/view/View;

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IIILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 5
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 6
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 8
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 9
    iput-object p2, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 10
    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    .line 11
    iput p4, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    .line 12
    iput p5, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    .line 13
    iput-object p3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 14
    iput p6, p0, Lcom/just/agentweb/DefaultWebCreator;->mHeight:I

    .line 15
    iput-object p7, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 16
    iput-object p8, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILandroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 21
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 22
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 24
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 26
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    .line 27
    iput p4, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    .line 28
    iput-object p3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 29
    iput-object p5, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 30
    iput-object p6, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;ILcom/just/agentweb/BaseIndicatorView;Landroid/webkit/WebView;Lcom/just/agentweb/IWebLayout;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 35
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 36
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 38
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    .line 40
    iput-boolean v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    .line 41
    iput p4, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    .line 42
    iput-object p3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 43
    iput-object p5, p0, Lcom/just/agentweb/DefaultWebCreator;->mProgressView:Lcom/just/agentweb/BaseIndicatorView;

    .line 44
    iput-object p6, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 45
    iput-object p7, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    return-void
.end method

.method private createLayout()Landroid/view/ViewGroup;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 2
    new-instance v1, Lcom/just/agentweb/WebParentLayout;

    invoke-direct {v1, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;)V

    .line 3
    sget v2, Lcom/just/agentweb/R$id;->web_parent_layout_id:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    const/4 v2, -0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 5
    iget-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createWebView()Landroid/webkit/WebView;

    move-result-object v3

    iput-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->webLayout()Landroid/view/View;

    move-result-object v3

    .line 6
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Lcom/just/agentweb/WebParentLayout;->bindWebView(Landroid/webkit/WebView;)V

    .line 9
    sget-object v3, Lcom/just/agentweb/DefaultWebCreator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  instanceof  AgentWebView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    instance-of v5, v5, Lcom/just/agentweb/AgentWebView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    instance-of v3, v3, Lcom/just/agentweb/AgentWebView;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 11
    iput v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 12
    :cond_1
    new-instance v3, Landroid/view/ViewStub;

    invoke-direct {v3, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 13
    sget v4, Lcom/just/agentweb/R$id;->mainframe_error_viewsub_id:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setId(I)V

    .line 14
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-boolean v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsNeedDefaultProgress:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    .line 16
    new-instance v3, Lcom/just/agentweb/WebIndicator;

    invoke-direct {v3, v0}, Lcom/just/agentweb/WebIndicator;-><init>(Landroid/content/Context;)V

    .line 17
    iget v5, p0, Lcom/just/agentweb/DefaultWebCreator;->mHeight:I

    if-lez v5, :cond_2

    .line 18
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    iget v7, p0, Lcom/just/agentweb/DefaultWebCreator;->mHeight:I

    int-to-float v7, v7

    invoke-static {v0, v7}, Lcom/just/agentweb/AgentWebUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v3}, Lcom/just/agentweb/WebIndicator;->offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 20
    :goto_1
    iget v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mColor:I

    if-eq v0, v2, :cond_3

    .line 21
    invoke-virtual {v3, v0}, Lcom/just/agentweb/WebIndicator;->setColor(I)V

    :cond_3
    const/16 v0, 0x30

    .line 22
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    iput-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    .line 25
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mProgressView:Lcom/just/agentweb/BaseIndicatorView;

    if-eqz v0, :cond_5

    .line 26
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    invoke-interface {v0}, Lcom/just/agentweb/LayoutParamsOffer;->offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mProgressView:Lcom/just/agentweb/BaseIndicatorView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return-object v1
.end method

.method private createWebView()Landroid/webkit/WebView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/just/agentweb/AgentWebConfig;->IS_KITKAT_OR_BELOW_KITKAT:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/just/agentweb/AgentWebView;

    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/just/agentweb/AgentWebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/just/agentweb/LollipopFixedWebView;

    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/just/agentweb/LollipopFixedWebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    :goto_0
    return-object v0
.end method

.method private webLayout()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    invoke-interface {v0}, Lcom/just/agentweb/IWebLayout;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    invoke-interface {v1}, Lcom/just/agentweb/IWebLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 4
    sget-object v1, Lcom/just/agentweb/DefaultWebCreator;->TAG:Ljava/lang/String;

    const-string v2, "add webview"

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    .line 7
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIWebLayout:Lcom/just/agentweb/IWebLayout;

    invoke-interface {v0}, Lcom/just/agentweb/IWebLayout;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create()Lcom/just/agentweb/DefaultWebCreator;
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    .line 5
    invoke-static {v0}, Lcom/just/agentweb/ProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :try_start_0
    invoke-static {v1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mIsCreated:Z

    .line 10
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createLayout()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 12
    iget-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_2
    iget v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createLayout()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/just/agentweb/DefaultWebCreator;->createLayout()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/just/agentweb/DefaultWebCreator;->mIndex:I

    iget-object v3, p0, Lcom/just/agentweb/DefaultWebCreator;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic create()Lcom/just/agentweb/WebCreator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/just/agentweb/DefaultWebCreator;->create()Lcom/just/agentweb/DefaultWebCreator;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTargetProgress()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mTargetProgress:Landroid/view/View;

    return-object v0
.end method

.method public getWebParentLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebViewType:I

    return v0
.end method

.method public offer()Lcom/just/agentweb/BaseIndicatorSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebCreator;->mBaseIndicatorSpec:Lcom/just/agentweb/BaseIndicatorSpec;

    return-object v0
.end method

.method public setTargetProgress(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mTargetProgress:Landroid/view/View;

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebCreator;->mWebView:Landroid/webkit/WebView;

    return-void
.end method
