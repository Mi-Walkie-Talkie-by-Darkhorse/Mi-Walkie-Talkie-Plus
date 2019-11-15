.class public Lcom/github/mikephil/charting/f/e;
.super Lcom/github/mikephil/charting/f/l;
.source "CandleStickChartRenderer.java"


# instance fields
.field protected a:Lcom/github/mikephil/charting/e/a/d;

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:[F

.field private l:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/d;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/f/l;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    iput-object p1, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/g;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/d;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/f/e;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/d;)V
    .locals 12

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/a/d;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v7

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v8

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->d()F

    move-result v9

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->r()Z

    move-result v10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-virtual {v0, v1, p2}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->t()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->a:I

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget-object v1, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v1, v1, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v0, v1

    if-gt v6, v0, :cond_15

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->h()F

    move-result v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->d()F

    move-result v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->a()F

    move-result v4

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->c()F

    move-result v0

    if-eqz v10, :cond_f

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x0

    aput v1, v5, v11

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x2

    aput v1, v5, v11

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x4

    aput v1, v5, v11

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x6

    aput v1, v5, v11

    cmpl-float v5, v2, v3

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v5, 0x3

    mul-float v11, v2, v8

    aput v11, v4, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v5, 0x5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v4, 0x7

    mul-float v5, v3, v8

    aput v5, v0, v4

    :goto_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    cmpl-float v0, v2, v3

    if-lez v0, :cond_4

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_3

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    :goto_3
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, v1, v5

    add-float/2addr v5, v9

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v4, 0x1

    mul-float v5, v3, v8

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v4, 0x2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    sub-float/2addr v1, v9

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v1, 0x3

    mul-float v4, v2, v8

    aput v4, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    cmpl-float v0, v2, v3

    if-lez v0, :cond_b

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->D()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v2, 0x3

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v5, v2, v3

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v5, 0x3

    mul-float v11, v3, v8

    aput v11, v4, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v5, 0x5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v4, 0x7

    mul-float v5, v2, v8

    aput v5, v0, v4

    goto/16 :goto_2

    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v5, 0x3

    mul-float v11, v2, v8

    aput v11, v4, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v5, 0x5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->b:[F

    const/4 v11, 0x3

    aget v5, v5, v11

    aput v5, v0, v4

    goto/16 :goto_2

    :cond_3
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    cmpg-float v0, v2, v3

    if-gez v0, :cond_6

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_5

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    :goto_6
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_5
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v0

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->z()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_7

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    :goto_7
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_7
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->z()I

    move-result v0

    goto :goto_7

    :cond_8
    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->y()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_9

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    :goto_8
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_9
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->y()I

    move-result v0

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    :cond_b
    cmpg-float v0, v2, v3

    if-gez v0, :cond_d

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->C()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    :cond_d
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->z()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_a
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->c:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    :cond_f
    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v11, 0x0

    aput v1, v5, v11

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v5, 0x3

    mul-float/2addr v0, v8

    aput v0, v4, v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, v1, v5

    add-float/2addr v5, v9

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v4, 0x1

    mul-float v5, v2, v8

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v4, 0x3

    mul-float v5, v2, v8

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v1

    sub-float/2addr v5, v9

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v4, 0x1

    mul-float v5, v3, v8

    aput v5, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v1, 0x3

    mul-float v4, v3, v8

    aput v4, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    cmpl-float v0, v2, v3

    if-lez v0, :cond_11

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_10

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    :goto_b
    iget-object v1, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->d:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->e:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->l:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_10
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v0

    goto :goto_b

    :cond_11
    cmpg-float v0, v2, v3

    if-gez v0, :cond_13

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_12

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    goto :goto_b

    :cond_12
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v0

    goto :goto_b

    :cond_13
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->z()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_14

    invoke-interface {p2, v6}, Lcom/github/mikephil/charting/e/b/d;->a(I)I

    move-result v0

    goto :goto_b

    :cond_14
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/d;->z()I

    move-result v0

    goto/16 :goto_b

    :cond_15
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V
    .locals 10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v3

    array-length v4, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/g;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/d;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v1

    invoke-virtual {v5}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v6

    invoke-interface {v0, v1, v6}, Lcom/github/mikephil/charting/e/b/d;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/f/e;->a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/e/b/b;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->c()F

    move-result v6

    iget-object v7, p0, Lcom/github/mikephil/charting/f/e;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->a()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/f/e;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/d;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/e/a/d;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v7

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->h()F

    move-result v1

    invoke-virtual {v7, v1, v6}, Lcom/github/mikephil/charting/g/g;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v1

    iget-wide v6, v1, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v6, v6

    iget-wide v8, v1, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/github/mikephil/charting/d/d;->a(FF)V

    iget-wide v6, v1, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v5, v6

    iget-wide v6, v1, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v1, v6

    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/github/mikephil/charting/f/e;->a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/e/b/h;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/f/e;->a(Lcom/github/mikephil/charting/e/a/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/g;->i()Ljava/util/List;

    move-result-object v11

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/e/b/d;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/f/e;->a(Lcom/github/mikephil/charting/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/f/e;->b(Lcom/github/mikephil/charting/e/b/e;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/d;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/e/a/d;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/e;->a:Lcom/github/mikephil/charting/e/a/d;

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/e;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/e;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->a:I

    iget-object v5, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v5, v5, Lcom/github/mikephil/charting/f/c$a;->b:I

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/g/g;->a(Lcom/github/mikephil/charting/e/b/d;FFII)[F

    move-result-object v12

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v13

    const/4 v0, 0x0

    :goto_1
    array-length v2, v12

    if-ge v0, v2, :cond_0

    aget v8, v12, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, v12, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/e;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/e;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/e;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3, v2}, Lcom/github/mikephil/charting/g/j;->f(F)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/github/mikephil/charting/f/e;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/github/mikephil/charting/e/b/d;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/d;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/CandleEntry;->a()F

    move-result v5

    sub-float v9, v2, v13

    div-int/lit8 v2, v0, 0x2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/e/b/d;->c(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/github/mikephil/charting/f/e;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
