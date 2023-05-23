.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "DolphinRelayEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field mBtnRelayEditDelete:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b4
    .end annotation
.end field

.field mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bb
    .end annotation
.end field

.field mFlRelayEditDownFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901cd
    .end annotation
.end field

.field mFlRelayEditDownTone:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ce
    .end annotation
.end field

.field mFlRelayEditUpFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901cf
    .end annotation
.end field

.field mFlRelayEditUpTone:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d0
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

.field mTvRelayEditDownFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f4
    .end annotation
.end field

.field mTvRelayEditDownTone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f5
    .end annotation
.end field

.field mTvRelayEditUpFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f6
    .end annotation
.end field

.field mTvRelayEditUpTone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f7
    .end annotation
.end field

.field private n:I

.field private o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->j:I

    return p1
.end method

.method static synthetic H(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic J(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->k:I

    return p1
.end method

.method static synthetic K(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic L(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->S(II)V

    return-void
.end method

.method static synthetic M(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->R(II)V

    return-void
.end method

.method static synthetic N(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    return-object p0
.end method

.method private O()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f11010e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "relayInfo"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->j:I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/j/a;->f:[Ljava/lang/String;

    array-length v5, v1

    if-ge v0, v5, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq2()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->k:I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v0

    array-length v5, v1

    if-ge v0, v5, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getTone2()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v5, 0x7f1101a2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->o:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->j:I

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41900000    # 18.0f

    if-nez v2, :cond_2

    const/high16 v2, 0x41800000    # 16.0f

    goto :goto_2

    :cond_2
    const/high16 v2, 0x41900000    # 18.0f

    :goto_2
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->k:I

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v5, 0x41900000    # 18.0f

    :goto_3
    invoke-virtual {v0, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4

    :cond_4
    const-string v1, "channelNum"

    .line 20
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 23
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/a;

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/j/a;->b:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private R(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x7c

    .line 2
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x28

    .line 3
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    goto :goto_0

    .line 4
    :cond_3
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    :goto_0
    return-void
.end method

.method private S(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x7c

    .line 2
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x28

    .line 3
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    goto :goto_0

    .line 4
    :cond_3
    iput p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    :goto_0
    return-void
.end method

.method private U(IILcom/ifengyu/intercom/ui/widget/dialog/m$k;)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->j(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/m;

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/m;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->v(Lcom/ifengyu/intercom/ui/widget/dialog/m$k;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->show()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900b4

    const v1, 0x7f1100cc

    const v2, 0x7f1100bd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    const/16 v5, 0x7b

    const/16 v6, 0x27

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_7

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f11033c

    new-array v0, v4, [Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "relayInfo"

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 10
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setNo(I)V

    .line 11
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setType(I)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 13
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 14
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone(I)V

    .line 15
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq2(I)V

    .line 16
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone2(I)V

    .line 17
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.ifengyu.action.RELAY_INSERT_CHANNEL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->n:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setNo(I)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setType(I)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setName(Ljava/lang/String;)V

    .line 22
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->j:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq(I)V

    .line 23
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone(I)V

    .line 24
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->k:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setFreq2(I)V

    .line 25
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->setTone2(I)V

    .line 26
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    :cond_4
    :goto_2
    const p1, 0x7f1103f4

    .line 28
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 29
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 30
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->l:I

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    if-lez p1, :cond_6

    if-gt p1, v6, :cond_6

    move v7, p1

    goto :goto_3

    :cond_6
    if-le p1, v6, :cond_7

    if-gt p1, v5, :cond_7

    add-int/lit8 v7, p1, -0x28

    goto :goto_4

    :cond_7
    if-le p1, v5, :cond_8

    add-int/lit8 v7, p1, -0x7c

    const/4 v4, 0x2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v4, 0x0

    .line 31
    :goto_4
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    const v0, 0x7f110333

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1, v4, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$e;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    .line 32
    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 33
    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$a;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->j:I

    const/4 v2, 0x2

    :cond_9
    invoke-direct {p0, v1, v2, v4}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->U(IILcom/ifengyu/intercom/ui/widget/dialog/m$k;)V

    return-void

    .line 37
    :pswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    .line 38
    iget p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->m:I

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    if-lez p1, :cond_b

    if-gt p1, v6, :cond_b

    move v7, p1

    goto :goto_5

    :cond_b
    if-le p1, v6, :cond_c

    if-gt p1, v5, :cond_c

    add-int/lit8 v7, p1, -0x28

    goto :goto_6

    :cond_c
    if-le p1, v5, :cond_d

    add-int/lit8 v7, p1, -0x7c

    const/4 v4, 0x2

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v4, 0x0

    .line 39
    :goto_6
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    const v0, 0x7f1101a4

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->h(I)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1, v4, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->k(II)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->j(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    .line 40
    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->i(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_7

    .line 41
    :pswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/p/b0;->s(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$c;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->k:I

    goto :cond_9

    .line 45
    :cond_f
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1100c1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v0, 0x7f110187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$g;-><init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    .line 46
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901cd
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

    const p1, 0x7f0c002e

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->P()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->O()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    return-void
.end method
