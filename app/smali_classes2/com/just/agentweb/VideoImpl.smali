.class public Lcom/just/agentweb/VideoImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/just/agentweb/IVideo;
.implements Lcom/just/agentweb/EventInterceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoImpl"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/core/d/d<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoiveParentView:Landroid/view/ViewGroup;

.field private mMoiveView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/just/agentweb/VideoImpl;->mWebView:Landroid/webkit/WebView;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public event()Z
    .locals 1

    invoke-virtual {p0}, Lcom/just/agentweb/VideoImpl;->isVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/just/agentweb/VideoImpl;->onHideCustomView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoState()Z
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHideCustomView()V
    .locals 4

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/d/d;

    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, v1, Landroidx/core/d/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Landroidx/core/d/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    new-instance v3, Landroidx/core/d/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroidx/core/d/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    iget-object v4, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    new-instance v3, Landroidx/core/d/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroidx/core/d/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mFlags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_5
    iput-object p2, p0, Lcom/just/agentweb/VideoImpl;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object p2, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/just/agentweb/VideoImpl;->mMoiveView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/just/agentweb/VideoImpl;->mMoiveParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method
