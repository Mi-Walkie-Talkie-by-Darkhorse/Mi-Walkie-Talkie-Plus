.class public Lcom/xiaomi/account/openauth/AuthorizeActivity;
.super Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.source "AuthorizeActivity.java"


# static fields
.field public static RESULT_CANCEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RESULT_FAIL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static RESULT_SUCCESS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_SUCCESS:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_SUCCESS:I

    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_FAIL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_FAIL:I

    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->RESULT_CANCEL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->isMiddleActivityMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->isMiddleActivityMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v0, "refresh"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const v1, 0x108007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity$1;-><init>(Lcom/xiaomi/account/openauth/AuthorizeActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onHideErrorUI()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onHideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onShowErrorUI()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mRefreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onShowProgress()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onUpdateProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
