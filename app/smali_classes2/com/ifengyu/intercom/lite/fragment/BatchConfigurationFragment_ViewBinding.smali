.class public Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BatchConfigurationFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090467

    const-string v2, "field \'mTvDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvDetail:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f09020d

    const-string v2, "field \'mIvImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mIvImage:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f090090

    const-string v2, "field \'mBtnAction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 7
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f090496

    const-string v2, "field \'mTvSubtitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvDetail:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mIvImage:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
