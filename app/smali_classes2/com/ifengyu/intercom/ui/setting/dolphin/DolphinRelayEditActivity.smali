.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "DolphinRelayEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mBtnRelayEditDelete:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
    .end annotation
.end field

.field mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090176
    .end annotation
.end field

.field mFlRelayEditDownFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090188
    .end annotation
.end field

.field mFlRelayEditDownTone:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090189
    .end annotation
.end field

.field mFlRelayEditUpFreq:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field mFlRelayEditUpTone:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018b
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

.field mTvRelayEditDownFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090489
    .end annotation
.end field

.field mTvRelayEditDownTone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048a
    .end annotation
.end field

.field mTvRelayEditUpFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048b
    .end annotation
.end field

.field mTvRelayEditUpTone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048c
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/ifengyu/intercom/ui/setting/UserChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

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

    .line 5
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x28

    .line 6
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    goto :goto_0

    .line 7
    :cond_3
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    :goto_0
    return-void
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

.method static synthetic a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:I

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

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

    .line 5
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x28

    .line 6
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    goto :goto_0

    .line 7
    :cond_3
    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(II)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Lcom/ifengyu/intercom/ui/setting/UserChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

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

    const-string v2, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f1100d2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "relayInfo"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v0

    sget-object v1, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110115

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->v:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    iget v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v5, 0x41900000    # 18.0f

    if-nez v1, :cond_2

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x41900000    # 18.0f

    :goto_2
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:I

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->d:[Ljava/lang/String;

    iget v7, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v2, 0x41900000    # 18.0f

    :goto_3
    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4

    :cond_4
    const-string v1, "channelNum"

    .line 20
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f11002c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 23
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/a;

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/p;->a:Landroid/graphics/Typeface;

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a2

    const v1, 0x7f1100a0

    const v2, 0x7f110093

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
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1102a2

    new-array v0, v4, [Ljava/lang/Object;

    .line 5
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/k0;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>()V

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

    const-wide/16 v5, 0x64

    if-eqz v1, :cond_2

    .line 10
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    int-to-long v7, v1

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    .line 11
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    .line 12
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    .line 14
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    .line 15
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    .line 16
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    .line 17
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    .line 18
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.ifengyu.action.RELAY_INSERT_CHANNEL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    int-to-long v8, v1

    add-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    .line 21
    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c(I)V

    .line 22
    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f(I)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/String;)V

    .line 24
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(I)V

    .line 25
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d(I)V

    .line 26
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b(I)V

    .line 27
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e(I)V

    .line 28
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    :cond_4
    :goto_2
    const p1, 0x7f11033d

    .line 30
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 31
    :pswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    .line 32
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    if-lez p1, :cond_6

    if-gt p1, v6, :cond_6

    move v7, p1

    goto :goto_3

    .line 33
    :cond_6
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    if-le p1, v6, :cond_7

    if-gt p1, v5, :cond_7

    add-int/lit8 v7, p1, -0x28

    goto :goto_4

    .line 34
    :cond_7
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->s:I

    if-le p1, v5, :cond_8

    add-int/lit8 v7, p1, -0x7c

    const/4 v4, 0x2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v4, 0x0

    .line 35
    :goto_4
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v0, 0x7f11029c

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1, v4, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$e;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    .line 36
    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 37
    :pswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$a;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$a;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->q:I

    const/4 v2, 0x2

    :cond_9
    invoke-direct {p0, v1, v2, v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->a(IILcom/ifengyu/intercom/ui/widget/dialog/o$k;)V

    return-void

    .line 41
    :pswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    .line 42
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    if-lez p1, :cond_b

    if-gt p1, v6, :cond_b

    move v7, p1

    goto :goto_5

    .line 43
    :cond_b
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    if-le p1, v6, :cond_c

    if-gt p1, v5, :cond_c

    add-int/lit8 v7, p1, -0x28

    goto :goto_6

    .line 44
    :cond_c
    iget p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->t:I

    if-le p1, v5, :cond_d

    add-int/lit8 v7, p1, -0x7c

    const/4 v4, 0x2

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v4, 0x0

    .line 45
    :goto_6
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;-><init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V

    const v0, 0x7f110117

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1, v4, v7}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(II)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$f;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    .line 46
    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->a(ILcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_7

    .line 47
    :pswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/view/View;)V

    new-instance v4, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$c;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$c;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->r:I

    goto :cond_9

    .line 51
    :cond_f
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f110096

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v0, 0x7f1100f7

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;-><init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    .line 52
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090188
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

    const p1, 0x7f0c0042

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->x()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->w()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method
