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
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Lcom/ifengyu/library/widget/view/a;->e:F

    .line 6
    iput v0, p0, Lcom/ifengyu/library/widget/view/a;->f:F

    .line 7
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/ifengyu/library/widget/view/a;->f:F

    goto :goto_0

    .line 3
    :cond_1
    iget p2, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    .line 6
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/library/widget/view/a;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/a;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/a;->b:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ifengyu/library/widget/view/a;->e:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/ifengyu/library/widget/view/a;->d:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/ifengyu/library/widget/view/a;->c:Z

    if-eqz p2, :cond_2

    .line 4
    iget p2, p0, Lcom/ifengyu/library/widget/view/a;->f:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/a;->b:Z

    return-void
.end method
