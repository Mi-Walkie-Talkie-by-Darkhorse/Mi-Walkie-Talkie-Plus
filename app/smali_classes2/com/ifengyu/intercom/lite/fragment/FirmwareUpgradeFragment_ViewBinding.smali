.class public Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090499

    const-string v2, "field \'mTvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTitle:Landroid/widget/TextView;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v1, 0x7f090467

    const-string v2, "field \'mTvDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090210

    const-string v2, "field \'mIvStateView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const-class v0, Lcom/ifengyu/library/widget/view/DonutProgress;

    const v1, 0x7f090314

    const-string v2, "field \'mProgressbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/DonutProgress;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f090090

    const-string v2, "field \'mBtnAction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090498

    const-string v2, "field \'mTvTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
