.class public Lcom/ifengyu/intercom/lite/login/RegisterFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const v1, 0x7f090175

    const-string v2, "field \'mEtPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f09016f

    const-string v2, "field \'mEtPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f090177

    const-string v2, "field \'mEtVerifyCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f090099

    const-string v2, "field \'mBtnGetCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0900a1

    const-string v2, "field \'mBtnRegister\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900bd

    const-string v2, "field \'mCbUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f09049e

    const-string v2, "field \'mTvUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900bc

    const-string v2, "field \'mCbImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f090478

    const-string v2, "field \'mTvImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
