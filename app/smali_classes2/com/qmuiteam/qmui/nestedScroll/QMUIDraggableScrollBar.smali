.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;
.super Landroid/view/View;
.source "QMUIDraggableScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:J

.field private g:F

.field private h:F

.field private i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;

.field private l:I

.field private m:F

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v0, 0x10100a7

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 3
    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->a:[I

    new-array p2, v1, [I

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->b:[I

    const/16 p2, 0x320

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->d:I

    const/16 p2, 0x64

    .line 6
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->e:I

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->f:J

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    .line 9
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->h:F

    .line 10
    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$a;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->i:Ljava/lang/Runnable;

    .line 11
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->l:I

    .line 13
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->m:F

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x14

    invoke-static {p2, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->n:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->o:I

    .line 16
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->p:Z

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->getScrollBarTopMargin()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->m:F

    sub-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->getScrollBarBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->getScrollBarTopMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p2, p1, v0}, Lcom/qmuiteam/qmui/util/g;->b(FFF)F

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->k:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;->h(F)V

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercentInternal(F)V

    return-void
.end method

.method private setPercentInternal(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->h:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$drawable;->qmui_icon_scroll_bar:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->f:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->e:I

    int-to-long v5, v4

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    int-to-long v2, v4

    sub-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->f:J

    .line 6
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->i0(Landroid/view/View;)V

    return-void
.end method

.method protected getScrollBarBottomMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollBarTopMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v2, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v3, :cond_a

    if-gtz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v5, -0x1

    .line 5
    iget-boolean v6, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->p:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_5

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->f:J

    sub-long/2addr v9, v11

    .line 7
    iget v6, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->e:I

    int-to-long v11, v6

    const/4 v13, 0x0

    cmp-long v14, v9, v11

    if-gez v14, :cond_2

    long-to-float v5, v9

    mul-float v5, v5, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 8
    iput v5, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    int-to-long v11, v6

    sub-long v11, v9, v11

    .line 9
    iget v14, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->d:I

    move-wide v15, v9

    int-to-long v8, v14

    cmp-long v10, v11, v8

    if-gez v10, :cond_3

    .line 10
    iput v7, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    int-to-long v7, v14

    int-to-long v5, v6

    sub-long v9, v15, v5

    sub-long/2addr v7, v9

    long-to-int v5, v7

    goto :goto_1

    :cond_3
    int-to-long v8, v6

    sub-long v9, v15, v8

    int-to-long v11, v14

    sub-long/2addr v9, v11

    int-to-long v11, v6

    cmp-long v8, v9, v11

    if-gez v8, :cond_4

    long-to-float v5, v9

    mul-float v5, v5, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v7, v5

    .line 11
    iput v7, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    goto :goto_0

    .line 12
    :cond_4
    iput v13, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    .line 13
    :goto_1
    iget v6, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    cmpg-float v6, v6, v13

    if-gtz v6, :cond_6

    return-void

    .line 14
    :cond_5
    iput v7, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    .line 15
    :cond_6
    iget v6, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->getScrollBarTopMargin()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->getScrollBarBottomMargin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->getScrollBarTopMargin()I

    move-result v8

    sub-int/2addr v6, v4

    int-to-float v6, v6

    iget v9, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->h:F

    mul-float v6, v6, v9

    float-to-int v6, v6

    add-int/2addr v8, v6

    sub-int/2addr v7, v3

    .line 19
    iget-boolean v6, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    if-nez v6, :cond_8

    iget v6, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->l:I

    if-lez v6, :cond_8

    sub-int v9, v8, v6

    .line 20
    iget v10, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->o:I

    if-le v9, v10, :cond_7

    iget v11, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->n:I

    if-ge v9, v11, :cond_7

    add-int v8, v6, v10

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    neg-int v11, v10

    if-ge v9, v11, :cond_8

    .line 21
    iget v11, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->n:I

    neg-int v11, v11

    if-le v9, v11, :cond_8

    sub-int v8, v6, v10

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v7

    int-to-float v4, v8

    .line 24
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    iput v8, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->l:I

    if-nez v5, :cond_9

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_9
    if-lez v5, :cond_a

    .line 29
    iget-object v1, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->i:Ljava/lang/Runnable;

    int-to-long v2, v5

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_a
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 6
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->g:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->l:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->l:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->m:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 11
    iput-boolean v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->k:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;->a()V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->a:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->b(Landroid/graphics/drawable/Drawable;F)V

    goto :goto_0

    :cond_2
    if-eq v1, v4, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 18
    :cond_3
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    if-eqz v1, :cond_4

    .line 19
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->b(Landroid/graphics/drawable/Drawable;F)V

    .line 21
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->k:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;

    if-eqz p1, :cond_4

    .line 22
    invoke-interface {p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;->f()V

    .line 23
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->b:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 24
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    return p1
.end method

.method public setCallback(Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->k:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$b;

    return-void
.end method

.method public setDragDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnableFadeInAndOut(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->p:Z

    return-void
.end method

.method public setKeepShownTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->d:I

    return-void
.end method

.method public setPercent(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercentInternal(F)V

    :cond_0
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->e:I

    return-void
.end method
