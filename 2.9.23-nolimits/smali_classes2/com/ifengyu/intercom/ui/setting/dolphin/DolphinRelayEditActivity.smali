.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "DolphinRelayEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field mBtnRelayEditDelete:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10012c
    .end annotation
.end field

.field mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100123
    .end annotation
.end field

.field mFlRelayEditDownFreq:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100126
    .end annotation
.end field

.field mFlRelayEditDownTone:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10012a
    .end annotation
.end field

.field mFlRelayEditUpFreq:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100124
    .end annotation
.end field

.field mFlRelayEditUpTone:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100128
    .end annotation
.end field

.field mTitleBarConfirm:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10033a
    .end annotation
.end field

.field mTitleBarLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field mTitleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100242
    .end annotation
.end field

.field mTvRelayEditDownFreq:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100127
    .end annotation
.end field

.field mTvRelayEditDownTone:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10012b
    .end annotation
.end field

.field mTvRelayEditUpFreq:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100125
    .end annotation
.end field

.field mTvRelayEditUpTone:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100129
    .end annotation
.end field

.field private q:I

.field private r:Lcom/ifengyu/intercom/ui/setting/UserChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, p2, 0x28

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, p2, 0x7c

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(II)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/widget/dialog/o$c;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->a(Lcom/ifengyu/intercom/ui/widget/dialog/o$c;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/o;->show()V

    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/o;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/widget/dialog/p$c;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/p;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->a(Lcom/ifengyu/intercom/ui/widget/dialog/p$c;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/p;->show()V

    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/p;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, p2, 0x28

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, p2, 0x7c

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b(II)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/b/l;->b:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v4, "relayInfo"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    sget-object v4, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    sget-object v4, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v4, 0x7f0900e6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v4, 0x7f0900a8

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    iget v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a:I

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    sget-object v4, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    iget v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v4, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    iget v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b:I

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    sget-object v4, Lcom/ifengyu/intercom/b/l;->e:[Ljava/lang/String;

    iget v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    iget v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-nez v4, :cond_4

    :goto_3
    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v2, v7, [Landroid/text/InputFilter;

    new-instance v3, Lcom/ifengyu/intercom/ui/widget/view/b;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/widget/EditText;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    const-string v2, "channelNum"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v2, 0x7f09002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v2, 0x7f0900a8

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v5, 0x7b

    const/16 v3, 0x27

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f090216

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f09019a

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>()V

    const-string v4, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    int-to-long v4, v1

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "relayInfo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->setResult(ILandroid/content/Intent;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "com.ifengyu.action.RELAY_INSERT_CHANNEL"

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    int-to-long v4, v2

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "relayInfo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$1;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-direct {p0, v4, v2, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/widget/dialog/p$c;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$2;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-direct {p0, v4, v2, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/widget/dialog/o$c;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$3;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-direct {p0, v4, v2, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/widget/dialog/p$c;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$4;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-direct {p0, v4, v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(Ljava/lang/String;ILcom/ifengyu/intercom/ui/widget/dialog/o$c;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-nez v0, :cond_7

    move v0, v1

    move v1, v2

    :goto_3
    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v3, 0x7f090198

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    const v1, 0x7f090078

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$5;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$5;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->show()V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-gt v0, v3, :cond_8

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-le v0, v3, :cond_9

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-gt v0, v5, :cond_9

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    add-int/lit8 v0, v0, -0x28

    move v1, v2

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    if-le v0, v5, :cond_e

    const/4 v1, 0x2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c:I

    add-int/lit8 v0, v0, -0x7c

    goto :goto_3

    :sswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-nez v0, :cond_a

    :goto_4
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v3, 0x7f0900e8

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    const v1, 0x7f090078

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$6;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->show()V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-lez v0, :cond_b

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-gt v0, v3, :cond_b

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-le v0, v3, :cond_c

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-gt v0, v5, :cond_c

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    add-int/lit8 v1, v0, -0x28

    goto :goto_4

    :cond_c
    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    if-le v0, v5, :cond_d

    const/4 v2, 0x2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d:I

    add-int/lit8 v1, v0, -0x7c

    goto :goto_4

    :sswitch_6
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090078

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto :goto_4

    :cond_e
    move v0, v1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f100124 -> :sswitch_2
        0x7f100126 -> :sswitch_3
        0x7f100128 -> :sswitch_4
        0x7f10012a -> :sswitch_5
        0x7f10012c -> :sswitch_6
        0x7f10033a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->d()V

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
