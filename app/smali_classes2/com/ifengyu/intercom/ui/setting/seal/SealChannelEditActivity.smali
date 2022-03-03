.class public Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field channelIndex:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c6
    .end annotation
.end field

.field mDeleteBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090096
    .end annotation
.end field

.field mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090167
    .end annotation
.end field

.field mFlRXCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field mFlRxFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field mFlTxCss:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018f
    .end annotation
.end field

.field mFlTxFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018e
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

.field mTvRxFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090490
    .end annotation
.end field

.field mTvTxCss:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049d
    .end annotation
.end field

.field mTvTxFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049c
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(IILcom/ifengyu/intercom/ui/widget/dialog/o$k;)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a(Lcom/ifengyu/intercom/ui/widget/dialog/o$k;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->show()V

    return-void

.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->s:I

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->t:I

    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->w:Z

    return p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object p0
.end method

.method private w()V
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

    const v3, 0x7f11006a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "seal_action_modify_channel_info"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->s:I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->t:I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->channelIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v7}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110217

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->s:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41900000    # 18.0f

    if-eqz v1, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41900000    # 18.0f

    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->t:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v7, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x41900000    # 18.0f

    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_2
    const-string v1, "seal_action_insert_channel_index"

    .line 20
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f11002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->channelIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

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
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/a;

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090096

    const v1, 0x7f1100a0

    const v2, 0x7f110093

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f11033d

    .line 4
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

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
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

    invoke-static {v5, v1}, Lcom/ifengyu/intercom/i/c0;->a(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    .line 11
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    .line 12
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 16
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 19
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    goto :goto_1

    .line 20
    :cond_3
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 21
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    .line 22
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->s:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 23
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->t:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    const/16 p1, 0x7d2

    .line 24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_3

    .line 25
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "seal_action_insert_channel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

    invoke-static {v5, v1}, Lcom/ifengyu/intercom/i/c0;->a(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    .line 27
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    .line 28
    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 32
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    goto :goto_2

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 35
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    goto :goto_2

    .line 36
    :cond_6
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    .line 37
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g(I)V

    .line 38
    :goto_2
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->s:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f(I)V

    .line 39
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->t:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c(I)V

    const/16 p1, 0x7d1

    .line 40
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 41
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 42
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    .line 43
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->s:I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(I)[I

    move-result-object p1

    .line 44
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v6, 0x7f110117

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    aget v0, p1, v0

    aget p1, p1, v3

    invoke-virtual {v5, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$d;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V

    invoke-virtual {v5, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    .line 45
    invoke-virtual {v5, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$b;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->q:I

    const/4 v5, 0x1

    goto :goto_5

    :pswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    .line 49
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->t:I

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(I)[I

    move-result-object p1

    .line 50
    new-instance v5, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v6, 0x7f11029c

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    aget v0, p1, v0

    aget p1, p1, v3

    invoke-virtual {v5, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V

    invoke-virtual {v5, v1, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    .line 51
    invoke-virtual {v5, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$a;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->r:I

    :goto_5
    invoke-direct {p0, v1, v5, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->a(IILcom/ifengyu/intercom/ui/widget/dialog/o$k;)V

    return-void

    :cond_8
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f110096

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v0, 0x7f1100f7

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1, v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$e;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    .line 55
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09018c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090418
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0048

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->x()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->w()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method
