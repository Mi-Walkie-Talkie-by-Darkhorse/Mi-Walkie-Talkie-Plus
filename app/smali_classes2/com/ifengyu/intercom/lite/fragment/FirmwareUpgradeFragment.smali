.class public Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# static fields
.field public static C:Z = false


# instance fields
.field private A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private B:Lcom/ifengyu/intercom/lite/g/t;

.field mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090210
    .end annotation
.end field

.field mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090314
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090467
    .end annotation
.end field

.field mTvTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090498
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090499
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->z:I

    return-void
.end method

.method private A()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arg_firmware_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v1

    sput-boolean v1, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->C:Z

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->c(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f1101b3

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c(II)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/c0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/c0;-><init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/d0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/d0;-><init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private C()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/b0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/b0;-><init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    return-void
.end method

.method private D()V
    .locals 2

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/g/t;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->d()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/i0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/i0;-><init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->c()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/h0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/h0;-><init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/f0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/f0;-><init>(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->b()V

    return-void
.end method

.method private E()V
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110129

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/g0;->a:Lcom/ifengyu/intercom/lite/fragment/g0;

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

.method private F()V
    .locals 2

    sget-boolean v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->C:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->f()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method public static synthetic a(Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static b(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_firmware_info"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101b5

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object p1, Lcom/ifengyu/intercom/lite/fragment/e0;->a:Lcom/ifengyu/intercom/lite/fragment/e0;

    const/4 v1, 0x0

    const v2, 0x7f11009c

    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f120105

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setDonut_progress(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v3, 0x7f1101b6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v3, 0x7f1101ba

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f1101b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->e()I

    move-result p1

    sget-object v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->d:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->F()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v3, 0x7f1101bb

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f11009c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0e0025

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 9

    iput p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->z:I

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_6

    const/4 v5, 0x3

    const v6, 0x7f11009c

    if-eq p1, v5, :cond_4

    const/4 v5, 0x4

    const v7, 0x7f1101b6

    const v8, 0x7f0e0023

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_1
    aput-object v1, v2, v4

    invoke-static {v7, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f1101bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->c(I)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_3
    aput-object v1, v2, v4

    invoke-static {v7, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f1101be

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f11009e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->c(I)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0e0025

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v2, 0x7f1101b7

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_5
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f1101bc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v3}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v5, 0x7f1101b8

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_7
    aput-object v1, v3, v4

    invoke-static {v5, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f1101bd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v0

    sput-boolean v0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->C:Z

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->c(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Integer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/g/t;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirmwareUpgradeFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->d(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;->b:Lcom/ifengyu/intercom/lite/event/LiteEvent;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/lite/g/t;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Context;II)Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/base/e;->b(Landroid/content/Context;II)Z

    move-result p1

    return p1
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->o()V

    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->F()V

    return-void
.end method

.method protected o()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->E()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->B()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->A()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->C()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/FirmwareUpgradeFragment;->D()V

    return-object v0
.end method
