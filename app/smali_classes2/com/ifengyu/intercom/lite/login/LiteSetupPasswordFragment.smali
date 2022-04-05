.class public Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# instance fields
.field mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
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

.field mEtPasswordOld:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090173
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

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/g;-><init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101a6

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    return-void
.end method

.method private B()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordOld:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordOld:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v1}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v2}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/lite/login/f;->a:Lcom/ifengyu/intercom/lite/login/f;

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/e;-><init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private C()V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110135

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$b;-><init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    const/4 v2, 0x0

    const v3, 0x7f11009c

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lt p0, v0, :cond_0

    invoke-static {p2}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

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

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->C()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090090
        }
    .end annotation

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordOld:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordNew:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->mEtPasswordConfirm:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ifengyu/library/a/l;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    invoke-static {v0}, Lcom/ifengyu/library/a/i;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const p1, 0x7f11012d

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_1
    new-instance v1, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;-><init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/g/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void

    :cond_2
    :goto_0
    const p1, 0x7f1101da

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->A()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->B()V

    return-object v0
.end method
