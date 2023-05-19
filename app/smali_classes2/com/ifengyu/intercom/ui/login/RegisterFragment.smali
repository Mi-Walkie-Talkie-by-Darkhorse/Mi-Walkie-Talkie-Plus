.class public Lcom/ifengyu/intercom/ui/login/RegisterFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "RegisterFragment.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ab
    .end annotation
.end field

.field mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b3
    .end annotation
.end field

.field mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ce
    .end annotation
.end field

.field mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d1
    .end annotation
.end field

.field mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b5
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

.field mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904db
    .end annotation
.end field

.field mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09050b
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

.method static synthetic A3(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "improve checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegisterFragment"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic B3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
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

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

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

    .line 3
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    .line 4
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic D3(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic F3(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "improve checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegisterFragment"

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->w0(Z)V

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

.method private synthetic I3(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "RegisterFragment"

    const-string v0, "register success"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f11033a

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/login/z;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/login/z;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/intercom/ui/base/k;->f3(Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method private synthetic K3(Lio/reactivex/disposables/Disposable;)V
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

.method private synthetic M3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "RegisterFragment"

    const-string v0, "sendSmsCode success"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->S3()V

    return-void
.end method

.method public static O3()Lcom/ifengyu/intercom/ui/login/RegisterFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;-><init>()V

    return-object v0
.end method

.method private R3()V
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

    new-instance v1, Lcom/ifengyu/intercom/ui/login/RegisterFragment$j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$j;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/m/b/k;->G(Lcom/ifengyu/intercom/m/b/k$c;)Lcom/ifengyu/intercom/m/b/k;

    const v1, 0x7f120100

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private S3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->z:Lcom/ifengyu/library/utils/e;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$i;

    const-wide/16 v1, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$i;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->z:Lcom/ifengyu/library/utils/e;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->z:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->z:Lcom/ifengyu/library/utils/e;

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->h()V

    :cond_1
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->R3()V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Lcom/ifengyu/library/utils/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->z:Lcom/ifengyu/library/utils/e;

    return-object p0
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    return-void
.end method

.method private s3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->z:Lcom/ifengyu/library/utils/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/library/utils/e;->b()V

    :cond_0
    return-void
.end method

.method private t3()Landroid/text/SpannableString;
    .locals 9

    const v0, 0x7f110429

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v8, Lcom/ifengyu/intercom/ui/login/RegisterFragment$f;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$f;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Landroid/view/View;IIII)V

    const v1, 0x7f0600d5

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    const v1, 0x7f0600d7

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 5
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v8, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private u3()Landroid/text/SpannableString;
    .locals 16

    move-object/from16 v7, p0

    const v0, 0x7f110253

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f110436

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v9

    const v0, 0x7f11031d

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f11031c

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v10

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v13, Lcom/ifengyu/intercom/ui/login/RegisterFragment$g;

    iget-object v2, v7, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$g;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Landroid/view/View;IIII)V

    const v14, 0x7f0600d5

    .line 8
    invoke-static {v14}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    const v15, 0x7f0600d7

    .line 9
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 10
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v8, 0x11

    invoke-virtual {v12, v13, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance v9, Lcom/ifengyu/intercom/ui/login/RegisterFragment$h;

    iget-object v2, v7, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$h;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Landroid/view/View;IIII)V

    .line 12
    invoke-static {v14}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/qmuiteam/qmui/span/d;->k(I)V

    .line 13
    invoke-static {v15}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/qmuiteam/qmui/span/d;->l(I)V

    .line 14
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v12, v9, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v12
.end method

.method private v3()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/login/e0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/e0;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110264

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvUserProtocol:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->u3()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodDefault()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mTvImprove:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->t3()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/ui/login/b0;->a:Lcom/ifengyu/intercom/ui/login/b0;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/ui/login/c0;->a:Lcom/ifengyu/intercom/ui/login/c0;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnRegister:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/RegisterFragment$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$c;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/RegisterFragment$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$d;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$e;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x10

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mBtnGetCode:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

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

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-static {v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-static {v1}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v2}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->textChanges(Landroid/widget/TextView;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object v2

    .line 18
    new-instance v3, Lcom/ifengyu/intercom/ui/login/u;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/login/u;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/login/x;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/x;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    .line 19
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v1, Lcom/ifengyu/intercom/ui/login/v;->a:Lcom/ifengyu/intercom/ui/login/v;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic w3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic x3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic z3(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user protocol checkbox checked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegisterFragment"

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic C3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->B3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic E3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->D3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic H3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->G3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic J3(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->I3(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public synthetic L3(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->K3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic N3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->M3(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public P3()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbUserProtocol:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f110311

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPassword:Lcom/ifengyu/intercom/ui/widget/view/PasswordToggleEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtVerifyCode:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    const v5, 0x7f110267

    if-le v3, v4, :cond_1

    .line 7
    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_1
    invoke-static {v1}, Lcom/ifengyu/library/utils/o;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-static {v5}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->z(Ljava/lang/CharSequence;)V

    return-void

    .line 10
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "phone"

    .line 11
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 12
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    .line 13
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 15
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/n/a;->b(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/login/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/a0;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    .line 19
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 20
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/login/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/login/w;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/login/RegisterFragment$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$b;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    .line 21
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public Q3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

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

    const/4 v2, 0x1

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

    new-instance p2, Lcom/ifengyu/intercom/ui/login/d0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/login/d0;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

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

    new-instance p2, Lcom/ifengyu/intercom/ui/login/y;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/login/y;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

    new-instance p3, Lcom/ifengyu/intercom/ui/login/RegisterFragment$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment$a;-><init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V

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

    const v1, 0x7f0c00a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->v3()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->s3()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->mCbImprove:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public synthetic y3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->x3(Landroid/view/View;)V

    return-void
.end method
