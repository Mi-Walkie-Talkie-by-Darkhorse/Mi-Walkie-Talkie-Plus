.class public Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "FirmwareUpgradeFragment.java"


# static fields
.field public static C:Z = false


# instance fields
.field private A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private B:Lcom/ifengyu/intercom/device/lite/d/t;

.field mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090279
    .end annotation
.end field

.field mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cb
    .end annotation
.end field

.field mTvTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090504
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090505
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

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->z:I

    return-void
.end method

.method private A3(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110248

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object p1, Lcom/ifengyu/intercom/device/lite/fragment/i;->a:Lcom/ifengyu/intercom/device/lite/fragment/i;

    const/4 v1, 0x0

    const v2, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120102

    .line 5
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private B3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101be

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/p;->a:Lcom/ifengyu/intercom/device/lite/fragment/p;

    const/4 v2, 0x0

    const v3, 0x7f1100c6

    .line 3
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private C3()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->C:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->z:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->L()V

    :cond_2
    return-void

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private D3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v3, 0x7f110249

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v3, 0x7f11024c

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f110246

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->e()I

    move-result p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/enums/UpgradeModeEnum;->c:Lcom/ifengyu/intercom/device/lite/enums/UpgradeModeEnum;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/enums/UpgradeModeEnum;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->C3()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v3, 0x7f11024d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f1100c6

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0e001d

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private g3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arg_firmware_info"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v1

    sput-boolean v1, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->C:Z

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->D3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V

    :cond_0
    return-void
.end method

.method private h3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f110247

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/l;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/k;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/m;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/m;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    return-void
.end method

.method private j3()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/d/t;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->i()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/j;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->h()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/o;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/n;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->g()V

    return-void
.end method

.method private synthetic k3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A3(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic m3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->d2()V

    return-void
.end method

.method private synthetic o3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->C3()V

    return-void
.end method

.method private synthetic q3(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/lite/d/t;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirmwareUpgradeFragment"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->z3(I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->UPGRADE_SUCCESS:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/a/d/c;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic s3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->h()Z

    move-result v0

    sput-boolean v0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->C:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->D3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method

.method public static synthetic u3(Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->y3(I)V

    return-void
.end method

.method static synthetic v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic w3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static x3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_firmware_info"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private y3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setDonut_progress(Ljava/lang/String;)V

    return-void
.end method

.method private z3(I)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->z:I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B:Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_6

    const/4 v5, 0x3

    const v6, 0x7f1100c6

    if-eq p1, v5, :cond_4

    const/4 v5, 0x4

    const v7, 0x7f110249

    const v8, 0x7f0e001b

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_1
    aput-object v1, v2, v4

    .line 10
    invoke-static {v7, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f110251

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 14
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->y3(I)V

    goto/16 :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_3
    aput-object v1, v2, v4

    .line 22
    invoke-static {v7, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f110250

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f1100ca

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 26
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->y3(I)V

    goto/16 :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0e001d

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v2, 0x7f11024a

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_5
    aput-object v1, v3, v4

    .line 34
    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f11024e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 36
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(I)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v3}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 39
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mIvStateView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mProgressbar:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvDetail:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v5, 0x7f11024b

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 43
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v1

    :cond_7
    aput-object v1, v3, v4

    .line 44
    invoke-static {v5, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->mTvTip:Landroid/widget/TextView;

    const v0, 0x7f11024f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->A:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected M1(Landroid/content/Context;II)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/k;->M1(Landroid/content/Context;II)Z

    move-result p1

    return p1
.end method

.method protected d2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->B3()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    :goto_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->h3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->g3()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->i3()V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->j3()V

    return-object v0
.end method

.method public synthetic l3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->k3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic n3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->m3(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method public synthetic p3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->o3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic r3(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->q3(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic t3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->s3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method
