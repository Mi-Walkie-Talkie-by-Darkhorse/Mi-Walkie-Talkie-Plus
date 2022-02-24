.class public Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LiteSetupPasswordFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f090173

    const-string v2, "field \'mEtPasswordOld\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordOld:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 5
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f090172

    const-string v2, "field \'mEtPasswordNew\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 6
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v1, 0x7f090170

    const-string v2, "field \'mEtPasswordConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const v0, 0x7f090090

    const-string v1, "field \'mBtnAction\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 8
    const-class v1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v2, "field \'mBtnAction\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 9
    iput-object p2, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;->b:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordOld:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment_ViewBinding;->b:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
