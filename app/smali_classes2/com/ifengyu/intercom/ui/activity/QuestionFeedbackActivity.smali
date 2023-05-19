.class public Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "QuestionFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->l:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->m:Landroid/view/View;

    return-object p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    return-object p0
.end method

.method private I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "email"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "feedObject"

    .line 4
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    const-string p2, "Android"

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json; charset=utf-8"

    .line 7
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object p2

    .line 9
    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/n/a;->O(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/o0;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/o0;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    new-instance p3, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    .line 11
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->s()V

    const v0, 0x7f090491

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f1101b9

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09048d

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f1101f9

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c4

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f090408

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09040c

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090399

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f0900c4

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f090136

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->m:Landroid/view/View;

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->m:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private synthetic K()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic M(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->a:Ljava/lang/String;

    const-string v0, "feedBack success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f11018c

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    const p1, 0x7f08018f

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 4
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/r0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/r0;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic O(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060029

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic R(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic L()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->K()V

    return-void
.end method

.method public synthetic N(Lcom/ifengyu/library/http/entity/NewHttpResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->M(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method

.method public synthetic P(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->O(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;Lcom/ifengyu/intercom/dialog/list/a;)V

    return-void
.end method

.method public synthetic S(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->R(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    const-class p1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->E(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f110314

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 7
    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->w([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f11038a

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x200

    if-le v0, v3, :cond_2

    const p1, 0x7f11038c

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v0}, Lcom/ifengyu/intercom/p/b0;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const p1, 0x7f11038b

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    return-void

    .line 14
    :cond_3
    invoke-static {p0}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    const p1, 0x7f1102dd

    .line 15
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    :cond_4
    const v3, 0x7f11012a

    .line 16
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p1, "dolphin"

    goto :goto_0

    :cond_5
    const v3, 0x7f110166

    .line 17
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p1, "seal"

    goto :goto_0

    :cond_6
    const v3, 0x7f110172

    .line 18
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p1, "shark"

    goto :goto_0

    :cond_7
    const v3, 0x7f110146

    .line 19
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p1, "lite"

    goto :goto_0

    :cond_8
    const v3, 0x7f11017c

    .line 20
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string p1, "mipoc"

    goto :goto_0

    :cond_9
    const v3, 0x7f11017d

    .line 21
    invoke-static {v3}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string p1, "mi3"

    goto :goto_0

    :cond_a
    const v3, 0x7f1102f9

    .line 22
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "other"

    goto :goto_0

    :cond_b
    const-string p1, "android"

    :goto_0
    const v3, 0x7f11018d

    const v4, 0x7f08018e

    .line 23
    invoke-virtual {p0, v1, v1, v3, v4}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->C(ZZII)V

    .line 24
    invoke-direct {p0, v0, v2, p1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    const p1, 0x7f03000a

    .line 25
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance v2, Lcom/ifengyu/intercom/dialog/list/d;

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    .line 27
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/dialog/list/d;->I(Z)Lcom/ifengyu/intercom/dialog/list/d;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/p0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/p0;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    .line 28
    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/dialog/list/d;->K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;

    .line 29
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_c

    aget-object v3, p1, v1

    .line 30
    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/dialog/list/d;->F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    const p1, 0x7f120100

    .line 31
    invoke-virtual {v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 32
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->l:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090136 -> :sswitch_3
        0x7f090408 -> :sswitch_2
        0x7f09040c -> :sswitch_1
        0x7f09048d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->J()V

    return-void
.end method

.method protected s()V
    .locals 2

    const v0, 0x7f09048e

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/q0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/q0;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
