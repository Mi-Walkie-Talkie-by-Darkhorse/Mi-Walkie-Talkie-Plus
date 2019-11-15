.class public Lcom/github/mikephil/charting/f/d;
.super Lcom/github/mikephil/charting/f/c;
.source "BubbleChartRenderer.java"


# instance fields
.field protected a:Lcom/github/mikephil/charting/e/a/c;

.field private b:[F

.field private c:[F

.field private d:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/c;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/f/c;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/f/d;->d:[F

    iput-object p1, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected a(FFFZ)F
    .locals 2

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    mul-float v0, p3, p1

    return v0

    :cond_1
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/f;->i()Ljava/util/List;

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

    check-cast v0, Lcom/github/mikephil/charting/e/b/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/c;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/github/mikephil/charting/f/d;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/c;)V
    .locals 11

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/c;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/a/c;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-virtual {v0, v1, p2}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/4 v1, 0x0

    aput v1, v0, v9

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/c;->r()Z

    move-result v4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    aget v1, v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v1

    iget-object v5, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->a:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v0, v0, Lcom/github/mikephil/charting/f/c$a;->c:I

    iget-object v6, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v6, v6, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v0, v6

    if-gt v1, v0, :cond_2

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/e/b/c;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BubbleEntry;

    iget-object v6, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->h()F

    move-result v7

    aput v7, v6, v9

    iget-object v6, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->b()F

    move-result v7

    mul-float/2addr v7, v3

    aput v7, v6, v10

    iget-object v6, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->a()F

    move-result v6

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/c;->d()F

    move-result v7

    invoke-virtual {p0, v6, v7, v5, v4}, Lcom/github/mikephil/charting/f/d;->a(FFFZ)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    aget v8, v8, v10

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    aget v8, v8, v10

    sub-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    aget v8, v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    aget v8, v8, v9

    sub-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->h()F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p2, v0}, Lcom/github/mikephil/charting/e/b/c;->a(I)I

    move-result v0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    aget v0, v0, v9

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    aget v7, v7, v10

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V
    .locals 13

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v4

    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, p2, v2

    invoke-virtual {v6}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/f;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/c;->f()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v7

    invoke-interface {v0, v1, v7}, Lcom/github/mikephil/charting/e/b/c;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->b()F

    move-result v7

    invoke-virtual {v6}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/github/mikephil/charting/f/d;->a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/e/b/b;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/c;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/e/a/c;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v7

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/g;->a([F)V

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/c;->r()Z

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->b:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->h()F

    move-result v12

    aput v12, v10, v11

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v11, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->b()F

    move-result v12

    mul-float/2addr v12, v4

    aput v12, v10, v11

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    invoke-virtual {v7, v10}, Lcom/github/mikephil/charting/g/g;->a([F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v6, v7, v10}, Lcom/github/mikephil/charting/d/d;->a(FF)V

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->a()F

    move-result v6

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/c;->d()F

    move-result v7

    invoke-virtual {p0, v6, v7, v9, v8}, Lcom/github/mikephil/charting/f/d;->a(FFFZ)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->i(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->j(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    iget-object v8, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->h()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/b/c;->a(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget-object v10, p0, Lcom/github/mikephil/charting/f/d;->d:[F

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->d:[F

    const/4 v8, 0x2

    aget v9, v7, v8

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->d:[F

    invoke-static {v1, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->i:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/c;->t()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->c:[F

    const/4 v7, 0x1

    aget v1, v1, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/f/d;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 15

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/c;->getBubbleData()Lcom/github/mikephil/charting/data/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/f/d;->a(Lcom/github/mikephil/charting/e/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/f;->i()Ljava/util/List;

    move-result-object v12

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->k:Landroid/graphics/Paint;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v13, v0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/github/mikephil/charting/e/b/c;

    invoke-virtual {p0, v9}, Lcom/github/mikephil/charting/f/d;->a(Lcom/github/mikephil/charting/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v9}, Lcom/github/mikephil/charting/f/d;->b(Lcom/github/mikephil/charting/e/b/e;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/github/mikephil/charting/f/d;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/d;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-virtual {v2, v3, v9}, Lcom/github/mikephil/charting/f/c$a;->a(Lcom/github/mikephil/charting/e/a/b;Lcom/github/mikephil/charting/e/b/b;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/d;->a:Lcom/github/mikephil/charting/e/a/c;

    invoke-interface {v9}, Lcom/github/mikephil/charting/e/b/c;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/e/a/c;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v3, v3, Lcom/github/mikephil/charting/f/c$a;->a:I

    iget-object v4, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v4, v4, Lcom/github/mikephil/charting/f/c$a;->b:I

    invoke-virtual {v2, v9, v0, v3, v4}, Lcom/github/mikephil/charting/g/g;->a(Lcom/github/mikephil/charting/e/b/c;FII)[F

    move-result-object v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_5

    move v10, v0

    :goto_1
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    array-length v0, v14

    if-ge v11, v0, :cond_2

    div-int/lit8 v0, v11, 0x2

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v1, v1, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v0, v1

    invoke-interface {v9, v0}, Lcom/github/mikephil/charting/e/b/c;->c(I)I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aget v6, v14, v11

    add-int/lit8 v0, v11, 0x1

    aget v0, v14, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/g/j;->h(F)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/g/j;->g(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/f/d;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/g/j;->f(F)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v0, v11, 0x2

    move v11, v0

    goto :goto_2

    :cond_5
    move v10, v1

    goto :goto_1

    :cond_6
    div-int/lit8 v1, v11, 0x2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/d;->f:Lcom/github/mikephil/charting/f/c$a;

    iget v2, v2, Lcom/github/mikephil/charting/f/c$a;->a:I

    add-int/2addr v1, v2

    invoke-interface {v9, v1}, Lcom/github/mikephil/charting/e/b/c;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-interface {v9}, Lcom/github/mikephil/charting/e/b/c;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BubbleEntry;->a()F

    move-result v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v13

    add-float v7, v0, v1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/f/d;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
