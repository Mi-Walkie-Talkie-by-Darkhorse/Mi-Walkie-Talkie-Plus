.class public Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# instance fields
.field mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e6
    .end annotation
.end field

.field mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ef
    .end annotation
.end field

.field mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901fa
    .end annotation
.end field

.field mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090207
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101a1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f110250

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f110246

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private B()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/g1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/g1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->j()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/i1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/i1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    return-void
.end method

.method private C()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110314

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f110313

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/f1;->a:Lcom/ifengyu/intercom/lite/fragment/f1;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/e1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/e1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    const v3, 0x7f110021

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f11024f

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const v2, 0x7f11024e

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance p2, Lcom/ifengyu/intercom/lite/fragment/h1;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/lite/fragment/h1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private b([Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f110399

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const v2, 0x7f1101a0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance p2, Lcom/ifengyu/intercom/lite/fragment/j1;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/lite/fragment/j1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static newInstance()Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isVox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isPolite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    const v0, 0x7f030017

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->c(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getSq()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getBand()I

    move-result p1

    const v0, 0x7f030001

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->c(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/h/h0;->c(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/lite/h/h0;->d(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/lite/h/h0;->c(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->y()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901ef,
            0x7f0901e6,
            0x7f0901fa,
            0x7f090207
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getBand()I

    move-result p1

    const v2, 0x7f030001

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->c(I)[Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->b([Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_1
    const p1, 0x7f030017

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->c(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getSq()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->a([Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/h/h0;->c(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->C()V

    goto :goto_1

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->b(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901e6 -> :sswitch_3
        0x7f0901ef -> :sswitch_2
        0x7f0901fa -> :sswitch_1
        0x7f090207 -> :sswitch_0
    .end sparse-switch
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->A()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->B()V

    return-object v0
.end method
