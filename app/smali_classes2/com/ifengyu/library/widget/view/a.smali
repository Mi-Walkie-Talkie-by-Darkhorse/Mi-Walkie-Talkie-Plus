.class public Lcom/ifengyu/library/widget/view/a;
.super Ljava/lang/Object;
.source "QMUIAlphaViewHelper.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->b:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    iput v1, p0, Lcom/ifengyu/library/widget/view/a;->e:F

    iput v1, p0, Lcom/ifengyu/library/widget/view/a;->f:F

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->b:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/library/widget/view/a;->e:F

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/library/widget/view/a;->f:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/a;->b:Z

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/library/widget/view/a;->f:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/view/a;->b(Landroid/view/View;Z)V

    return-void
.end method
