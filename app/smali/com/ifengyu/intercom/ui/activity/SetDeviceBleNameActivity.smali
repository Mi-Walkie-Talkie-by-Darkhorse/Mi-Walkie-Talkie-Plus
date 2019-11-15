.class public Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SetDeviceBleNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/View;

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->s:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->s:I

    return v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c_()V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f090071

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/view/b;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    invoke-direct {v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/widget/EditText;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GB2312"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->af()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/a/d;->c(Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "setting_walkie_name"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected c_()V
    .locals 2

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0901cc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f09020c

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->t:Z

    invoke-static {}, Lcom/ifengyu/intercom/node/f;->a()Lcom/ifengyu/intercom/node/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/f;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000fb -> :sswitch_1
        0x7f10033c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveDolphinParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->t:Z

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SetDeviceBleNameActivity;->d()V

    goto :goto_0

    :cond_1
    const v0, 0x7f09021d

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
