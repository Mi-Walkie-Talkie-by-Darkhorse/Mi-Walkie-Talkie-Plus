.class public Lcom/ifengyu/intercom/lite/login/LoginFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/login/LoginFragment$i;
    }
.end annotation


# instance fields
.field private A:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090098
    .end annotation
.end field

.field mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009d
    .end annotation
.end field

.field mBtnLoginWeixin:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field mBtnLoginXiaomi:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009f
    .end annotation
.end field

.field mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;
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

.field private final z:Lcom/ifengyu/intercom/lite/login/LoginFragment$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/lite/login/LoginFragment$i;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/ifengyu/intercom/lite/login/LoginFragment$a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->z:Lcom/ifengyu/intercom/lite/login/LoginFragment$i;

    sget-object v0, Lcom/ifengyu/intercom/lite/login/k;->a:Lcom/ifengyu/intercom/lite/login/k;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->A:Lio/reactivex/functions/Function;

    return-void
.end method

.method private A()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    const v0, 0x7f110249

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->c(I)V

    return-void
.end method

.method private B()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private C()Landroid/text/SpannableString;
    .locals 9

    const v0, 0x7f1101c1

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/ifengyu/intercom/lite/login/LoginFragment$a;

    iget-object v3, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v4, 0x7f040042

    const v5, 0x7f040043

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/lite/login/LoginFragment$a;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Landroid/view/View;IIII)V

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

.method private D()Landroid/text/SpannableString;
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

    new-instance v10, Lcom/ifengyu/intercom/lite/login/LoginFragment$b;

    iget-object v5, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const v6, 0x7f040042

    const v7, 0x7f040043

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/ifengyu/intercom/lite/login/LoginFragment$b;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Landroid/view/View;IIII)V

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

.method private E()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data
.end method

.method private F()V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    const-string v1, "user_last_login_time"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "app"

    invoke-static {v0}, Lcom/ifengyu/intercom/i/l0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment$d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment$d;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ifengyu/intercom/lite/login/LoginFragment$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment$e;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private G()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnRegister:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnForget:Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaTextView;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->D()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->C()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v1}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/lite/login/l;->a:Lcom/ifengyu/intercom/lite/login/l;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/login/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/h;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/lite/login/m;->a:Lcom/ifengyu/intercom/lite/login/m;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11027d

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private I()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11027d

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->J()V

    goto :goto_0

    :cond_2
    const v0, 0x7f11033c

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private J()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->i()Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/wxapi/WXEntryActivity;->a(Lcom/tencent/mm/opensdk/openapi/IWXAPI;)V

    return-void
.end method

.method private K()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11027d

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f11033c

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/http/exception/ApiException;

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getErrorCode()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/ifengyu/intercom/lite/http/exception/ApiException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->b(Landroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/login/a;->a:Lcom/ifengyu/intercom/lite/login/a;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->A:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/lite/d/f;->c()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/login/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/login/j;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    new-instance v1, Lcom/ifengyu/intercom/lite/login/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/login/i;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$d;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;-><init>(Landroid/content/Context;)V

    const p1, 0x7f11010e

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    const p1, 0x7f060036

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    const p1, 0x7f110093

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->e(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    const p1, 0x7f0600de

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->d(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    const v1, 0x7f110097

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->g(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->f(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    new-instance p1, Lcom/ifengyu/intercom/lite/login/LoginFragment$g;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment$g;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(Lcom/afollestad/materialdialogs/MaterialDialog$k;)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method static synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "improve checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LoginFragment"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->h(Z)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;)V

    invoke-static {p1, p2, v0}, Lcom/ifengyu/intercom/g/a;->a(Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->B()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/LoginFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setUseSystemAccountLogin(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-wide v2, 0x280000000005f8d3L    # 5.075883675072411E-116

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-string v2, "http://www.ifengyu.com"

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->E()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setScope([I)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setKeepCookies(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setCustomizedAuthorizeActivityClass(Ljava/lang/Class;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthCode(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment$h;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment$h;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    invoke-static {p1, p2, v0}, Lcom/ifengyu/intercom/g/a;->d(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
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

    new-instance v0, Lcom/ifengyu/intercom/lite/login/LoginFragment$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment$f;-><init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->A()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->F()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

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

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mBtnLogin:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCodeAndLoginXiaomi failed, error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    instance-of v0, p1, Landroid/accounts/OperationCanceledException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f110068

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/ifengyu/intercom/lite/http/exception/ApiException;

    const v2, 0x7f11039c

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ifengyu/intercom/lite/http/exception/ApiException;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCodeAndLoginXiaomi code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->e:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09009d,
            0x7f0900a1,
            0x7f090098,
            0x7f09009f,
            0x7f09009e
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090098

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900a1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->K()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->I()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->H()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->newInstance()Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->newInstance()Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09009d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.ifengyu.intercom.ACTION_LOGIN_WEIXIN"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/f/a/a;->a(Landroid/content/Context;)La/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->z:Lcom/ifengyu/intercom/lite/login/LoginFragment$i;

    invoke-virtual {v0, v1, p1}, La/f/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/f/a/a;->a(Landroid/content/Context;)La/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->z:Lcom/ifengyu/intercom/lite/login/LoginFragment$i;

    invoke-virtual {v0, v1}, La/f/a/a;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->b0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->G()V

    return-object v0
.end method
