.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SharkChannelEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field mDeleteBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013d
    .end annotation
.end field

.field mDeleteLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100173
    .end annotation
.end field

.field mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100134
    .end annotation
.end field

.field mFlRXCss:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100139
    .end annotation
.end field

.field mFlRxFreq:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100135
    .end annotation
.end field

.field mFlTxCss:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013b
    .end annotation
.end field

.field mFlTxFreq:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100137
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

.field mTvRxFreq:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100136
    .end annotation
.end field

.field mTvTxCss:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10013c
    .end annotation
.end field

.field mTvTxFreq:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100138
    .end annotation
.end field

.field private q:I

.field private r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/setting/shark/a$c;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/a;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/setting/shark/a;->a(Lcom/ifengyu/intercom/ui/setting/shark/a$c;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/a;->show()V

    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/a;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c:I

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/b/l;->b:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d:I

    return p1
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "seal_action_modify_channel"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v3, "seal_action_modify_channel_info"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v3, 0x7f090145

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v3, 0x7f09004c

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c:I

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d:I

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v7, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/b;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const-string v1, "seal_action_insert_channel_index"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v1, 0x7f09004c

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const v7, 0x7f09006c

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09021a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09004c

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;-><init>()V

    const-string v2, "seal_action_modify_channel"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    invoke-static {v4, v2}, Lcom/ifengyu/intercom/b/v;->b(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    :goto_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    const/16 v0, 0x7d2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "customChannel"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->finish()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    goto :goto_2

    :cond_5
    const-string v2, "seal_action_insert_channel"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    invoke-static {v4, v2}, Lcom/ifengyu/intercom/b/v;->b(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/Long;)V

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->q:I

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(I)V

    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b(I)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    :goto_4
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h(I)V

    const/16 v0, 0x7d1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "customChannel"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->b:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e(I)V

    goto :goto_4

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V

    invoke-direct {p0, v5, v4, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/setting/shark/a$c;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V

    invoke-direct {p0, v5, v3, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/setting/shark/a$c;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d:I

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->f(I)[I

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v2, 0x7f090199

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v1

    aget v2, v0, v6

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    const v1, 0x7f090079

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->show()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c:I

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->f(I)[I

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v1

    aget v2, v0, v6

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    const v1, 0x7f090079

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$4;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$4;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SharkPickerDialog;->show()V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090079

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$5;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$5;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f100135 -> :sswitch_2
        0x7f100137 -> :sswitch_3
        0x7f100139 -> :sswitch_4
        0x7f10013b -> :sswitch_5
        0x7f10013d -> :sswitch_6
        0x7f10033c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->d()V

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
