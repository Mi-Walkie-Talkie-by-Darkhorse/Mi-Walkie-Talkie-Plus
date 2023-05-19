.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LiteSettingVoiceFragment.java"


# static fields
.field private static final A:[Ljava/lang/String;


# instance fields
.field mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024a
    .end annotation
.end field

.field mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025a
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

.field private z:Lcom/ifengyu/intercom/device/lite/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e2d\u6587"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "English"

    aput-object v2, v0, v1

    const v1, 0x7f1100c5

    .line 1
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3(I)Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->ENGLISH:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CHINESE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    :goto_0
    return-object v0
.end method

.method private h3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/e1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/e1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f110255

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private i3()V
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

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/c1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/c1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->r()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/f1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/f1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->isBootVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->isKeyVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    sget-object v2, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->r3(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private synthetic l3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->isBootVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->isKeyVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->r3(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method

.method private synthetic n3(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->W2()V

    :cond_0
    return-void
.end method

.method private synthetic p3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->g3(I)Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/lite/e/l;->V(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    return-void
.end method

.method private r3(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_0
    return v0
.end method

.method public static s3()Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;-><init>()V

    return-object v0
.end method

.method private t3([Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f110254

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/dialog/list/d;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/d1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/d1;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 4
    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/dialog/list/d;->H(I)Lcom/ifengyu/intercom/dialog/list/d;

    .line 5
    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 6
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f120100

    .line 7
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

    const v1, 0x7f0c00ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->h3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->i3()V

    return-object v0
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->l3(Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;)V

    return-void
.end method

.method public synthetic o3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->n3(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09025a,
            0x7f09024a,
            0x7f090262
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09024a

    if-eq p1, v0, :cond_2

    const v0, 0x7f09025a

    if-eq p1, v0, :cond_1

    const v0, 0x7f090262

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->q()Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/models/LiteDeviceParamLiveData;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->r3(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->t3([Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/lite/e/l;->L(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/device/lite/e/l;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/lite/e/l;->U(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    :goto_0
    return-void
.end method

.method public synthetic q3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingVoiceFragment;->p3(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method
