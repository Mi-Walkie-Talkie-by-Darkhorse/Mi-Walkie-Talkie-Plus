.class public Lcom/ifengyu/intercom/l/b/c/w1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3UpgradeFragment.java"


# static fields
.field private static final D:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

.field private C:Lcom/ifengyu/intercom/l/b/e/t;

.field private z:Lcom/ifengyu/intercom/k/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/l/b/c/w1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/l/b/c/w1;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private A3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->A:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v3, 0x7f110249

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->B:Landroid/widget/TextView;

    const v3, 0x7f11024c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/l/b/e/t;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f110246

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMode()I

    move-result p1

    sget-object v0, Lcom/ifengyu/intercom/device/lite/enums/UpgradeModeEnum;->c:Lcom/ifengyu/intercom/device/lite/enums/UpgradeModeEnum;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/enums/UpgradeModeEnum;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/w1;->z3()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->A:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->B:Landroid/widget/TextView;

    const v0, 0x7f11024d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/l/b/e/t;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f1100c6

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0e001d

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private g3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->z:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110247

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0601a0

    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/l/b/c/e1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/e1;-><init>(Lcom/ifengyu/intercom/l/b/c/w1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/c1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/c1;-><init>(Lcom/ifengyu/intercom/l/b/c/w1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/d1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/d1;-><init>(Lcom/ifengyu/intercom/l/b/c/w1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    return-void
.end method

.method private h3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/t;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->m()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/f1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/f1;-><init>(Lcom/ifengyu/intercom/l/b/c/w1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->l()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/b1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/b1;-><init>(Lcom/ifengyu/intercom/l/b/c/w1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->k()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/i1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/i1;-><init>(Lcom/ifengyu/intercom/l/b/c/w1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method public static synthetic i3(Lcom/ifengyu/intercom/l/b/c/w1;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->A3(Lcom/ifengyu/intercom/http/entity/VersionInfo;)V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/t;->m()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->x3(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic l3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/l/b/c/w1;->d2()V

    return-void
.end method

.method private synthetic n3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/w1;->z3()V

    return-void
.end method

.method private synthetic p3(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/l/b/c/w1;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->w3(I)V

    return-void
.end method

.method static synthetic r3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static synthetic t3(Lcom/ifengyu/intercom/l/b/c/w1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->v3(I)V

    return-void
.end method

.method public static u3()Lcom/ifengyu/intercom/l/b/c/w1;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/w1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/w1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private v3(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setDonut_progress(Ljava/lang/String;)V

    return-void
.end method

.method private w3(I)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->A:I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->m()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    const-string v1, ""

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq p1, v2, :cond_6

    const/4 v5, 0x4

    const v6, 0x7f110249

    const v7, 0x7f0e001b

    if-eq p1, v5, :cond_4

    const/4 v5, 0x6

    const v8, 0x7f1100c6

    if-eq p1, v5, :cond_2

    const/4 v5, 0x7

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->A:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    aput-object v1, v2, v4

    .line 10
    invoke-static {v6, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->B:Landroid/widget/TextView;

    const v0, 0x7f110251

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setText(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 14
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/l/b/c/w1;->v3(I)V

    goto/16 :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    const v5, 0x7f0e001d

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->A:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v5, 0x7f11024a

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    aput-object v1, v2, v4

    .line 22
    invoke-static {v5, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->B:Landroid/widget/TextView;

    const v0, 0x7f11024e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setText(I)V

    .line 25
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v7}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->A:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    aput-object v1, v2, v4

    .line 34
    invoke-static {v6, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->B:Landroid/widget/TextView;

    const v0, 0x7f110250

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 36
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f1100ca

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 38
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/l/b/c/w1;->v3(I)V

    goto :goto_0

    .line 39
    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v2}, Lcom/ifengyu/library/widget/view/DonutProgress;->setShowText(Z)V

    .line 40
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->w:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->x:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->y:Lcom/ifengyu/library/widget/view/DonutProgress;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->A:Lcom/qmuiteam/qmui/widget/QMUIFontFitTextView;

    const v5, 0x7f11024b

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    :cond_7
    aput-object v1, v2, v4

    .line 45
    invoke-static {v5, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/i;->B:Landroid/widget/TextView;

    const v0, 0x7f11024f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/w1;->B:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private x3(Ljava/lang/String;)V
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

    sget-object p1, Lcom/ifengyu/intercom/l/b/c/g1;->a:Lcom/ifengyu/intercom/l/b/c/g1;

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

.method private y3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101be

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/l/b/c/h1;->a:Lcom/ifengyu/intercom/l/b/c/h1;

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

.method private z3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->m()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->A:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->C:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/t;->D()V

    :cond_2
    return-void

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method


# virtual methods
.method protected M1(Landroid/content/Context;II)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/base/k;->M1(Landroid/content/Context;II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected d2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->A:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/w1;->y3()V

    :goto_1
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0098

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/i;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/w1;->h3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/w1;->g3()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/w1;->z:Lcom/ifengyu/intercom/k/i;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->l3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->n3(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    return-void
.end method

.method public synthetic q3(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/w1;->p3(Ljava/lang/Integer;)V

    return-void
.end method
