.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LiteSettingMoreFragment.java"


# instance fields
.field mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023f
    .end annotation
.end field

.field mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024b
    .end annotation
.end field

.field mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090259
    .end annotation
.end field

.field mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090263
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private h3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment$a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110239

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f1102e2

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f1102db

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private i3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/x;->b(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/x0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/x0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->r()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/w0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/w0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method private synthetic j3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->isVox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->isPolite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    const v0, 0x7f030014

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getSq()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getBand()I

    move-result p1

    const v0, 0x7f030001

    .line 6
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method

.method private synthetic l3(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->W2()V

    :cond_0
    return-void
.end method

.method static synthetic n3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic o3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/lite/e/l;->T(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private synthetic q3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/device/lite/e/l;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic s3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/device/lite/e/l;->N(I)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static u3()Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;-><init>()V

    return-object v0
.end method

.method private v3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103c4

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f1103c3

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/y0;->a:Lcom/ifengyu/intercom/device/lite/fragment/y0;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/b1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/b1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    const v3, 0x7f11001f

    .line 5
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private w3([Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f1102e1

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/dialog/list/d;

    const v2, 0x7f1102e0

    .line 3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;->L(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 4
    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/dialog/list/d;->H(I)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance p2, Lcom/ifengyu/intercom/device/lite/fragment/z0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/z0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 6
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f120100

    .line 8
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private x3([Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f110448

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/dialog/list/d;

    const v2, 0x7f110238

    .line 3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;->L(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 4
    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/dialog/list/d;->H(I)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance p2, Lcom/ifengyu/intercom/device/lite/fragment/a1;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/a1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 6
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f120100

    .line 8
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->h3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->i3()V

    return-object v0
.end method

.method public synthetic k3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->j3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V

    return-void
.end method

.method public synthetic m3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->l3(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09024b,
            0x7f09023f,
            0x7f090259,
            0x7f090263
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getBand()I

    move-result p1

    const v2, 0x7f030001

    .line 3
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->x3([Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_1
    const p1, 0x7f030014

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getSq()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->w3([Ljava/lang/String;I)V

    goto :goto_1

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/lite/e/l;->T(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->v3()V

    goto :goto_1

    .line 11
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/lite/e/l;->Q(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09023f -> :sswitch_3
        0x7f09024b -> :sswitch_2
        0x7f090259 -> :sswitch_1
        0x7f090263 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic p3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->o3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic r3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->q3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic t3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->s3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method
