.class public Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;
.super Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field mWebContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101e3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/i;-><init>(Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f080146

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->b(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/j;-><init>(Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->mWebContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_0
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ProgressBar;

    const v2, 0x7f080148

    invoke-static {p0, v2}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->mWebContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ProgressBar;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onBackPressed()V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->b(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/app/Activity;)Z

    const p1, 0x7f0c0025

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b()V

    return-void
.end method

.method protected onHideErrorUI()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected onHideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onShowErrorUI()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected onShowProgress()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onUpdateProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
