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
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    const v0, 0x7f0c004a

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n:Z

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o:Z

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o:Z

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/dialog/d;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public e()Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 7

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/x;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/x;-><init>(I)V

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/d$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/d;)V

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->r(Landroid/content/Context;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->z(Lcom/ifengyu/intercom/ui/widget/dialog/k;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->B(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->A(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n:Z

    .line 4
    invoke-virtual {v2, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->x(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->C(Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus$i;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const/4 v1, -0x2

    .line 5
    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->y(I)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    .line 6
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->g()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0900be

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 9
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f0900c1

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0900c0

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 19
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f0900c2

    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 22
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_2
    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    const v3, 0x7f0c004a

    if-ne v1, v3, :cond_6

    .line 24
    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/k;->a()Landroid/view/View;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f09016f

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f09016c

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f090168

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-object p0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->l()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    :cond_0
    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->m()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o:Z

    return-object p0
.end method

.method public i(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n:Z

    return-object p0
.end method

.method public j(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->m:I

    return-object p0
.end method

.method public k(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    return-object p0
.end method

.method public l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    return-object p0
.end method

.method public n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    const v0, 0x7f0c0062

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    return-object p0
.end method

.method public p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    const v0, 0x7f0c0062

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->g:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public q(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    return-object p0
.end method

.method public r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    const v0, 0x7f0c0062

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public s(I)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->t(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    return-object p0
.end method

.method public t(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/d;->k:Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/DialogPlus;->v()V

    :cond_0
    return-void
.end method
