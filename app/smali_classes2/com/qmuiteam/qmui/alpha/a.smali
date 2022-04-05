.class public Lcom/qmuiteam/qmui/alpha/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/alpha/a;->b:Z

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/alpha/a;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/qmuiteam/qmui/alpha/a;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/qmuiteam/qmui/alpha/a;->e:F

    iput v0, p0, Lcom/qmuiteam/qmui/alpha/a;->f:F

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/alpha/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_alpha_pressed:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/i;->d(Landroid/content/Context;I)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/alpha/a;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_alpha_disabled:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/i;->d(Landroid/content/Context;I)F

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/alpha/a;->f:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/alpha/a;->c:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/qmuiteam/qmui/alpha/a;->d:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/qmuiteam/qmui/alpha/a;->f:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/qmuiteam/qmui/alpha/a;->d:F

    :goto_0
    if-eq p1, v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq p1, p2, :cond_3

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/alpha/a;->c:Z

    iget-object p1, p0, Lcom/qmuiteam/qmui/alpha/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/alpha/a;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/alpha/a;->b:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/qmuiteam/qmui/alpha/a;->e:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/alpha/a;->d:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/alpha/a;->c:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/qmuiteam/qmui/alpha/a;->f:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/alpha/a;->b:Z

    return-void
.end method
