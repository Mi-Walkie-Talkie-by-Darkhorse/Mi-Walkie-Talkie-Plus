.class public Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "BatchConfigurationFragment.java"


# instance fields
.field mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field mIvImage:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026f
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field mTvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cb
    .end annotation
.end field

.field mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090501
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/device/lite/e/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/c;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h3()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/e/k;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/k;->g()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/j;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/d;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/d;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/k;->h()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/j;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/e;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/e;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/k;->i()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/j;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/g;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->x3(Z)V

    return-void
.end method

.method private synthetic i3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->d2()V

    return-void
.end method

.method private synthetic k3(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result p1

    const-string v0, "userId"

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->j()V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Lite_StartBatchConfigClick"

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->k()V

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Lite_StopBatchConfigClick"

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private synthetic m3(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->x3(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->y3()V

    :cond_0
    return-void
.end method

.method private synthetic o3(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->x3(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f11037b

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :goto_0
    return-void
.end method

.method private synthetic q3(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->x3(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f11037b

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    :goto_0
    return-void
.end method

.method static synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic t3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic u3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->k()V

    .line 3
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method public static w3()Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;-><init>()V

    return-object v0
.end method

.method private x3(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f11021c

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f110216

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTvDetail:Landroid/widget/TextView;

    const v0, 0x7f110218

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f110214

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060049

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->setBgData(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mIvImage:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0e0001

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f11021b

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f110215

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mTvDetail:Landroid/widget/TextView;

    const v0, 0x7f110217

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f110213

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060048

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->setBgData(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->mIvImage:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0e0002

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private y3()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11021a

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/b;->a:Lcom/ifengyu/intercom/device/lite/fragment/b;

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
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110219

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/f;->a:Lcom/ifengyu/intercom/device/lite/fragment/f;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/h;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected E2()V
    .locals 0

    return-void
.end method

.method protected M1(Landroid/content/Context;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected d2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z3()V

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

    const v1, 0x7f0c008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->g3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->h3()V

    return-object v0
.end method

.method public synthetic j3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->i3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic l3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->k3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic n3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->m3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/device/lite/e/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/k;->f()Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/v0;->H0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->x3(Z)V

    return-void
.end method

.method public synthetic p3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->o3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic r3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->q3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic v3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->u3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
