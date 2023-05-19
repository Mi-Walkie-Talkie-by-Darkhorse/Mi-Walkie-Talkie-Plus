.class public Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "ForgetPasswordFragment.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field mBtnAction:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ab
    .end annotation
.end field

.field mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b9
    .end annotation
.end field

.field mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bd
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field private z:Lcom/ifengyu/library/utils/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic A3(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private synthetic C3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic E3(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "checkSmsCode success"

    invoke-static {p3, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;->w3(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/ui/login/ResetPasswordFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method

.method private synthetic G3(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic I3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "sendSmsCode success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->O3()V

    return-void
.end method

.method public static K3()Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;-><init>()V

    return-object v0
.end method

.method private N3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1102dd

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/m/b/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110266

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/k;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$d;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/m/b/k;->G(Lcom/ifengyu/intercom/m/b/k$c;)Lcom/ifengyu/intercom/m/b/k;

    const v1, 0x7f120100

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private O3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/utils/e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$h;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$h;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/utils/e;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->h()V

    :cond_1
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->N3()V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Lcom/ifengyu/library/utils/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/utils/e;

    return-object p0
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method private u3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->z:Lcom/ifengyu/library/utils/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->b()V

    :cond_0
    return-void
.end method

.method private v3()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101c0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/login/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/a;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$a;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$b;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-instance v2, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$c;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mBtnAction:Landroidx/appcompat/widget/AppCompatButton;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v3}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v1

    .line 14
    new-instance v2, Lcom/ifengyu/intercom/ui/login/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/login/g;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/login/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/d;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    .line 15
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic w3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic y3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

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

    .line 2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 3
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic B3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->A3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic D3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->C3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic F3(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->E3(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic H3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->G3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic J3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->I3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public L3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x4

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "codeType"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code"

    .line 5
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "phone"

    .line 6
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/json; charset=utf-8"

    .line 8
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v3

    .line 10
    invoke-interface {v3, v2}, Lcom/ifengyu/intercom/n/a;->j(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/ui/login/e;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/login/e;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    .line 12
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 13
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uber/autodispose/m;

    new-instance v3, Lcom/ifengyu/intercom/ui/login/b;

    invoke-direct {v3, p0, v0, v1}, Lcom/ifengyu/intercom/ui/login/b;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$g;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    .line 14
    invoke-interface {v2, v3, v0}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public M3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/o;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const p1, 0x7f11025d

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x4

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "codeType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "phone"

    .line 6
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scene"

    .line 7
    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "sessionId"

    .line 8
    invoke-interface {v1, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sig"

    .line 9
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 10
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json; charset=utf-8"

    .line 12
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object p2

    .line 14
    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/n/a;->d(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/login/c;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/login/c;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    .line 16
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/m;

    new-instance p2, Lcom/ifengyu/intercom/ui/login/f;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/login/f;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    new-instance p3, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$f;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$f;-><init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->v3()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->u3()V

    return-void
.end method

.method public synthetic x3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->w3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic z3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->y3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
