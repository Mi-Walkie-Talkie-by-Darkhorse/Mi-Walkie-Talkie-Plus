.class public Lcom/ifengyu/intercom/ui/widget/dialog/d;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    const v0, 0x7f04005e

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    const v0, 0x7f040072

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n:Z

    return-object p0
.end method

.method public b()Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 8

    const v7, 0x7f1001e0

    const/4 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/ae;

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ae;-><init>(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n:Z

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$c;)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/g;->a()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    if-eq v0, v6, :cond_0

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->b()Landroid/view/View;

    move-result-object v2

    const v0, 0x7f1001dd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    const v2, 0x7f04005e

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1001bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f1001bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->j:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f1001be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-object p0

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f1001de

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1001df

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    const v0, 0x7f040072

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o:Z

    return-object p0
.end method

.method public c(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    return-object v0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    const v0, 0x7f040072

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    :cond_0
    return-void
.end method
