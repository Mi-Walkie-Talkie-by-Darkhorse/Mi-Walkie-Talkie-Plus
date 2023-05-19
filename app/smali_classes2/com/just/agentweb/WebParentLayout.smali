.class public Lcom/just/agentweb/WebParentLayout;
.super Landroid/widget/FrameLayout;
.source "WebParentLayout.java"

# interfaces
.implements Lcom/just/agentweb/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/just/agentweb/Provider<",
        "Lcom/just/agentweb/AbsAgentWebUIController;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

.field private mClickId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private mErrorLayout:Landroid/widget/FrameLayout;

.field private mErrorLayoutRes:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private mErrorView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/just/agentweb/WebParentLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    const-string v0, "WebParentLayout"

    invoke-static {p1, v0}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/just/agentweb/WebParentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/just/agentweb/WebParentLayout;->mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

    const/4 p3, -0x1

    .line 6
    iput p3, p0, Lcom/just/agentweb/WebParentLayout;->mClickId:I

    .line 7
    iput-object p2, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayout:Landroid/widget/FrameLayout;

    .line 8
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 9
    sget p1, Lcom/just/agentweb/R$layout;->agentweb_error_page:I

    iput p1, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayoutRes:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WebParentLayout context must be activity or activity sub class ."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createErrorLayout()V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3
    sget v2, Lcom/just/agentweb/R$id;->mainframe_error_container_id:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 4
    iget-object v2, p0, Lcom/just/agentweb/WebParentLayout;->mErrorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mErrorLayoutRes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayoutRes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v3, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayoutRes:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    :goto_0
    sget v2, Lcom/just/agentweb/R$id;->mainframe_error_viewsub_id:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    iput-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_1
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    iget v2, p0, Lcom/just/agentweb/WebParentLayout;->mClickId:I

    if-eq v2, v1, :cond_3

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    new-instance v0, Lcom/just/agentweb/WebParentLayout$1;

    invoke-direct {v0, p0, v1}, Lcom/just/agentweb/WebParentLayout$1;-><init>(Lcom/just/agentweb/WebParentLayout;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 19
    :cond_2
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    sget-object v1, Lcom/just/agentweb/WebParentLayout;->TAG:Ljava/lang/String;

    const-string v2, "ClickView is null , cannot bind accurate view to refresh or reload ."

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    new-instance v1, Lcom/just/agentweb/WebParentLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/just/agentweb/WebParentLayout$2;-><init>(Lcom/just/agentweb/WebParentLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bindController(Lcom/just/agentweb/AbsAgentWebUIController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout;->mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, p0, v0}, Lcom/just/agentweb/AbsAgentWebUIController;->bindWebParent(Lcom/just/agentweb/WebParentLayout;Landroid/app/Activity;)V

    return-void
.end method

.method bindWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout;->mWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method hideErrorLayout()V
    .locals 2

    .line 1
    sget v0, Lcom/just/agentweb/R$id;->mainframe_error_container_id:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public provide()Lcom/just/agentweb/AbsAgentWebUIController;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/just/agentweb/WebParentLayout;->provide()Lcom/just/agentweb/AbsAgentWebUIController;

    move-result-object v0

    return-object v0
.end method

.method setErrorLayoutRes(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/just/agentweb/WebParentLayout;->mClickId:I

    if-gtz p2, :cond_0

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/just/agentweb/WebParentLayout;->mClickId:I

    .line 3
    :cond_0
    iput p1, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayoutRes:I

    if-gtz p1, :cond_1

    .line 4
    sget p1, Lcom/just/agentweb/R$layout;->agentweb_error_page:I

    iput p1, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayoutRes:I

    :cond_1
    return-void
.end method

.method setErrorView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/WebParentLayout;->mErrorView:Landroid/view/View;

    return-void
.end method

.method showPageMainFrameError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/WebParentLayout;->createErrorLayout()V

    .line 4
    iget-object v0, p0, Lcom/just/agentweb/WebParentLayout;->mErrorLayout:Landroid/widget/FrameLayout;

    .line 5
    :goto_0
    iget v1, p0, Lcom/just/agentweb/WebParentLayout;->mClickId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void
.end method
