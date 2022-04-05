.class Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 8

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    iput p2, p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->v:I

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->c(Landroid/view/View;)Lcom/qmuiteam/qmui/util/m;

    move-result-object v5

    iget v6, v4, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v3, 0x2

    if-eq v6, v3, :cond_0

    goto :goto_1

    :cond_0
    neg-int v3, p2

    int-to-float v3, v3

    iget v4, v4, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$LayoutParams;->b:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    goto :goto_1

    :cond_1
    neg-int v4, p2

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v6, v3, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->a(Landroid/view/View;Z)I

    move-result v3

    invoke-static {v4, v1, v3}, Lcom/qmuiteam/qmui/util/g;->a(III)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    if-lez p1, :cond_3

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->t(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->j:Lcom/qmuiteam/qmui/util/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/a;->a(F)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->b(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$c;->a:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-interface {v1, v2, p2, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$d;->a(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;IF)V

    goto :goto_2

    :cond_4
    return-void
.end method
