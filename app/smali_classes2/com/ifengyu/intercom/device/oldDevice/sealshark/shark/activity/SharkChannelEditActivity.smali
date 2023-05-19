.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "SharkChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field mDeleteBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a7
    .end annotation
.end field

.field mDeleteLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a8
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
    iput-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->p:Z

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    return p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    return p1
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    return p0
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    return p1
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->p:Z

    return p0
.end method

.method static synthetic M(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->p:Z

    return p1
.end method

.method static synthetic N(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->l:I

    return p1
.end method

.method static synthetic O(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->m:I

    return p1
.end method

.method static synthetic P(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

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

    const v2, 0x7f110092

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v1, "seal_action_modify_channel_info"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getNo()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getTxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->l:I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getRxCss()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->m:I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f1102a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->l:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->d:[Ljava/lang/String;

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v5, 0x41800000    # 16.0f

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
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->m:I

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->F(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {v0, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_2
    const-string v1, "seal_action_insert_channel_index"

    .line 20
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 23
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/a;

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/a;->b:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private T(Ljava/lang/String;ILcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$k;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 4
    :goto_0
    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;->v(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$k;)V

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;->show()V

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

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1103f4

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f110092

    new-array v1, v4, [Ljava/lang/Object;

    .line 6
    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "seal_action_modify_channel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "customChannel"

    if-eqz v2, :cond_4

    .line 11
    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 13
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 16
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 19
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_1

    .line 20
    :cond_3
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 21
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    .line 22
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->l:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 23
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->m:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    const/16 p1, 0x7d2

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "seal_action_insert_channel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->n:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setNo(I)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setType(I)V

    .line 28
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setName(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 31
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_2

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 33
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 34
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    goto :goto_2

    .line 35
    :cond_6
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->k:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxFreq(I)V

    .line 36
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->j:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxFreq(I)V

    .line 37
    :goto_2
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->l:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setTxCss(I)V

    .line 38
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->m:I

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;->setRxCss(I)V

    const/16 p1, 0x7d1

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 40
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 41
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 42
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->l:I

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->g(I)[I

    move-result-object p1

    .line 43
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1101a4

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    aget v5, p1, v5

    aget p1, p1, v4

    invoke-virtual {v0, v5, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    .line 44
    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 45
    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 46
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)V

    invoke-direct {p0, v3, v4, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->T(Ljava/lang/String;ILcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$k;)V

    goto :goto_4

    .line 47
    :pswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 48
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->m:I

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->g(I)[I

    move-result-object p1

    .line 49
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Landroid/content/Context;)V

    const v6, 0x7f110333

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    aget v5, p1, v5

    aget p1, p1, v4

    invoke-virtual {v0, v5, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 51
    :pswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 52
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)V

    invoke-direct {p0, v3, v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->T(Ljava/lang/String;ILcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$k;)V

    goto :goto_4

    .line 53
    :cond_8
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v0, 0x7f110187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 54
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

    const p1, 0x7f0c003b

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->S()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->R()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    return-void
.end method
