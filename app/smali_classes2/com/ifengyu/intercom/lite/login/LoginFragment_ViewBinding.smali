.class public Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const v1, 0x7f090175

    const-string v2, "field \'mEtPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f09016f

    const-string v2, "field \'mEtPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v0, 0x7f09009d

    const-string v1, "field \'mBtnLogin\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v3, "field \'mBtnLogin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a1

    const-string v1, "field \'mBtnRegister\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    const-string v3, "field \'mBtnRegister\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090098

    const-string v1, "field \'mBtnForget\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    const-string v3, "field \'mBtnForget\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009f

    const-string v1, "field \'mBtnLoginXiaomi\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnLoginXiaomi\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLoginXiaomi:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->e:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009e

    const-string v1, "field \'mBtnLoginWeixin\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnLoginWeixin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLoginWeixin:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->f:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900bd

    const-string v2, "field \'mCbUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f09049e

    const-string v2, "field \'mTvUserProtocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const-class v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f0900bc

    const-string v2, "field \'mCbImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    const-class v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v1, 0x7f090478

    const-string v2, "field \'mTvImprove\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLoginXiaomi:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLoginWeixin:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment_ViewBinding;->f:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
