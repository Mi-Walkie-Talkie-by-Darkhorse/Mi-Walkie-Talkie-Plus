.class public Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LoginFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/login/LoginFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    .line 3
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const v1, 0x7f0901b9

    const-string v2, "field \'mEtPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    .line 4
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f0901b5

    const-string v2, "field \'mEtPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v0, 0x7f0900af

    const-string v1, "field \'mBtnLogin\' and method \'onClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v3, "field \'mBtnLogin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b3

    const-string v1, "field \'mBtnRegister\' and method \'onClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    const-string v3, "field \'mBtnRegister\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900aa

    const-string v1, "field \'mBtnForget\' and method \'onClick\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    const-string v3, "field \'mBtnForget\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b1

    const-string v1, "field \'mBtnLoginXiaomi\' and method \'onClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 18
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnLoginXiaomi\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLoginXiaomi:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 19
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->e:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900b0

    const-string v1, "field \'mBtnLoginWeixin\' and method \'onClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnLoginWeixin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLoginWeixin:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 23
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->f:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/ui/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900d1

    const-string v2, "field \'mCbUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 26
    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f09050a

    const-string v2, "field \'mTvUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 27
    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900ce

    const-string v2, "field \'mCbImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 28
    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f0904db

    const-string v2, "field \'mTvImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/login/LoginFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLoginXiaomi:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mBtnLoginWeixin:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->b:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->c:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->d:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->e:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/login/LoginFragment_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
