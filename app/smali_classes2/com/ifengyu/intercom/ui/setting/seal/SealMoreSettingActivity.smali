.class public Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealMoreSettingActivity.java"


# instance fields
.field noiseLevel:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d2
    .end annotation
.end field

.field noiseLevelValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d3
    .end annotation
.end field

.field pwSaveMode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090317
    .end annotation
.end field

.field pwSaveModeCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090318
    .end annotation
.end field

.field private q:Ljava/lang/Runnable;

.field private r:I

.field stopTransIfBusy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d9
    .end annotation
.end field

.field stopTransIfBusyCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field voicePrompt:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cb
    .end annotation
.end field

.field voicePromptCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cc
    .end annotation
.end field

.field voiceType:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cd
    .end annotation
.end field

.field voiceTypeParentLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ce
    .end annotation
.end field

.field voiceTypeValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cf
    .end annotation
.end field

.field wideNarrowBand:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d7
    .end annotation
.end field

.field wideNarrowBandValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->r:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->r:I

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->r:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->y()V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->x()V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->z()V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f11021d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->z()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->y()V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->x()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->z()V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->B()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v1, 0x7f1102c7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->noiseLevelValue:Landroid/widget/TextView;

    const v1, 0x7f110250

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v0

    const v1, 0xd0002

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeParentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->S()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const-string v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voiceTypeValue:Landroid/widget/TextView;

    const v1, 0x7f11009b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->t()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    const v1, 0x7f110246

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->wideNarrowBandValue:Landroid/widget/TextView;

    const v1, 0x7f110397

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090419,
            0x7f090317,
            0x7f0904cb,
            0x7f0903d9,
            0x7f0904cd,
            0x7f0902d2,
            0x7f0904d7
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v0, 0x1388

    const v2, 0x7f08013e

    const v3, 0x7f110285

    const v4, 0x7f110093

    const/4 v5, 0x3

    const/4 v6, 0x2

    const v7, 0x7f1100c9

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/String;

    const v0, 0x7f110397

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v9

    const v0, 0x7f110246

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    .line 5
    invoke-virtual {v0, v8}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v1, 0x7f110399

    .line 6
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$f;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$c;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    .line 7
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 9
    :sswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const v0, 0x7f11009b

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v9

    const-string v0, "\u4e2d\u6587"

    aput-object v0, p1, v8

    const-string v0, "English"

    aput-object v0, p1, v6

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    .line 12
    invoke-virtual {v0, v8}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v1, 0x7f11038e

    .line 13
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$c;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    .line 14
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto/16 :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 16
    :sswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, v8, p1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 19
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    :cond_2
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    .line 21
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iput v9, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->r:I

    .line 23
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->c(Z)V

    goto/16 :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 25
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 26
    :sswitch_4
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, v8, p1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 29
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    :cond_4
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    .line 31
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    iput v6, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->r:I

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->b(Z)V

    goto/16 :goto_0

    .line 34
    :cond_5
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 35
    :sswitch_5
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, v8, p1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 38
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    :cond_6
    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    .line 40
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iput v8, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->r:I

    .line 42
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->b(I)V

    goto :goto_0

    .line 43
    :cond_7
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 44
    :sswitch_6
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v5, [Ljava/lang/String;

    const v0, 0x7f110250

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v9

    const v0, 0x7f1102c7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v6

    .line 46
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {v0, v8}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    const v1, 0x7f11024f

    .line 48
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->a([Ljava/lang/CharSequence;Lcom/ifengyu/intercom/ui/widget/dialog/q$c;)Lcom/ifengyu/intercom/ui/widget/dialog/q;

    .line 49
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/q;->show()V

    goto :goto_0

    .line 50
    :cond_8
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902d2 -> :sswitch_6
        0x7f090317 -> :sswitch_5
        0x7f0903d9 -> :sswitch_4
        0x7f090419 -> :sswitch_3
        0x7f0904cb -> :sswitch_2
        0x7f0904cd -> :sswitch_1
        0x7f0904d7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004a

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->w()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "receiveParamResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
