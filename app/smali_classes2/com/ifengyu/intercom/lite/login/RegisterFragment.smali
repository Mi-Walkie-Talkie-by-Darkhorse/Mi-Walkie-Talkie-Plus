.class public Lcom/ifengyu/intercom/lite/login/RegisterFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090099
    .end annotation
.end field

.field mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a1
    .end annotation
.end field

.field mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900bc
    .end annotation
.end field

.field mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900bd
    .end annotation
.end field

.field mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
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

.field mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090478
    .end annotation
.end field

.field mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049e
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

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->z:Lcom/ifengyu/library/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->a()V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private D()Landroid/text/SpannableString;
    .locals 9

    const v0, 0x7f1101c1

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/ifengyu/intercom/lite/login/RegisterFragment$f;

    iget-object v3, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$f;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Landroid/view/View;IIII)V

    const v1, 0x7f0600c3

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->a(I)V

    const v1, 0x7f0600c5

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v8, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private E()Landroid/text/SpannableString;
    .locals 11

    const v0, 0x7f1101c3

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101c2

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/ifengyu/intercom/lite/login/RegisterFragment$g;

    iget-object v5, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$g;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Landroid/view/View;IIII)V

    const v3, 0x7f0600c3

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/qmuiteam/qmui/span/d;->a(I)V

    const v3, 0x7f0600c5

    invoke-static {v3}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/qmuiteam/qmui/span/d;->b(I)V

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/qmuiteam/qmui/span/d;->b(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private F()V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/n;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101d8

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->E()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->D()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/lite/login/r;->a:Lcom/ifengyu/intercom/lite/login/r;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/lite/login/p;->a:Lcom/ifengyu/intercom/lite/login/p;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/RegisterFragment$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$c;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/RegisterFragment$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$d;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/RegisterFragment$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$e;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x10

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v1}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v2}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/lite/login/o;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/lite/login/o;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/s;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/s;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/lite/login/q;->a:Lcom/ifengyu/intercom/lite/login/q;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private G()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/g;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b89\u5168\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/lite/c/b/g;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/RegisterFragment$i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$i;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/g;->a(Lcom/ifengyu/intercom/lite/c/b/g$c;)Lcom/ifengyu/intercom/lite/c/b/g;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->z:Lcom/ifengyu/library/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$h;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$h;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->z:Lcom/ifengyu/library/a/c;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->z:Lcom/ifengyu/library/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->z:Lcom/ifengyu/library/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/library/a/c;->d()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user protocol checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegisterFragment"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->G()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Lcom/ifengyu/library/a/c;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->z:Lcom/ifengyu/library/a/c;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Landroid/widget/CompoundButton;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "improve checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegisterFragment"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->C:Ljava/lang/String;

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

    new-instance v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$b;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic c(Landroid/widget/CompoundButton;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "improve checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegisterFragment"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->h(Z)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->H()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->C()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/lite/login/RegisterFragment;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;-><init>()V

    return-object v0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11027d

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    const v5, 0x7f1101da

    if-le v3, v4, :cond_1

    invoke-static {v5}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {v1}, Lcom/ifengyu/library/a/i;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v5}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance v3, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/g/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
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

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

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

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x8

    if-lt p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :cond_2
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

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

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
    const/4 v2, 0x1

    new-instance v7, Lcom/ifengyu/intercom/lite/login/RegisterFragment$k;

    invoke-direct {v7, p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$k;-><init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

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

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroyView()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->B()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->F()V

    return-object v0
.end method
