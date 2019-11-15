.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkPresetChCssEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field channelName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c4
    .end annotation
.end field

.field channelNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100163
    .end annotation
.end field

.field private d:Z

.field mFlRXCss:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100139
    .end annotation
.end field

.field mFlTxCss:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013b
    .end annotation
.end field

.field mTitleBarConfirm:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10033c
    .end annotation
.end field

.field mTitleBarLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field mTitleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field

.field mTvRxCss:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013a
    .end annotation
.end field

.field mTvTxCss:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013c
    .end annotation
.end field

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    return v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lcom/ifengyu/intercom/b/l;->b:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private d()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "seal_action_edit_css_channel_info"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    const v3, 0x7f090055

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    const v3, 0x7f09005a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f090079

    const v5, 0x7f09006c

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    const/16 v0, 0x3e9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cssCodeModifiedPresetChannel"

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->f(I)[I

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v2, 0x7f090199

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)V

    invoke-virtual {v0, v6, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->show()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->f(I)[I

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)V

    invoke-virtual {v0, v6, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f100139 -> :sswitch_2
        0x7f10013b -> :sswitch_3
        0x7f10033c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->d()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->e:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

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

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->e:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;->SHARK_CH_QUERY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ab;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->a:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
