.class public Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "QuestionFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/view/View;

.field private q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f0f0012

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c_()V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0900ed

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10011f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const v0, 0x7f10011e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100122

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100120

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f100121

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0900b8

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0900c2

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const v2, 0x7f090182

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-class v0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x200

    if-le v0, v4, :cond_2

    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0900d5

    const v4, 0x7f020128

    invoke-virtual {p0, v5, v5, v0, v4}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->a(ZZII)V

    const-string v0, "android"

    const v4, 0x7f0900af

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "dolphin"

    :cond_5
    :goto_1
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    invoke-static {v3, v2, v0, v1}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    goto/16 :goto_0

    :cond_6
    const v4, 0x7f0900b8

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "seal"

    goto :goto_1

    :cond_7
    const v4, 0x7f0900c2

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v0, "shark"

    goto :goto_1

    :cond_8
    const v4, 0x7f090173

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "other"

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/j;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->setOnclickListener(Lcom/ifengyu/intercom/ui/widget/dialog/j$a;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->show()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000fb -> :sswitch_3
        0x7f10011e -> :sswitch_2
        0x7f100122 -> :sswitch_1
        0x7f10033c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c()V

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
