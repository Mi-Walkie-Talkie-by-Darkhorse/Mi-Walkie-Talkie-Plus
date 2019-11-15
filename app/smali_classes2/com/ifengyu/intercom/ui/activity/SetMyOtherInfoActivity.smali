.class public Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SetMyOtherInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:I

    return v0
.end method

.method private c()V
    .locals 6

    const/4 v2, 0x1

    const v5, 0x7f100244

    const/4 v1, 0x0

    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    const-string v3, "setting_my_name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_0
    const-string v4, "setting_my_name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "setting_my_phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "setting_my_email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/ifengyu/intercom/ui/widget/view/b;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-direct {v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/widget/EditText;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901d6

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f0901e1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GB2312"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f0901e2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901d3

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f0901dd

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7765f7a8 -> :sswitch_2
        -0x76cd05d6 -> :sswitch_1
        -0x5eacc9b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0901ca

    const v5, 0x7f020128

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    const-string v1, "setting_my_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0901d7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09020c

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v0, v5}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v3, v3}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    const-string v1, "setting_my_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "null"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v0, v5}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ZZLjava/lang/String;I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    const-string v1, "setting_my_email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "null"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    :cond_a
    invoke-virtual {p0, v6}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v4, v0, v5}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ZZLjava/lang/String;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_2
        0x7f1000fb -> :sswitch_1
        0x7f10033c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setting_what"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->c()V

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

    const-string v0, "SetMyOtherInfoActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
