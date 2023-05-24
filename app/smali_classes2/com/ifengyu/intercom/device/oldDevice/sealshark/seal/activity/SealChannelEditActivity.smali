.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "SealChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field channelIndex:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ec
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field mDeleteBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a7
    .end annotation
.end field

.field mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ac
    .end annotation
.end field

.field mFlRXCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d2
    .end annotation
.end field

.field mFlRxFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d1
    .end annotation
.end field

.field mFlTxCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d4
    .end annotation
.end field

.field mFlTxFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d3
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

.field mTvRxFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904fa
    .end annotation
.end field

.field mTvTxCss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090509
    .end annotation
.end field

.field mTvTxFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090508
    .end annotation
.end field

.field private n:I

.field private o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->p:Z

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    return p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    return p1
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    return p0
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    return p1
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->p:Z

    return p0
.end method

.method static synthetic M(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->p:Z

    return p1
.end method

.method static synthetic N(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->l:I

    return p1
.end method

.method static synthetic O(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->m:I

    return p1
.end method

.method static synthetic P(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    return-object p0
.end method

.method private R()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "seal_action_modify_channel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " C%02d"

    const v3, 0x7f110090

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "seal_action_modify_channel_info"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->n:I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->l:I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->m:I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->channelIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1102a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->l:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->E(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object v3, v2, v5

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v6, 0x41900000    # 18.0f

    if-eqz v1, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41900000    # 18.0f

    :goto_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->m:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->E(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_2
    const-string v1, "seal_action_insert_channel_index"

    .line 20
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->n:I

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->channelIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->n:I

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/a;

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/a;->b:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private T(IILcom/ifengyu/intercom/ui/widget/dialog/m$k;)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/m;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a(Lcom/ifengyu/intercom/ui/widget/dialog/m$k;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->show()V

    return-void

.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a7

    const v1, 0x7f1100cc

    const v2, 0x7f1100bd

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1103f4

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "seal_action_modify_channel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "customChannel"

    if-eqz v1, :cond_4

    .line 10
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->n:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 11
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 15
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 18
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 20
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    .line 21
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->l:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 22
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->m:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    const/16 p1, 0x7d2

    .line 23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    .line 24
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "seal_action_insert_channel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->n:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 26
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 30
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_2

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 33
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_2

    .line 34
    :cond_6
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 35
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    .line 36
    :goto_2
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->l:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 37
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->m:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    const/16 p1, 0x7d1

    .line 38
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 39
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 40
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 41
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->l:I

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->g(I)[I

    move-result-object p1

    .line 42
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    const v6, 0x7f1101a4

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    aget v0, p1, v0

    aget p1, p1, v3

    invoke-virtual {v5, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)V

    invoke-virtual {v5, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    .line 43
    invoke-virtual {v5, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    .line 44
    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$b;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->j:I

    const/4 v5, 0x1

    goto :goto_5

    :pswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 47
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->m:I

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->g(I)[I

    move-result-object p1

    .line 48
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    const v6, 0x7f110333

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    aget v0, p1, v0

    aget p1, p1, v3

    invoke-virtual {v5, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)V

    invoke-virtual {v5, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    .line 49
    invoke-virtual {v5, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->k:I

    :goto_5
    invoke-direct {p0, v4, v5, v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->T(IILcom/ifengyu/intercom/ui/widget/dialog/m$k;)V

    return-void

    :cond_8
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v0, 0x7f110187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 53
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f09048d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->S()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealChannelEditActivity;->R()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    return-void
.end method
