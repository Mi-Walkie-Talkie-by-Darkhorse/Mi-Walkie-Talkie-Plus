.class public Lb/a/a/a/f/b;
.super Lb/a/a/a/f/c;


# instance fields
.field protected g:Lb/a/a/a/e/a/a;

.field protected h:Landroid/graphics/RectF;

.field protected i:[Lb/a/a/a/b/b;

.field protected j:Landroid/graphics/Paint;

.field protected k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/a;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/c;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/b;->h:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    iput-object p1, p0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-static {p3, p3, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    const/16 p3, 0x78

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/b;->j:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/b;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v1

    new-array v1, v1, [Lb/a/a/a/b/b;

    iput-object v1, p0, Lb/a/a/a/f/b;->i:[Lb/a/a/a/b/b;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/a/a/a/f/b;->i:[Lb/a/a/a/b/b;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v2

    check-cast v2, Lb/a/a/a/e/b/a;

    iget-object v3, p0, Lb/a/a/a/f/b;->i:[Lb/a/a/a/b/b;

    new-instance v4, Lb/a/a/a/b/b;

    invoke-interface {v2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-interface {v2}, Lb/a/a/a/e/b/a;->j0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lb/a/a/a/e/b/a;->a0()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    mul-int v5, v5, v6

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v6

    invoke-interface {v2}, Lb/a/a/a/e/b/a;->j0()Z

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Lb/a/a/a/b/b;-><init>(IIZ)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(FFFFLb/a/a/a/g/g;)V
    .locals 1

    sub-float v0, p1, p4

    add-float/2addr p1, p4

    iget-object p4, p0, Lb/a/a/a/f/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p4, v0, p2, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lb/a/a/a/f/b;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {p2}, Lb/a/a/a/a/a;->b()F

    move-result p2

    invoke-virtual {p5, p1, p2}, Lb/a/a/a/g/g;->a(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v2

    check-cast v2, Lb/a/a/a/e/b/a;

    invoke-interface {v2}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lb/a/a/a/f/b;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/a;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/a;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v3

    iget-object v4, v0, Lb/a/a/a/f/b;->k:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/a;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lb/a/a/a/f/b;->k:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/a;->v()F

    move-result v5

    invoke-static {v5}, Lb/a/a/a/g/i;->a(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/a;->v()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v7, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v7}, Lb/a/a/a/a/a;->a()F

    move-result v7

    iget-object v8, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v8}, Lb/a/a/a/a/a;->b()F

    move-result v8

    iget-object v9, v0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v9}, Lb/a/a/a/e/a/a;->a()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lb/a/a/a/f/b;->j:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/a;->S()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v9}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/a;->k()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    invoke-interface {v1, v11}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v12

    iget-object v13, v0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    sub-float v14, v12, v9

    iput v14, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v9

    iput v12, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v13}, Lb/a/a/a/g/g;->a(Landroid/graphics/RectF;)V

    iget-object v12, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v13, v0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v12, v13}, Lb/a/a/a/g/j;->b(F)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v15, p1

    goto :goto_2

    :cond_1
    iget-object v12, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v13, v0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v12, v13}, Lb/a/a/a/g/j;->c(F)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    iget-object v12, v0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v13}, Lb/a/a/a/g/j;->i()F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    iget-object v13, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v13}, Lb/a/a/a/g/j;->e()F

    move-result v13

    iput v13, v12, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lb/a/a/a/f/b;->l:Landroid/graphics/RectF;

    iget-object v13, v0, Lb/a/a/a/f/b;->j:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    move-object/from16 v15, p1

    iget-object v9, v0, Lb/a/a/a/f/b;->i:[Lb/a/a/a/b/b;

    aget-object v9, v9, v2

    invoke-virtual {v9, v7, v8}, Lb/a/a/a/b/a;->a(FF)V

    invoke-virtual {v9, v2}, Lb/a/a/a/b/b;->a(I)V

    iget-object v2, v0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v2, v7}, Lb/a/a/a/e/a/b;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v2

    invoke-virtual {v9, v2}, Lb/a/a/a/b/b;->a(Z)V

    iget-object v2, v0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v2}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/a;->k()F

    move-result v2

    invoke-virtual {v9, v2}, Lb/a/a/a/b/b;->a(F)V

    invoke-virtual {v9, v1}, Lb/a/a/a/b/b;->a(Lb/a/a/a/e/b/a;)V

    iget-object v2, v9, Lb/a/a/a/b/a;->b:[F

    invoke-virtual {v3, v2}, Lb/a/a/a/g/g;->b([F)V

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->Z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    iget-object v2, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    :goto_5
    invoke-virtual {v9}, Lb/a/a/a/b/a;->b()I

    move-result v2

    if-ge v5, v2, :cond_a

    iget-object v2, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v3, v9, Lb/a/a/a/b/a;->b:[F

    add-int/lit8 v7, v5, 0x2

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Lb/a/a/a/g/j;->b(F)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v3, v9, Lb/a/a/a/b/a;->b:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Lb/a/a/a/g/j;->c(F)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    if-nez v6, :cond_8

    iget-object v2, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    div-int/lit8 v3, v5, 0x4

    invoke-interface {v1, v3}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v2, v9, Lb/a/a/a/b/a;->b:[F

    aget v3, v2, v5

    add-int/lit8 v8, v5, 0x1

    aget v16, v2, v8

    aget v17, v2, v7

    add-int/lit8 v10, v5, 0x3

    aget v18, v2, v10

    iget-object v2, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move v15, v3

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_9

    iget-object v2, v9, Lb/a/a/a/b/a;->b:[F

    aget v15, v2, v5

    aget v16, v2, v8

    aget v17, v2, v7

    aget v18, v2, v10

    iget-object v2, v0, Lb/a/a/a/f/b;->k:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x4

    move-object/from16 v15, p1

    goto :goto_5

    :cond_a
    :goto_7
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 11

    iget-object v0, p0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v6

    array-length v7, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_6

    aget-object v10, p2, v9

    invoke-virtual {v10}, Lb/a/a/a/d/d;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/a;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v10}, Lb/a/a/a/d/d;->g()F

    move-result v1

    invoke-virtual {v10}, Lb/a/a/a/d/d;->i()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/e/b/e;->a(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0, v1, v0}, Lb/a/a/a/f/c;->a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v5

    iget-object v2, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    invoke-interface {v0}, Lb/a/a/a/e/b/b;->n0()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    invoke-interface {v0}, Lb/a/a/a/e/b/a;->c0()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v10}, Lb/a/a/a/d/d;->f()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->e()F

    move-result v0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->d()F

    move-result v2

    neg-float v2, v2

    move v3, v2

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->f()[Lb/a/a/a/d/j;

    move-result-object v0

    invoke-virtual {v10}, Lb/a/a/a/d/d;->f()I

    move-result v2

    aget-object v0, v0, v2

    iget v2, v0, Lb/a/a/a/d/j;->a:F

    iget v0, v0, Lb/a/a/a/d/j;->b:F

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v0

    const/4 v2, 0x0

    move v2, v0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/a;->k()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lb/a/a/a/f/b;->a(FFFFLb/a/a/a/g/g;)V

    iget-object v0, p0, Lb/a/a/a/f/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0, v10, v0}, Lb/a/a/a/f/b;->a(Lb/a/a/a/d/d;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lb/a/a/a/f/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected a(Lb/a/a/a/d/d;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Lb/a/a/a/d/d;->a(FF)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v9, p0

    iget-object v0, v9, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-virtual {v9, v0}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/a/e;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v9, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v10

    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v11

    iget-object v0, v9, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->b()Z

    move-result v12

    const/4 v14, 0x0

    :goto_0
    iget-object v0, v9, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v0

    if-ge v14, v0, :cond_17

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lb/a/a/a/e/b/a;

    invoke-virtual {v9, v15}, Lb/a/a/a/f/c;->b(Lb/a/a/a/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v26, v10

    move/from16 v24, v11

    goto/16 :goto_13

    :cond_1
    invoke-virtual {v9, v15}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/b/e;)V

    iget-object v0, v9, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v15}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    iget-object v1, v9, Lb/a/a/a/f/g;->e:Landroid/graphics/Paint;

    const-string v2, "8"

    invoke-static {v1, v2}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    if-eqz v12, :cond_2

    neg-float v2, v11

    goto :goto_2

    :cond_2
    add-float v2, v1, v11

    :goto_2
    if-eqz v12, :cond_3

    add-float v3, v1, v11

    goto :goto_3

    :cond_3
    neg-float v3, v11

    :goto_3
    if-eqz v0, :cond_4

    neg-float v0, v2

    sub-float v2, v0, v1

    neg-float v0, v3

    sub-float v3, v0, v1

    :cond_4
    move/from16 v16, v2

    move/from16 v17, v3

    iget-object v0, v9, Lb/a/a/a/f/b;->i:[Lb/a/a/a/b/b;

    aget-object v8, v0, v14

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v18

    invoke-interface {v15}, Lb/a/a/a/e/b/a;->j0()Z

    move-result v0

    const/high16 v19, 0x40000000    # 2.0f

    const/16 v20, 0x0

    if-nez v0, :cond_9

    const/4 v7, 0x0

    :goto_4
    int-to-float v0, v7

    iget-object v1, v8, Lb/a/a/a/b/a;->b:[F

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v2}, Lb/a/a/a/a/a;->a()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, v8, Lb/a/a/a/b/a;->b:[F

    aget v1, v0, v7

    add-int/lit8 v2, v7, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    div-float v6, v1, v19

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0, v6}, Lb/a/a/a/g/j;->c(F)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v1, v8, Lb/a/a/a/b/a;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lb/a/a/a/g/j;->f(F)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0, v6}, Lb/a/a/a/g/j;->b(F)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    div-int/lit8 v0, v7, 0x4

    invoke-interface {v15, v0}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v3

    invoke-interface {v15}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v5

    cmpl-float v1, v3, v20

    if-ltz v1, :cond_7

    iget-object v1, v8, Lb/a/a/a/b/a;->b:[F

    aget v1, v1, v2

    add-float v1, v1, v16

    goto :goto_5

    :cond_7
    iget-object v1, v8, Lb/a/a/a/b/a;->b:[F

    add-int/lit8 v2, v7, 0x3

    aget v1, v1, v2

    add-float v1, v1, v17

    :goto_5
    move/from16 v18, v1

    invoke-interface {v15, v0}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v5, v14

    move/from16 v22, v7

    move/from16 v7, v18

    move-object v13, v8

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v22, v7

    move-object v13, v8

    :goto_7
    add-int/lit8 v7, v22, 0x4

    move-object v8, v13

    goto :goto_4

    :cond_9
    move-object v13, v8

    iget-object v0, v9, Lb/a/a/a/f/b;->g:Lb/a/a/a/e/a/a;

    invoke-interface {v15}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v8

    const/4 v7, 0x0

    const/16 v21, 0x0

    :goto_8
    int-to-float v0, v7

    invoke-interface {v15}, Lb/a/a/a/e/b/e;->q0()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v2}, Lb/a/a/a/a/a;->a()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-interface {v15, v7}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->g()[F

    move-result-object v6

    iget-object v0, v13, Lb/a/a/a/b/a;->b:[F

    aget v1, v0, v21

    add-int/lit8 v2, v21, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    div-float v5, v1, v19

    invoke-interface {v15, v7}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v23

    if-nez v6, :cond_e

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0, v5}, Lb/a/a/a/g/j;->c(F)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v1, v13, Lb/a/a/a/b/a;->b:[F

    add-int/lit8 v2, v21, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lb/a/a/a/g/j;->f(F)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0, v5}, Lb/a/a/a/g/j;->b(F)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    invoke-interface {v15}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v4

    iget-object v0, v13, Lb/a/a/a/b/a;->b:[F

    aget v0, v0, v2

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v1

    cmpl-float v1, v1, v20

    if-ltz v1, :cond_c

    move/from16 v1, v16

    goto :goto_9

    :cond_c
    move/from16 v1, v17

    :goto_9
    add-float v24, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move-object/from16 v4, v22

    move/from16 v25, v5

    move v5, v14

    move-object/from16 v26, v10

    move-object v10, v6

    move/from16 v6, v25

    move/from16 v27, v7

    move/from16 v7, v24

    move/from16 v24, v11

    move-object v11, v8

    move/from16 v8, v23

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto/16 :goto_11

    :cond_d
    :goto_a
    move/from16 v27, v7

    move-object/from16 v26, v10

    move/from16 v24, v11

    move-object v11, v8

    move-object v8, v11

    move/from16 v11, v24

    move-object/from16 v10, v26

    move/from16 v7, v27

    goto/16 :goto_8

    :cond_e
    move/from16 v25, v5

    move/from16 v27, v7

    move-object/from16 v26, v10

    move/from16 v24, v11

    move-object v10, v6

    move-object v11, v8

    array-length v0, v10

    mul-int/lit8 v8, v0, 0x2

    new-array v7, v8, [F

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/BarEntry;->d()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v1, v8, :cond_10

    aget v4, v10, v2

    cmpl-float v5, v4, v20

    if-ltz v5, :cond_f

    add-float/2addr v3, v4

    move v4, v0

    move v0, v3

    goto :goto_c

    :cond_f
    sub-float v4, v0, v4

    :goto_c
    add-int/lit8 v5, v1, 0x1

    mul-float v0, v0, v18

    aput v0, v7, v5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_b

    :cond_10
    invoke-virtual {v11, v7}, Lb/a/a/a/g/g;->b([F)V

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v8, :cond_15

    add-int/lit8 v0, v6, 0x1

    aget v0, v7, v0

    div-int/lit8 v1, v6, 0x2

    aget v2, v10, v1

    cmpl-float v2, v2, v20

    if-ltz v2, :cond_11

    move/from16 v2, v16

    goto :goto_e

    :cond_11
    move/from16 v2, v17

    :goto_e
    add-float v5, v0, v2

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    move/from16 v4, v25

    invoke-virtual {v0, v4}, Lb/a/a/a/g/j;->c(F)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_11

    :cond_12
    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0, v5}, Lb/a/a/a/g/j;->f(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v0, v4}, Lb/a/a/a/g/j;->b(F)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_f

    :cond_13
    invoke-interface {v15}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v2

    aget v3, v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v25, v4

    move-object/from16 v4, v22

    move/from16 v28, v5

    move v5, v14

    move/from16 v29, v6

    move/from16 v6, v25

    move-object/from16 v30, v7

    move/from16 v7, v28

    move/from16 v28, v8

    move/from16 v8, v23

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_10

    :cond_14
    :goto_f
    move/from16 v25, v4

    move/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v28, v8

    :goto_10
    add-int/lit8 v6, v29, 0x2

    move/from16 v8, v28

    move-object/from16 v7, v30

    goto :goto_d

    :cond_15
    :goto_11
    if-nez v10, :cond_16

    add-int/lit8 v21, v21, 0x4

    goto :goto_12

    :cond_16
    array-length v0, v10

    mul-int/lit8 v0, v0, 0x4

    add-int v21, v21, v0

    :goto_12
    add-int/lit8 v7, v27, 0x1

    move-object v8, v11

    move/from16 v11, v24

    move-object/from16 v10, v26

    goto/16 :goto_8

    :goto_13
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v24

    move-object/from16 v10, v26

    goto/16 :goto_0

    :cond_17
    return-void
.end method
