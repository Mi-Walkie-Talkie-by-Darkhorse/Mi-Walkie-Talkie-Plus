.class public Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;
.super Lcom/ifengyu/intercom/lite/base/e;
.source "ResetPasswordFragment.java"


# instance fields
.field mBtnAction:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field mBtnGotoLogin:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009a
    .end annotation
.end field

.field mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090172
    .end annotation
.end field

.field mLlResetContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090233
    .end annotation
.end field

.field mLlSuccessContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090234
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private B()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110132

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/t;-><init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/w;-><init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnGotoLogin:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/v;-><init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v3}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/ifengyu/intercom/lite/login/u;->a:Lcom/ifengyu/intercom/lite/login/u;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/x;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/x;-><init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private C()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/arch/b;->a(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->c(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;
    .locals 3

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phone"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code"

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method private c(I)V
    .locals 3

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$b;-><init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->C()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    const v4, 0x7f1101da

    if-le v2, v3, :cond_0

    .line 4
    invoke-static {v4}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/ifengyu/library/a/i;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {v4}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 8
    invoke-static {v4}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/ifengyu/library/a/i;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-static {v4}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x7f11012d

    .line 12
    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    const-string v2, "phone"

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    .line 15
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    new-instance v3, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;-><init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    invoke-static {v2, v0, v1, v3}, Lcom/ifengyu/intercom/g/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->mLlSuccessContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 8
    const-class p1, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    :goto_0
    return-void
.end method

.method protected b(Landroid/content/Context;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->A()V

    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    .line 2
    const-class p1, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Ljava/lang/Class;)V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->B()V

    return-object v0
.end method
