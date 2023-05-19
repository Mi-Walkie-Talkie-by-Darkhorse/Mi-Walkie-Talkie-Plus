.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LiteWebFragment.java"


# instance fields
.field private A:Lcom/just/agentweb/WebChromeClient;

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field mWebContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090546
    .end annotation
.end field

.field private z:Lcom/just/agentweb/AgentWeb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment$a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->A:Lcom/just/agentweb/WebChromeClient;

    return-void
.end method

.method private g3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setBottomDividerAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f080151

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->k(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/g1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/g1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h3()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_title"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_url"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 5
    invoke-static {p0}, Lcom/just/agentweb/AgentWeb;->with(Landroidx/fragment/app/Fragment;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->mWebContainer:Landroid/widget/FrameLayout;

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object v1

    const v2, 0x7f0600d5

    .line 7
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator(I)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->A:Lcom/just/agentweb/WebChromeClient;

    .line 8
    invoke-virtual {v1, v2}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->setWebChromeClient(Lcom/just/agentweb/WebChromeClient;)Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->z:Lcom/just/agentweb/AgentWeb;

    :cond_0
    return-void
.end method

.method private synthetic i3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->g3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->h3()V

    return-object v0
.end method

.method public synthetic j3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->i3(Landroid/view/View;)V

    return-void
.end method

.method public k2(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->z:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0, p1, p2}, Lcom/just/agentweb/AgentWeb;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/b;->k2(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->z:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onDestroy()V

    .line 2
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->z:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onPause()V

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteWebFragment;->z:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb;->getWebLifeCycle()Lcom/just/agentweb/WebLifeCycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/just/agentweb/WebLifeCycle;->onResume()V

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    return-void
.end method
