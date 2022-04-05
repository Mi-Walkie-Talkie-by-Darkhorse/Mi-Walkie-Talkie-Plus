.class public Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private q:Ljava/lang/String;

.field private r:Landroid/widget/EditText;

.field private s:Ljava/lang/String;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/TextView;

.field private v:I

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->v:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;

    invoke-direct {v5, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    const/4 v4, 0x0

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/g/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->t:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->v:I

    return p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->w()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    return-object p0
.end method

.method private w()V
    .locals 4

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private x()V
    .locals 8

    const v0, 0x7f090418

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09038e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    const-string v2, "setting_my_name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->t:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    new-instance v3, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7765f7a8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4

    const v5, -0x76cd05d6

    if-eq v4, v5, :cond_3

    const v5, -0x5eacc9b1

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "setting_my_phone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "setting_my_email"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    :cond_5
    :goto_1
    const-string v0, "null"

    const v2, 0x7f09041d

    if-eqz v3, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1102e7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    const v2, 0x7f1102f1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1102e8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    const v2, 0x7f1102f6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->Q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->w:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Lcom/ifengyu/intercom/ui/widget/view/a;

    invoke-direct {v5, v3}, Lcom/ifengyu/intercom/ui/widget/view/a;-><init>(Landroid/widget/EditText;)V

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1102ea

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    const v2, 0x7f1102f5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->P()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->u:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GB2312"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->v:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const p1, 0x7f110248

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    const-string v1, "setting_my_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f08013e

    const v2, 0x7f1102de

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1102eb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f11032f

    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v4, v4}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    const-string v5, "setting_my_phone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v5, "null"

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x7f1102ec

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_5
    iput-object v5, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v0, v4}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    const-string v6, "setting_my_email"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const p1, 0x7f1102dc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_9
    iput-object v5, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    :cond_a
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->s:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v4, v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->r:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090108 -> :sswitch_2
        0x7f090418 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004f

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "setting_what"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->x()V

    return-void
.end method
