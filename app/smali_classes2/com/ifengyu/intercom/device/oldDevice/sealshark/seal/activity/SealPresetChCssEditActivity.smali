.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "SealPresetChCssEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field channelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field channelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ee
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field private m:Z

.field mFlRXCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d2
    .end annotation
.end field

.field mFlTxCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d4
    .end annotation
.end field

.field mTitleBarConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048d
    .end annotation
.end field

.field mTitleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048e
    .end annotation
.end field

.field mTitleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090491
    .end annotation
.end field

.field mTvRxCss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904fb
    .end annotation
.end field

.field mTvTxCss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090509
    .end annotation
.end field

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->m:Z

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->m:Z

    return p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->m:Z

    return p1
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    return p0
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    return p1
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    return p0
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    return p1
.end method

.method private L()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "seal_action_edit_css_channel_info"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    const v1, 0x7f11009d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->E(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41900000    # 18.0f

    if-eqz v1, :cond_2

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41900000    # 18.0f

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->E(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v4, 0x41900000    # 18.0f

    :goto_2
    invoke-virtual {v0, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/t0;->l(Ljava/lang/String;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/x0;->f1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    :cond_4
    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/a;->b:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1102a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f1100bd

    const v2, 0x7f1100cc

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    const/16 p1, 0x3e9

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->l:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    const-string v2, "cssCodeModifiedPresetChannel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 8
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->g(I)[I

    move-result-object p1

    .line 9
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    const v6, 0x7f1101a4

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    aget v4, p1, v4

    aget p1, p1, v3

    invoke-virtual {v5, v4, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;)V

    invoke-virtual {v5, v2, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    .line 10
    invoke-virtual {v5, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 11
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 12
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->g(I)[I

    move-result-object p1

    .line 13
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    const v6, 0x7f110333

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    aget v4, p1, v4

    aget p1, p1, v3

    invoke-virtual {v5, v4, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;)V

    invoke-virtual {v5, v2, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    .line 14
    invoke-virtual {v5, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d2 -> :sswitch_3
        0x7f0901d4 -> :sswitch_2
        0x7f09048d -> :sswitch_1
        0x7f09048e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_mac_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->n:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->M()V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->L()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onStart()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->k:I

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;->j:I

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealPresetChCssEditActivity;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
