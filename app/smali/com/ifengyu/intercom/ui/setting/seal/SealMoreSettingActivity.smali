.class public Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealMoreSettingActivity.java"


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:I

.field noiseLevel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10014e
    .end annotation
.end field

.field noiseLevelValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10014f
    .end annotation
.end field

.field pwSaveMode:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10014a
    .end annotation
.end field

.field pwSaveModeCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10014b
    .end annotation
.end field

.field stopTransIfBusy:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10014c
    .end annotation
.end field

.field stopTransIfBusyCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10014d
    .end annotation
.end field

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field

.field voicePrompt:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100145
    .end annotation
.end field

.field voicePromptCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100146
    .end annotation
.end field

.field voiceType:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100148
    .end annotation
.end field

.field voiceTypeParentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100147
    .end annotation
.end field

.field voiceTypeValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100149
    .end annotation
.end field

.field wideNarrowBand:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100150
    .end annotation
.end field

.field wideNarrowBandValue:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100151
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b:I

    return v0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->w()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->d()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->f()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v0

    const v1, 0xd0002

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->x()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const v1, 0x7f090074

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const-string v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->z()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v1, 0x7f09015a

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v1, 0x7f0901b8

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->A()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    const v1, 0x7f09025d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    const v1, 0x7f090150

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c3,
            0x7f10014a,
            0x7f100145,
            0x7f10014c,
            0x7f100148,
            0x7f10014e,
            0x7f100150
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v6, 0x2

    const v3, 0x7f0900a1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->b(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    invoke-static {v1}, Lcom/ifengyu/intercom/b/aa;->b(I)V

    :goto_3
    const-string v0, "device_setting_page"

    const-string v1, "sealPowerSaveModeBtnClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :sswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020128

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    new-instance v2, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput v6, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    :goto_4
    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->d(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f090074

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "\u4e2d\u6587"

    aput-object v1, v2, v0

    const-string v1, "English"

    aput-object v1, v2, v6

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v0, 0x7f090254

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$4;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    new-array v2, v4, [Ljava/lang/String;

    const v3, 0x7f09015a

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f0901b8

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v0, 0x7f090159

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$5;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    new-array v2, v4, [Ljava/lang/String;

    const v3, 0x7f09025d

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f090150

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v0, 0x7f09025f

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$6;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$b;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f100145 -> :sswitch_1
        0x7f100148 -> :sswitch_4
        0x7f10014a -> :sswitch_2
        0x7f10014c -> :sswitch_3
        0x7f10014e -> :sswitch_5
        0x7f100150 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->c()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->e:Ljava/lang/String;

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method
