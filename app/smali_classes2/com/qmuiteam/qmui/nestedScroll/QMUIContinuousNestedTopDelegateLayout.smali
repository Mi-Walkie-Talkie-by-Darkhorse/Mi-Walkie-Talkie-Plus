.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroidx/core/view/j;
.implements Landroidx/core/view/n;
.implements Lcom/qmuiteam/qmui/nestedScroll/c;


# instance fields
.field private a:Lcom/qmuiteam/qmui/nestedScroll/b$a;

.field private b:Landroid/view/View;

.field private c:Lcom/qmuiteam/qmui/nestedScroll/c;

.field private d:Landroid/view/View;

.field private e:Lcom/qmuiteam/qmui/util/m;

.field private f:Lcom/qmuiteam/qmui/util/m;

.field private g:Lcom/qmuiteam/qmui/util/m;

.field private h:I

.field private i:I

.field private final j:Landroidx/core/view/q;

.field private final k:Landroidx/core/view/m;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    new-instance p2, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$a;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$a;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->l:Ljava/lang/Runnable;

    new-instance p2, Landroidx/core/view/q;

    invoke-direct {p2, p0}, Landroidx/core/view/q;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->j:Landroidx/core/view/q;

    new-instance p2, Landroidx/core/view/m;

    invoke-direct {p2, p0}, Landroidx/core/view/m;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->d(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method private d(I)V
    .locals 2

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->e:Lcom/qmuiteam/qmui/util/m;

    if-eqz v0, :cond_0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->f:Lcom/qmuiteam/qmui/util/m;

    if-eqz v0, :cond_1

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->g:Lcom/qmuiteam/qmui/util/m;

    if-eqz v0, :cond_2

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/util/m;->b(I)Z

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/b$a;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getCurrentScroll()I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getScrollOffsetRange()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/b$a;->a(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 5

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    move-result p1

    :cond_0
    return p1

    :cond_1
    const/4 v1, 0x0

    if-lez p1, :cond_d

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    const v3, 0x7fffffff

    if-nez v2, :cond_5

    if-ne p1, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v3, v2, p1

    if-gt v3, v0, :cond_3

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return v1

    :cond_3
    if-ge v2, v0, :cond_4

    sub-int v1, v0, v2

    sub-int/2addr p1, v1

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_4
    :goto_0
    return p1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne p1, v3, :cond_7

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v4, v2, p1

    if-gt v4, v0, :cond_8

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return v1

    :cond_8
    if-ge v2, v0, :cond_9

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    move-result p1

    if-gtz p1, :cond_a

    return p1

    :cond_a
    if-ne p1, v3, :cond_b

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto/16 :goto_6

    :cond_b
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v2, v0, p1

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    if-gt v2, v3, :cond_c

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return v1

    :cond_c
    sub-int v0, v3, v0

    sub-int/2addr p1, v0

    invoke-direct {p0, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return p1

    :cond_d
    if-gez p1, :cond_19

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    const/high16 v3, -0x80000000

    if-nez v2, :cond_11

    if-ne p1, v3, :cond_e

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_3

    :cond_e
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v2, v0, p1

    if-ltz v2, :cond_f

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return v1

    :cond_f
    if-lez v0, :cond_10

    add-int/2addr p1, v0

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_10
    :goto_3
    return p1

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_4

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_4
    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_13

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_5

    :cond_13
    iget v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v4, v2, p1

    if-le v4, v0, :cond_14

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return v1

    :cond_14
    if-le v2, v0, :cond_15

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    move-result p1

    if-ltz p1, :cond_16

    return p1

    :cond_16
    if-ne p1, v3, :cond_17

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_6

    :cond_17
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v2, v0, p1

    if-lez v2, :cond_18

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    return v1

    :cond_18
    if-lez v0, :cond_19

    add-int/2addr p1, v0

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_19
    :goto_6
    return p1
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getContainerHeaderOffsetRange()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/c;->getCurrentScroll()I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v2}, Lcom/qmuiteam/qmui/nestedScroll/c;->getScrollOffsetRange()I

    move-result v2

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    if-ge v3, v0, :cond_3

    sub-int v3, v0, v3

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    const/high16 v4, -0x80000000

    invoke-interface {v3, v4}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    neg-int v3, v3

    invoke-interface {v4, v3}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_3
    :goto_0
    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    if-le v3, v0, :cond_5

    if-ge v1, v2, :cond_5

    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    if-eqz v4, :cond_5

    sub-int/2addr v3, v0

    sub-int/2addr v2, v1

    if-lt v3, v2, :cond_4

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    const v4, 0x7fffffff

    invoke-interface {v1, v4}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    invoke-interface {v1, v3}, Lcom/qmuiteam/qmui/nestedScroll/c;->a(I)I

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V
    .locals 2

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a:Lcom/qmuiteam/qmui/nestedScroll/b$a;

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;

    invoke-direct {v1, p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$b;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;Lcom/qmuiteam/qmui/nestedScroll/b$a;)V

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/b;->a(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V

    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/m;->a(II)Z

    move-result p1

    return p1
.end method

.method public a(IIII[II)Z
    .locals 7

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/m;->a(IIII[II)Z

    move-result p1

    return p1
.end method

.method public a(II[I[II)Z
    .locals 6

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/m;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0, p1}, Landroidx/core/view/m;->a(I)Z

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0, p1}, Landroidx/core/view/m;->c(I)V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/m;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/m;->a(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a(IIII[II)Z

    move-result p1

    return p1
.end method

.method public getContainerHeaderOffsetRange()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerOffsetCurrent()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    return v0
.end method

.method public getContainerOffsetRange()I
    .locals 1

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    return v0
.end method

.method public getCurrentScroll()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/c;->getCurrentScroll()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDelegateView()Lcom/qmuiteam/qmui/nestedScroll/c;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->j:Landroidx/core/view/q;

    invoke-virtual {v0}, Landroidx/core/view/q;->a()I

    move-result v0

    return v0
.end method

.method public getScrollOffsetRange()I
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/c;->getScrollOffsetRange()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b(I)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0}, Landroidx/core/view/m;->b()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    add-int/2addr p2, p1

    invoke-virtual {v0, p3, p1, p4, p2}, Landroid/view/View;->layout(IIII)V

    move p1, p2

    :cond_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz p2, :cond_1

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/view/View;->layout(IIII)V

    move p1, v0

    :cond_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    add-int/2addr p2, p1

    invoke-virtual {v0, p3, p1, p4, p2}, Landroid/view/View;->layout(IIII)V

    move p1, p2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, p5

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->e:Lcom/qmuiteam/qmui/util/m;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->e:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->f:Lcom/qmuiteam/qmui/util/m;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->f:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->g:Lcom/qmuiteam/qmui/util/m;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->e()V

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->g:Lcom/qmuiteam/qmui/util/m;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/util/m;->d()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    :cond_5
    iget p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    if-le p1, p2, :cond_6

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v2, :cond_1

    check-cast v2, Landroid/view/View;

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v1, p1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    add-int/2addr v1, p1

    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a(II[I[II)Z

    const/4 p1, 0x1

    aget p2, p4, p1

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    if-lez p3, :cond_2

    iget p5, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_0
    add-int/2addr v0, p2

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p5, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v0, p5, p3

    if-gt v0, p2, :cond_1

    add-int/2addr p5, p3

    invoke-direct {p0, p5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    goto :goto_1

    :cond_1
    if-ge p5, p2, :cond_5

    aget p3, p4, p1

    sub-int p5, p2, p5

    add-int/2addr p3, p5

    aput p3, p4, p1

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_1

    :cond_2
    if-gez p3, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p5

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    :cond_3
    add-int/2addr p5, p2

    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int v0, p5, p3

    if-lt v0, p2, :cond_4

    add-int/2addr p5, p3

    invoke-direct {p0, p5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    goto :goto_1

    :cond_4
    if-le p5, p2, :cond_5

    aget p3, p4, p1

    sub-int p5, p2, p5

    add-int/2addr p3, p5

    aput p3, p4, p1

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 7

    const/4 p1, 0x0

    if-lez p5, :cond_1

    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int p4, p2, p5

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->i:I

    if-gt p4, v0, :cond_0

    add-int/2addr p2, p5

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_0

    :cond_0
    if-gt p2, v0, :cond_3

    sub-int p1, v0, p2

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    goto :goto_1

    :cond_1
    if-gez p5, :cond_3

    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->h:I

    add-int p4, p2, p5

    if-ltz p4, :cond_2

    add-int/2addr p2, p5

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    :goto_0
    move p1, p5

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_3

    neg-int p2, p2

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d(I)V

    move p1, p2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    add-int v2, p3, p1

    const/4 v3, 0x0

    sub-int v4, p5, p1

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a(IIII[II)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->j:Landroidx/core/view/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/q;->a(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a(II)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->j:Landroidx/core/view/q;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/q;->a(Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c(I)V

    return-void
.end method

.method public setDelegateView(Lcom/qmuiteam/qmui/nestedScroll/c;)V
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/nestedScroll/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/b;->a(Lcom/qmuiteam/qmui/nestedScroll/b$a;)V

    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c:Lcom/qmuiteam/qmui/nestedScroll/c;

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->f:Lcom/qmuiteam/qmui/util/m;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegateView must be a instance of View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->d:Landroid/view/View;

    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->g:Lcom/qmuiteam/qmui/util/m;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->b:Landroid/view/View;

    new-instance v0, Lcom/qmuiteam/qmui/util/m;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/util/m;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->e:Lcom/qmuiteam/qmui/util/m;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->k:Landroidx/core/view/m;

    invoke-virtual {v0, p1}, Landroidx/core/view/m;->a(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->a(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->c(I)V

    return-void
.end method
