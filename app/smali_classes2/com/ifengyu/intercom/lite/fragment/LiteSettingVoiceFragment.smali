.class public Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;
.super Lcom/ifengyu/intercom/lite/base/e;


# static fields
.field private static final A:[Ljava/lang/String;


# instance fields
.field mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ee
    .end annotation
.end field

.field mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901fb
    .end annotation
.end field

.field mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090206
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/lite/h/h0;


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

    const v1, 0x7f11009b

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/m1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/m1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101c5

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private B()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/n1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/n1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->j()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/l1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/l1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isBootVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isKeyVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    sget-object v2, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment$a;->a:[I

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

.method private a([Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f1101c4

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/k1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/k1;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

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

.method private c(I)Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->ENGLISH:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CHINESE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    :goto_0
    return-object v0
.end method

.method public static newInstance()Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isBootVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isKeyVoice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I

    move-result p1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->c(I)Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/h/h0;->a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

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
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901fb,
            0x7f0901ee,
            0x7f090206
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901ee

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901fb

    if-eq p1, v0, :cond_1

    const v0, 0x7f090206

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->A:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->a(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->a([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->a(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->z:Lcom/ifengyu/intercom/lite/h/h0;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->d(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    :goto_0
    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->A()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->B()V

    return-object v0
.end method
