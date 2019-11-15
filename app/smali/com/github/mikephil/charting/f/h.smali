.class public Lcom/github/mikephil/charting/f/h;
.super Lcom/github/mikephil/charting/f/b;
.source "HorizontalBarChartRenderer.java"


# instance fields
.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/a;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/f/b;-><init>(Lcom/github/mikephil/charting/e/a/a;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/a;->d()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/b/c;

    iput-object v0, p0, Lcom/github/mikephil/charting/f/h;->c:[Lcom/github/mikephil/charting/b/b;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->c:[Lcom/github/mikephil/charting/b/b;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/a;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/a;

    iget-object v4, p0, Lcom/github/mikephil/charting/f/h;->c:[Lcom/github/mikephil/charting/b/b;

    new-instance v5, Lcom/github/mikephil/charting/b/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->s()I

    move-result v2

    mul-int/lit8 v6, v2, 0x4

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->r()I

    move-result v2

    :goto_1
    mul-int/2addr v2, v6

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/a;->d()I

    move-result v6

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->d()Z

    move-result v0

    invoke-direct {v5, v2, v6, v0}, Lcom/github/mikephil/charting/b/c;-><init>(IIZ)V

    aput-object v5, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected a(FFFFLcom/github/mikephil/charting/g/g;)V
    .locals 3

    sub-float v0, p1, p4

    add-float v1, p1, p4

    iget-object v2, p0, Lcom/github/mikephil/charting/f/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, p2, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/h;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcom/github/mikephil/charting/g/g;->b(Landroid/graphics/RectF;F)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/a;I)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/e/a/a;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->e:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->z()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->e:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->y()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->y()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v6, v1

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v7

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->d:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->t()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->a()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v0, v3

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->s()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->s()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v2

    :goto_1
    if-ge v3, v9, :cond_2

    invoke-interface {p2, v3}, Lcom/github/mikephil/charting/e/b/a;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->h()F

    move-result v0

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    sub-float v11, v0, v8

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    add-float/2addr v0, v8

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/g/g;->a(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v6, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->c:[Lcom/github/mikephil/charting/b/b;

    aget-object v9, v0, p3

    invoke-virtual {v9, v5, v7}, Lcom/github/mikephil/charting/b/b;->a(FF)V

    invoke-virtual {v9, p3}, Lcom/github/mikephil/charting/b/b;->a(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/e/a/a;->d(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/b/b;->a(Z)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->a()F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/b/b;->a(F)V

    invoke-virtual {v9, p2}, Lcom/github/mikephil/charting/b/b;->a(Lcom/github/mikephil/charting/e/b/a;)V

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v8, v1

    :goto_3
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    move v7, v2

    :goto_4
    invoke-virtual {v9}, Lcom/github/mikephil/charting/b/b;->b()I

    move-result v0

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v1, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v2, v7, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v10

    iput v10, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v10

    iput v10, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/github/mikephil/charting/f/h;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_6
    move v8, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v1, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_5
    add-int/lit8 v2, v7, 0x4

    move v7, v2

    goto :goto_4

    :cond_9
    if-nez v8, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->h:Landroid/graphics/Paint;

    div-int/lit8 v1, v7, 0x4

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/e/b/a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    aget v1, v0, v7

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v2, v0, v2

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v7, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/h;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_8

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    aget v1, v0, v7

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v2, v0, v2

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, v9, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v7, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/h;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/d/d;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1}, Lcom/github/mikephil/charting/d/d;->a(FF)V

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/e/a/e;)Z
    .locals 3

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/a/e;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/a/e;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->r()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/f/h;->a(Lcom/github/mikephil/charting/e/a/e;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/a;->i()Ljava/util/List;

    move-result-object v15

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/a;->c()Z

    move-result v16

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/a;->d()I

    move-result v2

    if-ge v10, v2, :cond_19

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/github/mikephil/charting/e/b/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/f/h;->a(Lcom/github/mikephil/charting/e/b/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/e/a/a;->d(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/f/h;->b(Lcom/github/mikephil/charting/e/b/e;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    const-string v3, "10"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v2, v3

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->c:[Lcom/github/mikephil/charting/b/b;

    aget-object v20, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v21

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->d()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    int-to-float v2, v9

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    array-length v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/h;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v9, 0x3

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/g/j;->e(F)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v9, 0x4

    move v9, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v2

    if-eqz v2, :cond_2

    div-int/lit8 v2, v9, 0x4

    invoke-interface {v8, v2}, Lcom/github/mikephil/charting/e/b/a;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v2, v10, v3}, Lcom/github/mikephil/charting/c/f;->a(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/g/j;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v7, v2

    if-eqz v16, :cond_5

    move v3, v14

    :goto_3
    if-eqz v16, :cond_6

    add-float v2, v7, v14

    neg-float v2, v2

    :goto_4
    if-eqz v17, :cond_4

    neg-float v3, v3

    sub-float/2addr v3, v7

    neg-float v2, v2

    sub-float/2addr v2, v7

    :cond_4
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v11, v9, 0x2

    aget v7, v7, v11

    const/4 v11, 0x0

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_7

    :goto_5
    add-float v5, v7, v3

    add-float v6, v6, v18

    div-int/lit8 v2, v9, 0x2

    invoke-interface {v8, v2}, Lcom/github/mikephil/charting/e/b/a;->c(I)I

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/f/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    :cond_5
    add-float v2, v7, v14

    neg-float v3, v2

    goto :goto_3

    :cond_6
    move v2, v14

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->a:Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/e/a/a;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v22

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v11, v2

    move v12, v3

    :cond_9
    :goto_6
    int-to-float v2, v11

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->s()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/h;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-interface {v8, v11}, Lcom/github/mikephil/charting/e/b/a;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-interface {v8, v11}, Lcom/github/mikephil/charting/e/b/a;->c(I)I

    move-result v7

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->a()[F

    move-result-object v23

    if-nez v23, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v12, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/g/j;->e(F)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v4, v12, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v9, v10, v3}, Lcom/github/mikephil/charting/c/f;->a(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/g/j;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v5, v2

    if-eqz v16, :cond_c

    move v3, v14

    :goto_7
    if-eqz v16, :cond_d

    add-float v2, v5, v14

    neg-float v2, v2

    :goto_8
    if-eqz v17, :cond_a

    neg-float v3, v3

    sub-float/2addr v3, v5

    neg-float v2, v2

    sub-float/2addr v2, v5

    :cond_a
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v6, v12, 0x2

    aget v5, v5, v6

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_e

    :goto_9
    add-float/2addr v5, v3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v3, v12, 0x1

    aget v2, v2, v3

    add-float v6, v2, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/f/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    :cond_b
    if-nez v23, :cond_18

    add-int/lit8 v3, v12, 0x4

    :goto_a
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v12, v3

    goto/16 :goto_6

    :cond_c
    add-float v2, v5, v14

    neg-float v3, v2

    goto :goto_7

    :cond_d
    move v2, v14

    goto :goto_8

    :cond_e
    move v3, v2

    goto :goto_9

    :cond_f
    move-object/from16 v0, v23

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v24, v0

    const/4 v5, 0x0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->f()F

    move-result v2

    neg-float v4, v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, v24

    array-length v6, v0

    if-ge v3, v6, :cond_11

    aget v6, v23, v2

    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    if-ltz v13, :cond_10

    add-float/2addr v5, v6

    move v6, v5

    :goto_c
    mul-float v6, v6, v21

    aput v6, v24, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    sub-float v6, v4, v6

    move/from16 v26, v4

    move v4, v6

    move/from16 v6, v26

    goto :goto_c

    :cond_11
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/g/g;->a([F)V

    const/4 v2, 0x0

    move v13, v2

    :goto_d
    move-object/from16 v0, v24

    array-length v2, v0

    if-ge v13, v2, :cond_b

    div-int/lit8 v2, v13, 0x2

    aget v5, v23, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v9, v10, v2}, Lcom/github/mikephil/charting/c/f;->a(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/g/j;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/h;->k:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v6, v2

    if-eqz v16, :cond_14

    move v3, v14

    :goto_e
    if-eqz v16, :cond_15

    add-float v2, v6, v14

    neg-float v2, v2

    :goto_f
    if-eqz v17, :cond_12

    neg-float v3, v3

    sub-float/2addr v3, v6

    neg-float v2, v2

    sub-float/2addr v2, v6

    :cond_12
    aget v6, v24, v13

    const/16 v25, 0x0

    cmpl-float v5, v5, v25

    if-ltz v5, :cond_16

    :goto_10
    add-float v5, v6, v3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v3, v12, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/b/b;->b:[F

    add-int/lit8 v6, v12, 0x3

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/g/j;->e(F)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_13
    :goto_11
    add-int/lit8 v2, v13, 0x2

    move v13, v2

    goto :goto_d

    :cond_14
    add-float v2, v6, v14

    neg-float v3, v2

    goto :goto_e

    :cond_15
    move v2, v14

    goto :goto_f

    :cond_16
    move v3, v2

    goto :goto_10

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/h;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v3

    if-eqz v3, :cond_13

    add-float v6, v2, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/f/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_11

    :cond_18
    move-object/from16 v0, v23

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int v3, v12, v2

    goto/16 :goto_a

    :cond_19
    return-void
.end method
