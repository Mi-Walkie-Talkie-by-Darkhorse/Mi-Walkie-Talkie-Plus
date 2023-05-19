.class public Lcom/ifengyu/intercom/ui/login/RegisterFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RegisterFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f09049b

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const v1, 0x7f0901b9

    const-string v2, "field \'mEtPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    .line 5
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f0901b5

    const-string v2, "field \'mEtPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 6
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0901bd

    const-string v2, "field \'mEtVerifyCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f0900ab

    const-string v2, "field \'mBtnGetCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0900b3

    const-string v2, "field \'mBtnRegister\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    .line 9
    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900d1

    const-string v2, "field \'mCbUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 10
    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f09050b

    const-string v2, "field \'mTvUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 11
    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900ce

    const-string v2, "field \'mCbImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 12
    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f0904db

    const-string v2, "field \'mTvImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
