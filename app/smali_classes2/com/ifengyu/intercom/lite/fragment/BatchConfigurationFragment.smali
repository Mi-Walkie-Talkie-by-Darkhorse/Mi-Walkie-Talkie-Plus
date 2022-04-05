.class public Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# instance fields
.field mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090090
    .end annotation
.end field

.field mIvImage:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field mTvDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090467
    .end annotation
.end field

.field mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090496
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/lite/h/f0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/e;-><init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/h;-><init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->a(Z)V

    return-void
.end method

.method private C()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/f0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/f0;->c()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/k;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/g;-><init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/f0;->d()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/k;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/f;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/f;-><init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/f0;->e()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/k;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/c;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/c;-><init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    return-void
.end method

.method private D()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110172

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/d;->a:Lcom/ifengyu/intercom/lite/fragment/d;

    const/4 v2, 0x0

    const v3, 0x7f11009c

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private E()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110171

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/b;->a:Lcom/ifengyu/intercom/lite/fragment/b;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/a;-><init>(Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;)V

    const v3, 0x7f11009c

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f110174

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f11016e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvDetail:Landroid/widget/TextView;

    const v0, 0x7f110170

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f11016c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060048

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->setBgData(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mIvImage:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f110173

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f11016d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mTvDetail:Landroid/widget/TextView;

    const v0, 0x7f11016f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v0, 0x7f11016b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mBtnAction:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060047

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;->setBgData(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->mIvImage:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0e0001

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->g()V

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->a(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->D()V

    :cond_0
    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->o()V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->b()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->a(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1102c8

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->a(I)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/content/Context;II)Z
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->b()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->b()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result p1

    const-string v0, "userId"

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->f()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Lite_StartBatchConfigClick"

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->g()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Lite_StopBatchConfigClick"

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->b()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->a(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1102c8

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/base/e;->a(I)V

    :goto_0
    return-void
.end method

.method protected o()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/f0;->b()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->E()V

    :goto_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->z:Lcom/ifengyu/intercom/lite/h/f0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/f0;->b()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/f;->z()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->a(Z)V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->A()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->B()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/BatchConfigurationFragment;->C()V

    return-object v0
.end method
