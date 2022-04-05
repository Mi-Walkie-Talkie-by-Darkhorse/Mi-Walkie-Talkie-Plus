.class public Lb/a/a/a/f/d;
.super Lb/a/a/a/f/c;


# instance fields
.field protected g:Lb/a/a/a/e/a/c;

.field private h:[F

.field private i:[F

.field private j:[F


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/c;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/c;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lb/a/a/a/f/d;->h:[F

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lb/a/a/a/f/d;->i:[F

    const/4 p2, 0x3

    new-array p2, p2, [F

    iput-object p2, p0, Lb/a/a/a/f/d;->j:[F

    iput-object p1, p0, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    iget-object p1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Lb/a/a/a/g/i;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected a(FFFZ)F
    .locals 0

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    cmpl-float p4, p2, p4

    if-nez p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    :cond_1
    :goto_0
    mul-float p3, p3, p1

    return p3
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {v0}, Lb/a/a/a/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/c;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lb/a/a/a/f/d;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/c;)V
    .locals 11

    iget-object v0, p0, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {p2}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v1

    iget-object v2, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v3, p0, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-virtual {v2, v3, p2}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    iget-object v2, p0, Lb/a/a/a/f/d;->h:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Lb/a/a/a/g/g;->b([F)V

    invoke-interface {p2}, Lb/a/a/a/e/b/c;->c()Z

    move-result v2

    iget-object v3, p0, Lb/a/a/a/f/d;->h:[F

    aget v5, v3, v5

    aget v3, v3, v4

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v5}, Lb/a/a/a/g/j;->e()F

    move-result v5

    iget-object v6, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v6}, Lb/a/a/a/g/j;->i()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v5, v5, Lb/a/a/a/f/c$a;->a:I

    :goto_0
    iget-object v6, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v7, v6, Lb/a/a/a/f/c$a;->c:I

    iget v6, v6, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v7, v6

    if-gt v5, v7, :cond_4

    invoke-interface {p2, v5}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BubbleEntry;

    iget-object v7, p0, Lb/a/a/a/f/d;->i:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v8

    aput v8, v7, v4

    iget-object v7, p0, Lb/a/a/a/f/d;->i:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v8

    mul-float v8, v8, v1

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lb/a/a/a/f/d;->i:[F

    invoke-virtual {v0, v7}, Lb/a/a/a/g/g;->b([F)V

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->d()F

    move-result v7

    invoke-interface {p2}, Lb/a/a/a/e/b/c;->O()F

    move-result v8

    invoke-virtual {p0, v7, v8, v3, v2}, Lb/a/a/a/f/d;->a(FFFZ)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v10, p0, Lb/a/a/a/f/d;->i:[F

    aget v10, v10, v9

    add-float/2addr v10, v7

    invoke-virtual {v8, v10}, Lb/a/a/a/g/j;->d(F)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v10, p0, Lb/a/a/a/f/d;->i:[F

    aget v10, v10, v9

    sub-float/2addr v10, v7

    invoke-virtual {v8, v10}, Lb/a/a/a/g/j;->a(F)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v10, p0, Lb/a/a/a/f/d;->i:[F

    aget v10, v10, v4

    add-float/2addr v10, v7

    invoke-virtual {v8, v10}, Lb/a/a/a/g/j;->b(F)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v10, p0, Lb/a/a/a/f/d;->i:[F

    aget v10, v10, v4

    sub-float/2addr v10, v7

    invoke-virtual {v8, v10}, Lb/a/a/a/g/j;->c(F)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {p2, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v6

    iget-object v8, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lb/a/a/a/f/d;->i:[F

    aget v8, v6, v4

    aget v6, v6, v9

    iget-object v9, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {v2}, Lb/a/a/a/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v2

    iget-object v3, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v3}, Lb/a/a/a/a/a;->b()F

    move-result v3

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lb/a/a/a/d/d;->c()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v8

    check-cast v8, Lb/a/a/a/e/b/c;

    if-eqz v8, :cond_6

    invoke-interface {v8}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7}, Lb/a/a/a/d/d;->g()F

    move-result v9

    invoke-virtual {v7}, Lb/a/a/a/d/d;->i()F

    move-result v10

    invoke-interface {v8, v9, v10}, Lb/a/a/a/e/b/e;->a(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v10

    invoke-virtual {v7}, Lb/a/a/a/d/d;->i()F

    move-result v11

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, v9, v8}, Lb/a/a/a/f/c;->a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v10, v0, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {v8}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v10

    iget-object v11, v0, Lb/a/a/a/f/d;->h:[F

    const/4 v12, 0x0

    aput v12, v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    aput v12, v11, v13

    invoke-virtual {v10, v11}, Lb/a/a/a/g/g;->b([F)V

    invoke-interface {v8}, Lb/a/a/a/e/b/c;->c()Z

    move-result v11

    iget-object v12, v0, Lb/a/a/a/f/d;->h:[F

    aget v14, v12, v13

    aget v12, v12, v5

    sub-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget-object v14, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v14}, Lb/a/a/a/g/j;->e()F

    move-result v14

    iget-object v15, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v15}, Lb/a/a/a/g/j;->i()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget-object v14, v0, Lb/a/a/a/f/d;->i:[F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v15

    aput v15, v14, v5

    iget-object v14, v0, Lb/a/a/a/f/d;->i:[F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v15

    mul-float v15, v15, v3

    const/16 v16, 0x1

    aput v15, v14, v16

    iget-object v14, v0, Lb/a/a/a/f/d;->i:[F

    invoke-virtual {v10, v14}, Lb/a/a/a/g/g;->b([F)V

    iget-object v10, v0, Lb/a/a/a/f/d;->i:[F

    aget v14, v10, v5

    aget v10, v10, v16

    invoke-virtual {v7, v14, v10}, Lb/a/a/a/d/d;->a(FF)V

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->d()F

    move-result v7

    invoke-interface {v8}, Lb/a/a/a/e/b/c;->O()F

    move-result v10

    invoke-virtual {v0, v7, v10, v12, v11}, Lb/a/a/a/f/d;->a(FFFZ)F

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    iget-object v10, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v11, v0, Lb/a/a/a/f/d;->i:[F

    aget v11, v11, v16

    add-float/2addr v11, v7

    invoke-virtual {v10, v11}, Lb/a/a/a/g/j;->d(F)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v11, v0, Lb/a/a/a/f/d;->i:[F

    aget v11, v11, v16

    sub-float/2addr v11, v7

    invoke-virtual {v10, v11}, Lb/a/a/a/g/j;->a(F)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    iget-object v10, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v11, v0, Lb/a/a/a/f/d;->i:[F

    aget v11, v11, v5

    add-float/2addr v11, v7

    invoke-virtual {v10, v11}, Lb/a/a/a/g/j;->b(F)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    iget-object v10, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v11, v0, Lb/a/a/a/f/d;->i:[F

    aget v11, v11, v5

    sub-float/2addr v11, v7

    invoke-virtual {v10, v11}, Lb/a/a/a/g/j;->c(F)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v8, v9}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    iget-object v14, v0, Lb/a/a/a/f/d;->j:[F

    invoke-static {v10, v11, v12, v14}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iget-object v10, v0, Lb/a/a/a/f/d;->j:[F

    aget v11, v10, v13

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    aput v11, v10, v13

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    iget-object v10, v0, Lb/a/a/a/f/d;->j:[F

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    iget-object v10, v0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    invoke-interface {v8}, Lb/a/a/a/e/b/c;->h0()F

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, v0, Lb/a/a/a/f/d;->i:[F

    aget v9, v8, v5

    aget v8, v8, v16

    iget-object v10, v0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v9, v8, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object/from16 v11, p1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v9, p0

    iget-object v0, v9, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {v0}, Lb/a/a/a/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v9, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-virtual {v9, v1}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/a/e;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v10

    iget-object v0, v9, Lb/a/a/a/f/g;->e:Landroid/graphics/Paint;

    const-string v1, "1"

    invoke-static {v0, v1}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_7

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lb/a/a/a/e/b/c;

    invoke-virtual {v9, v14}, Lb/a/a/a/f/c;->b(Lb/a/a/a/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v9, v14}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/b/e;)V

    const/4 v0, 0x0

    iget-object v1, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->a()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v1

    iget-object v3, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v4, v9, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-virtual {v3, v4, v14}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    iget-object v3, v9, Lb/a/a/a/f/d;->g:Lb/a/a/a/e/a/c;

    invoke-interface {v14}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v3

    iget-object v4, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v5, v4, Lb/a/a/a/f/c$a;->a:I

    iget v4, v4, Lb/a/a/a/f/c$a;->b:I

    invoke-virtual {v3, v14, v1, v5, v4}, Lb/a/a/a/g/g;->a(Lb/a/a/a/e/b/c;FII)[F

    move-result-object v15

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    move/from16 v16, v1

    goto :goto_1

    :cond_2
    move/from16 v16, v0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    array-length v0, v15

    if-ge v8, v0, :cond_6

    div-int/lit8 v0, v8, 0x2

    iget-object v1, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v1, v1, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v1, v0

    invoke-interface {v14, v1}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v17

    aget v6, v15, v8

    add-int/lit8 v1, v8, 0x1

    aget v1, v15, v1

    iget-object v2, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v2, v6}, Lb/a/a/a/g/j;->c(F)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    iget-object v2, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v2, v6}, Lb/a/a/a/g/j;->b(F)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v2, v1}, Lb/a/a/a/g/j;->f(F)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v0, v2

    invoke-interface {v14, v0}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-interface {v14}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BubbleEntry;->d()F

    move-result v3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, v11

    add-float v7, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v13

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v18, v8

    :goto_4
    add-int/lit8 v8, v18, 0x2

    goto :goto_2

    :cond_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
