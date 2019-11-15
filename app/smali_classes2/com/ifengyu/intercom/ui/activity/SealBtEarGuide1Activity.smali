.class public Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBtEarGuide1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->d(Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->s()I

    move-result v0

    const v1, 0xd0012

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->D()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0901fd

    invoke-static {v1}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f09006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090244

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->i(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->a(ZZLjava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->f()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->finish()V

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->a(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10012f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->e()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->c()V

    return-void
.end method
