.class Lcom/qmuiteam/qmui/layout/a$a;
.super Landroid/view/ViewOutlineProvider;
.source "QMUILayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/layout/a;->S(IIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/layout/a;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/layout/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v2}, Lcom/qmuiteam/qmui/layout/a;->a(Lcom/qmuiteam/qmui/layout/a;)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v3}, Lcom/qmuiteam/qmui/layout/a;->b(Lcom/qmuiteam/qmui/layout/a;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {p1}, Lcom/qmuiteam/qmui/layout/a;->c(Lcom/qmuiteam/qmui/layout/a;)I

    move-result p1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    rsub-int/lit8 p1, v2, 0x0

    move v6, p1

    move v8, v0

    move v9, v1

    :goto_0
    const/4 v7, 0x0

    goto :goto_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {p1}, Lcom/qmuiteam/qmui/layout/a;->c(Lcom/qmuiteam/qmui/layout/a;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    rsub-int/lit8 p1, v2, 0x0

    move v7, p1

    move v8, v0

    move v9, v1

    const/4 v6, 0x0

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {p1}, Lcom/qmuiteam/qmui/layout/a;->c(Lcom/qmuiteam/qmui/layout/a;)I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    add-int/2addr v0, v2

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {p1}, Lcom/qmuiteam/qmui/layout/a;->c(Lcom/qmuiteam/qmui/layout/a;)I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    add-int/2addr v1, v2

    :cond_4
    :goto_1
    move v8, v0

    move v9, v1

    const/4 v6, 0x0

    goto :goto_0

    :goto_2
    int-to-float v10, v2

    move-object v5, p2

    .line 8
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 9
    :cond_5
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v3}, Lcom/qmuiteam/qmui/layout/a;->d(Lcom/qmuiteam/qmui/layout/a;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v5}, Lcom/qmuiteam/qmui/layout/a;->f(Lcom/qmuiteam/qmui/layout/a;)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10
    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v4}, Lcom/qmuiteam/qmui/layout/a;->h(Lcom/qmuiteam/qmui/layout/a;)I

    move-result v4

    iget-object v5, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v5}, Lcom/qmuiteam/qmui/layout/a;->k(Lcom/qmuiteam/qmui/layout/a;)I

    move-result v5

    sub-int/2addr v0, v5

    .line 11
    iget-object v5, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v5}, Lcom/qmuiteam/qmui/layout/a;->l(Lcom/qmuiteam/qmui/layout/a;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v3, 0x1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    move v8, v0

    move v9, v1

    move v7, v3

    move v6, v4

    .line 16
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {p1}, Lcom/qmuiteam/qmui/layout/a;->m(Lcom/qmuiteam/qmui/layout/a;)F

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a$a;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-static {v0}, Lcom/qmuiteam/qmui/layout/a;->n(Lcom/qmuiteam/qmui/layout/a;)I

    move-result v0

    if-nez v0, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    :cond_7
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    if-gtz v2, :cond_8

    .line 19
    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_3

    :cond_8
    int-to-float v10, v2

    move-object v5, p2

    .line 20
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_9
    :goto_3
    return-void
.end method
