.class public Lcom/ifengyu/intercom/ui/widget/dialog/f;
.super Ljava/lang/Object;


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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:I

    const v0, 0x7f0c0061

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->n:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->o:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->o:Z

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/f;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 7

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/c0;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->m:I

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/c0;-><init>(I)V

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/f$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/f;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Lcom/ifengyu/intercom/ui/widget/dialog/m;)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->c(I)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:I

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b(I)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    iget-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->n:Z

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    const/4 v1, -0x2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a(I)Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->a()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:I

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->b()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0900ad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->g:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f0900b0

    if-nez v5, :cond_0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->e:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0900af

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f0900b1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->m:I

    const v3, 0x7f0c0061

    if-ne v1, v3, :cond_6

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/m;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-object p0
.end method

.method public a(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->m:I

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    const v0, 0x7f0c0078

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->e:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->o:Z

    return-object p0
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    const v0, 0x7f0c0078

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->g:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->n:Z

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    :cond_0
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;
    .locals 1

    const v0, 0x7f0c0078

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->l:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->f:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/f;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->d()V

    :cond_0
    return-void
.end method
