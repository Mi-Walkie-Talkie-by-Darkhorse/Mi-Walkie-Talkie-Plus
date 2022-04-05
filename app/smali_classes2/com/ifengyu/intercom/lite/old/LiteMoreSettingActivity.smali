.class public Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseActivity;


# instance fields
.field m:[Ljava/lang/String;

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

.field n:[Ljava/lang/String;

.field private o:Lcom/ifengyu/intercom/lite/h/h0;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f110250

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1102c7

    invoke-static {v2}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->m:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f110397

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f110246

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->n:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f1101e7

    invoke-static {p0}, Lcom/ifengyu/library/a/m;->d(I)V

    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f11024f

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance p2, Lcom/ifengyu/intercom/lite/old/m;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/lite/old/m;-><init>(Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;)V

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

.method private b([Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    const v1, 0x7f110399

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object v1, v0

    check-cast v1, Lcom/ifengyu/intercom/lite/dialog/list/d;

    invoke-virtual {v1, p2}, Lcom/ifengyu/intercom/lite/dialog/list/d;->d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;

    new-instance p2, Lcom/ifengyu/intercom/lite/old/o;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/lite/old/o;-><init>(Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;)V

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

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity$a;-><init>(Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f1101a1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->f(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f110250

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    const v1, 0x7f110246

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private y()V
    .locals 2

    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/p;-><init>(Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->j()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/old/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/n;-><init>(Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->k()Landroidx/lifecycle/p;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/lite/old/l;->a:Lcom/ifengyu/intercom/lite/old/l;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->n()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isVox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->isPolite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->m:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getSq()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getBand()I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->n:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->v()V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/lite/h/h0;->d(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->w()V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lcom/ifengyu/intercom/lite/h/h0;->c(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->w()V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->v()V

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
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

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getBand()I

    move-result p1

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->n:[Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->b([Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->m:[Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->i()Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/DeviceParamLiveData;->getSq()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->a([Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->c(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->w()V

    goto :goto_1

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->o:Lcom/ifengyu/intercom/lite/h/h0;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->b(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->w()V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->x()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteMoreSettingActivity;->y()V

    return-void
.end method
