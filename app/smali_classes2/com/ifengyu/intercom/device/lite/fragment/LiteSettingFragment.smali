.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LiteSettingFragment.java"


# instance fields
.field mBtnUnbind:Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b9
    .end annotation
.end field

.field mContentBoard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090111
    .end annotation
.end field

.field mEmptyBoard:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090197
    .end annotation
.end field

.field mItemConfig:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090241
    .end annotation
.end field

.field mItemDeploy:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090242
    .end annotation
.end field

.field mItemId:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090247
    .end annotation
.end field

.field mItemMore:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024c
    .end annotation
.end field

.field mItemName:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024d
    .end annotation
.end field

.field mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090261
    .end annotation
.end field

.field mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090262
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field mTvChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c1
    .end annotation
.end field

.field mTvReceiveFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f2
    .end annotation
.end field

.field mTvSendFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ff
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic B3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->m3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->k3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :cond_0
    return-void
.end method

.method private synthetic D3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private synthetic F3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private synthetic H3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getDeviceId()I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lite"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/p/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->n3()V

    return-void
.end method

.method private synthetic J3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getDeviceId()I

    move-result p2

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "lite"

    invoke-static {p3, p2}, Lcom/ifengyu/intercom/p/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->R(I)V

    return-void
.end method

.method private synthetic L3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/i/t0;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private N3()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/e;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getValueText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100c3

    .line 3
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v2, v0

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v3, 0x7f11030d

    .line 4
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->J(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    .line 5
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->H(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->I(I)Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$g;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$g;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    const/4 v5, 0x0

    const v6, 0x7f1100bd

    const/4 v7, 0x2

    .line 7
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    new-instance v4, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$f;

    invoke-direct {v4, p0, v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$f;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;Lcom/ifengyu/intercom/m/b/e;)V

    const v6, 0x7f1100c6

    .line 8
    invoke-virtual {v2, v5, v6, v5, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/b$a;

    const v4, 0x7f120100

    .line 10
    invoke-virtual {v2, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/b$a;->G()Landroid/widget/EditText;

    move-result-object v0

    new-array v4, v7, [Landroid/text/InputFilter;

    .line 12
    new-instance v6, Lcom/ifengyu/intercom/device/lite/utils/b;

    invoke-direct {v6}, Lcom/ifengyu/intercom/device/lite/utils/b;-><init>()V

    aput-object v6, v4, v5

    new-instance v5, Lcom/ifengyu/intercom/device/lite/utils/a;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/ifengyu/intercom/device/lite/utils/a;-><init>(I)V

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 15
    invoke-static {v0}, Lcom/ifengyu/library/utils/d;->d(Landroid/view/View;)V

    return-void
.end method

.method private O3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f11018a

    .line 4
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v2, "lite"

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->m(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/u0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/u0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/r0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/r0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    const v3, 0x7f110049

    .line 7
    invoke-virtual {v0, v1, v3, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 8
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private P3(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f110439

    .line 4
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const-string v2, "lite"

    .line 5
    invoke-static {v2}, Lcom/ifengyu/intercom/p/j0;->n(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->F(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/l0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/l0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/o0;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/o0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;I)V

    const p1, 0x7f110049

    .line 7
    invoke-virtual {v0, v1, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 8
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private Q3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110388

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$c;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$b;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

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

.method private R3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->l()Lcom/ifengyu/intercom/i/v0;

    move-result-object v0

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->p()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/t0;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private S3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f11021e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getLiteDisplaySeq()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getLiteDisplaySeq()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTvSendFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget-object p1, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTvSendFreq:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/s;->w(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->R3()V

    return-void
.end method

.method static synthetic h3(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method static synthetic i3(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)Lcom/ifengyu/intercom/device/lite/e/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    return-object p0
.end method

.method static synthetic j3(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private k3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAgreedProtocolVersion()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->O3()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->l3(I)V

    :goto_0
    return-void
.end method

.method private l3(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "lite"

    .line 2
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/n0;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/n0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;I)V

    new-instance p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$e;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$e;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private m3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionSoft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionHw()I

    move-result p1

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/d/s;->d()Lcom/ifengyu/intercom/device/lite/d/s;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/ifengyu/intercom/device/lite/d/s;->b(II)V

    :cond_0
    return-void
.end method

.method private n3()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v0

    const-string v1, "lite"

    .line 2
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/n/a;->K(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 4
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/s0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/s0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$d;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$d;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private p3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/x;->b(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/k0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/k0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/q0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/q0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->r()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/p0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/p0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->p()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/m0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/m0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->J()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->K()V

    .line 8
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/d/t;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/d/t;

    .line 9
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/t0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/t0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/d/t;->g()V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public static synthetic q3(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->S3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method private synthetic r3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le p2, p1, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->P3(I)V

    :cond_0
    return-void
.end method

.method private synthetic t3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->R(I)V

    return-void
.end method

.method private synthetic v3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->d2()V

    return-void
.end method

.method private synthetic x3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic z3(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->W2()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic A3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic C3(Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->B3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method public E2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic E3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->D3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method

.method public synthetic G3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->F3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic I3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->H3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic K3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->J3(ILcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic M3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->L3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected d2()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->o3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->p3()V

    return-object v0
.end method

.method public o3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/v0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/v0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11037d

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090241,
            0x7f09024d,
            0x7f090247,
            0x7f090262,
            0x7f090242,
            0x7f09024c,
            0x7f090261,
            0x7f0900b9,
            0x7f09029c,
            0x7f09023c
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->E3(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->s3()Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;->x3(Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;)Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->N3()V

    goto :goto_0

    .line 6
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->u3()Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 7
    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;->w3()Lcom/ifengyu/intercom/device/lite/fragment/BatchConfigurationFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 8
    :sswitch_6
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/fragment/j1;->f4()Lcom/ifengyu/intercom/device/lite/fragment/j1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 9
    :sswitch_7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getDeviceId()I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/activity/UserProtocolActivity;->P(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :sswitch_8
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->Q3()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900b9 -> :sswitch_8
        0x7f09023c -> :sswitch_7
        0x7f090241 -> :sswitch_6
        0x7f090242 -> :sswitch_5
        0x7f09024c -> :sswitch_4
        0x7f09024d -> :sswitch_3
        0x7f090261 -> :sswitch_2
        0x7f090262 -> :sswitch_1
        0x7f09029c -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->I()V

    return-void
.end method

.method public synthetic s3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->r3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public synthetic u3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->t3(Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method

.method public synthetic w3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->v3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic y3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->x3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V

    return-void
.end method
