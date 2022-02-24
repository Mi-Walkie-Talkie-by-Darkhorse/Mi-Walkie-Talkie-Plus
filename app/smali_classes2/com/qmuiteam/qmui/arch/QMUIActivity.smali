.class public Lcom/qmuiteam/qmui/arch/QMUIActivity;
.super Lcom/qmuiteam/qmui/arch/a;
.source "QMUIActivity.java"


# instance fields
.field private g:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

.field private h:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

.field private i:Z

.field private j:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

.field private k:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->i:Z

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;-><init>(Lcom/qmuiteam/qmui/arch/QMUIActivity;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->j:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/arch/QMUIActivity$b;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity$b;-><init>(Lcom/qmuiteam/qmui/arch/QMUIActivity;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->k:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->p()Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->k:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->j:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->g:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    return-object p1
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->h:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    return-object p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/QMUIActivity;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->h:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    return-object p1
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/arch/QMUIActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->i:Z

    return p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;II)I
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->k()I

    move-result p1

    return p1
.end method

.method protected a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->n()I

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;->a(I)I

    move-result p2

    invoke-virtual {p0, v1, v0, p2}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->b(Landroid/content/Context;II)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v2, 0x14

    invoke-static {p2, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    int-to-float p1, p2

    cmpg-float p1, p3, p1

    if-gez p1, :cond_4

    cmpl-float p1, p5, p7

    if-ltz p1, :cond_4

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    neg-float p1, p5

    cmpl-float p1, p1, p7

    if-ltz p1, :cond_4

    return v0

    :cond_2
    const/4 p3, 0x3

    if-ne v0, p3, :cond_3

    int-to-float p1, p2

    cmpg-float p1, p4, p1

    if-gez p1, :cond_4

    cmpl-float p1, p6, p7

    if-ltz p1, :cond_4

    return v0

    :cond_3
    const/4 p3, 0x4

    if-ne v0, p3, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_4

    neg-float p1, p6

    cmpl-float p1, p1, p7

    if-ltz p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method protected b(Landroid/content/Context;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->l()Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/arch/f;->b()Lcom/qmuiteam/qmui/arch/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->r()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected l()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected m()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected n()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected o()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->m()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->s()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->g:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;->remove()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->h:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->h:Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    :cond_1
    return-void
.end method

.method protected p()Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->E:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    return-object v0
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method public r()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected s()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->p()Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->k:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;

    invoke-static {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/content/Context;ILcom/qmuiteam/qmui/arch/SwipeBackLayout$f;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->j:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity;->g:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;

    .line 7
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
