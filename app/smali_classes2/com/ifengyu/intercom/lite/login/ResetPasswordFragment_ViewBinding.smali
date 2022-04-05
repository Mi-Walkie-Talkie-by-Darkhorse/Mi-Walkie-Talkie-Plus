.class public Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f090172

    const-string v2, "field \'mEtPasswordNew\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f090170

    const-string v2, "field \'mEtPasswordConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f090090

    const-string v2, "field \'mBtnAction\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090233

    const-string v2, "field \'mLlResetContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mLlResetContainer:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090234

    const-string v2, "field \'mLlSuccessContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mLlSuccessContainer:Landroid/widget/LinearLayout;

    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f09009a

    const-string v2, "field \'mBtnGotoLogin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatButton;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnGotoLogin:Landroidx/appcompat/widget/AppCompatButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mLlResetContainer:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mLlSuccessContainer:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnGotoLogin:Landroidx/appcompat/widget/AppCompatButton;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
