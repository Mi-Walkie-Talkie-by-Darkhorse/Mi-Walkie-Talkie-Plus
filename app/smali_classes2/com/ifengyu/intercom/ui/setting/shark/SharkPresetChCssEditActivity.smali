.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkPresetChCssEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field channelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c7
    .end annotation
.end field

.field channelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c8
    .end annotation
.end field

.field mFlRXCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field mFlTxCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018f
    .end annotation
.end field

.field mTitleBarConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090418
    .end annotation
.end field

.field mTitleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field mTitleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field mTvRxCss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090491
    .end annotation
.end field

.field mTvTxCss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049d
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->t:Z

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    return p0
.end method

.method private w()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "seal_action_edit_css_channel_info"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    const v1, 0x7f110075

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    const v1, 0x7f11007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v4, 0x41900000    # 18.0f

    if-eqz v1, :cond_2

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41900000    # 18.0f

    :goto_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v6, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->d:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v2, 0x41900000    # 18.0f

    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/h0;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :cond_4
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110218

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

    const v1, 0x7f110093

    const v2, 0x7f1100a0

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    const/16 p1, 0x3e9

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->s:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    const-string v2, "cssCodeModifiedPresetChannel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    .line 8
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(I)[I

    move-result-object p1

    .line 9
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f110117

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    aget v4, p1, v4

    aget p1, p1, v3

    invoke-virtual {v5, v4, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)V

    invoke-virtual {v5, v2, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    .line 10
    invoke-virtual {v5, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 11
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    .line 12
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(I)[I

    move-result-object p1

    .line 13
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f11029c

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    aget v4, p1, v4

    aget p1, p1, v3

    invoke-virtual {v5, v4, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;)V

    invoke-virtual {v5, v2, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    .line 14
    invoke-virtual {v5, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09018d -> :sswitch_3
        0x7f09018f -> :sswitch_2
        0x7f090418 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004d

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->x()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->w()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 3
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

.method public receiveChannelInfoOperateResp(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    const-string v1, "receiveChannelInfoOperateResp"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;->SHARK_CH_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CH_UERR;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;->SHARK_CH_QUERY:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate$SHARK_CHOPTION;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/h0;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->r:I

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->q:I

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
