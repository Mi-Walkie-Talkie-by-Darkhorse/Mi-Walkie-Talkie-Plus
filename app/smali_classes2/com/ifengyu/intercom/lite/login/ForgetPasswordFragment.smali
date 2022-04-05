.class public Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field mBtnAction:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090099
    .end annotation
.end field

.field mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090175
    .end annotation
.end field

.field mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090177
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field private z:Lcom/ifengyu/library/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->a()V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11012c

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/b;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$a;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$b;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-instance v2, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$c;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_1

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v3}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/login/c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/login/c;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/d;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private D()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/g;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b89\u5168\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/lite/c/b/g;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$d;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/g;->a(Lcom/ifengyu/intercom/lite/c/b/g$c;)Lcom/ifengyu/intercom/lite/c/b/g;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$e;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private E()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/a/c;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->d()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->D()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)Lcom/ifengyu/library/a/c;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/a/c;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->C:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 3

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$h;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->E()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method static synthetic l(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic m(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;

    invoke-direct {v2, p0, v0, v1}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;Ljava/lang/String;ILcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/library/a/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f1101cf

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    const/4 v2, 0x4

    new-instance v7, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$f;

    invoke-direct {v7, p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$f;-><init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/ifengyu/intercom/g/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->B()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroyView()V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->C()V

    return-object v0
.end method
