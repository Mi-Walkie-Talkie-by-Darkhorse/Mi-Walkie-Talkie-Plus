.class public Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "SealBtEarGuide1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private z()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/g/a;->c(Lcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900e5

    if-eq p1, v0, :cond_1

    const v0, 0x7f090419

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_1
    const-class p1, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide2Activity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0045

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->x()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->w()V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->D()I

    move-result v0

    const v1, 0xd0012

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->T()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f110311

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110093

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110371

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    .line 5
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->g(Z)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    const v0, 0x7f09041d

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090416

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090419

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e5

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f110248

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1100c9

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const v2, 0x7f110089

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013e

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->z()V

    return-void
.end method
