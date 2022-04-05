.class public Lb/a/a/a/f/v;
.super Lb/a/a/a/f/t;


# instance fields
.field private r:Lcom/github/mikephil/charting/charts/RadarChart;

.field private s:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/a/a/a/f/t;-><init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/YAxis;Lb/a/a/a/g/g;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lb/a/a/a/f/v;->s:Landroid/graphics/Path;

    iput-object p3, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/a;->n()I

    move-result v3

    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    if-eqz v3, :cond_11

    const-wide/16 v7, 0x0

    cmpg-double v9, v4, v7

    if-lez v9, :cond_11

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_7

    :cond_0
    int-to-double v9, v3

    div-double v9, v4, v9

    invoke-static {v9, v10}, Lb/a/a/a/g/i;->b(D)F

    move-result v9

    float-to-double v9, v9

    iget-object v11, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/a;->x()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/a;->j()F

    move-result v11

    float-to-double v11, v11

    cmpg-double v13, v9, v11

    if-gez v13, :cond_1

    iget-object v9, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/a;->j()F

    move-result v9

    float-to-double v9, v9

    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Lb/a/a/a/g/i;->b(D)F

    move-result v11

    float-to-double v11, v11

    div-double v6, v9, v11

    double-to-int v6, v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    mul-double v11, v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :cond_2
    iget-object v6, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/a;->r()Z

    move-result v6

    iget-object v7, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/a;->w()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    double-to-float v2, v4

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iput v3, v4, Lcom/github/mikephil/charting/components/a;->n:I

    iget-object v5, v4, Lcom/github/mikephil/charting/components/a;->l:[F

    array-length v5, v5

    if-ge v5, v3, :cond_3

    new-array v5, v3, [F

    iput-object v5, v4, Lcom/github/mikephil/charting/components/a;->l:[F

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_d

    iget-object v5, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/a;->l:[F

    aput v1, v5, v4

    add-float/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x0

    cmpl-double v5, v9, v3

    if-nez v5, :cond_5

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_5
    float-to-double v3, v1

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    mul-double v3, v3, v9

    :goto_1
    if-eqz v6, :cond_6

    sub-double/2addr v3, v9

    :cond_6
    if-nez v5, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_7
    float-to-double v1, v2

    div-double/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    mul-double v1, v1, v9

    invoke-static {v1, v2}, Lb/a/a/a/g/i;->a(D)D

    move-result-wide v1

    :goto_2
    if-eqz v5, :cond_8

    move-wide v11, v3

    move v5, v6

    :goto_3
    cmpg-double v7, v11, v1

    if-gtz v7, :cond_9

    add-int/lit8 v5, v5, 0x1

    add-double/2addr v11, v9

    goto :goto_3

    :cond_8
    move v5, v6

    :cond_9
    add-int/lit8 v1, v5, 0x1

    iget-object v2, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iput v1, v2, Lcom/github/mikephil/charting/components/a;->n:I

    iget-object v5, v2, Lcom/github/mikephil/charting/components/a;->l:[F

    array-length v5, v5

    if-ge v5, v1, :cond_a

    new-array v5, v1, [F

    iput-object v5, v2, Lcom/github/mikephil/charting/components/a;->l:[F

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_c

    const-wide/16 v11, 0x0

    cmpl-double v5, v3, v11

    if-nez v5, :cond_b

    move-wide v3, v11

    :cond_b
    iget-object v5, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/a;->l:[F

    double-to-float v7, v3

    aput v7, v5, v2

    add-double/2addr v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    move v3, v1

    :cond_d
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v9, v1

    if-gez v4, :cond_e

    iget-object v1, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iput v2, v1, Lcom/github/mikephil/charting/components/a;->o:I

    goto :goto_5

    :cond_e
    iget-object v1, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/mikephil/charting/components/a;->o:I

    :goto_5
    if-eqz v6, :cond_10

    iget-object v1, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iget-object v2, v1, Lcom/github/mikephil/charting/components/a;->m:[F

    array-length v2, v2

    if-ge v2, v3, :cond_f

    new-array v2, v3, [F

    iput-object v2, v1, Lcom/github/mikephil/charting/components/a;->m:[F

    :cond_f
    iget-object v1, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/a;->l:[F

    aget v2, v1, v8

    const/4 v4, 0x0

    aget v1, v1, v4

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_10

    iget-object v4, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iget-object v5, v4, Lcom/github/mikephil/charting/components/a;->m:[F

    iget-object v4, v4, Lcom/github/mikephil/charting/components/a;->l:[F

    aget v4, v4, v1

    add-float/2addr v4, v2

    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    iget-object v1, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    iget-object v2, v1, Lcom/github/mikephil/charting/components/a;->l:[F

    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, v1, Lcom/github/mikephil/charting/components/a;->G:F

    sub-int/2addr v3, v8

    aget v2, v2, v3

    iput v2, v1, Lcom/github/mikephil/charting/components/a;->F:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/a;->H:F

    return-void

    :cond_11
    :goto_7
    iget-object v1, v0, Lb/a/a/a/f/a;->b:Lcom/github/mikephil/charting/components/a;

    const/4 v2, 0x0

    new-array v3, v2, [F

    iput-object v3, v1, Lcom/github/mikephil/charting/components/a;->l:[F

    new-array v3, v2, [F

    iput-object v3, v1, Lcom/github/mikephil/charting/components/a;->m:[F

    iput v2, v1, Lcom/github/mikephil/charting/components/a;->n:I

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/a;->n:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->G()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v6, v5, Lcom/github/mikephil/charting/components/a;->l:[F

    aget v6, v6, v4

    iget v5, v5, Lcom/github/mikephil/charting/components/a;->G:F

    sub-float/2addr v6, v5

    mul-float v6, v6, v2

    iget-object v5, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v5

    invoke-static {v0, v6, v5, v1}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    iget-object v5, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5, v4}, Lcom/github/mikephil/charting/components/a;->b(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lb/a/a/a/g/e;->c:F

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v6, v7

    iget v7, v1, Lb/a/a/a/g/e;->d:F

    iget-object v8, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v0}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    invoke-static {v1}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lb/a/a/a/f/t;->h:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->o()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v1

    iget-object v2, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/LimitLine;->k()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/LimitLine;->g()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v8, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/LimitLine;->l()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/LimitLine;->j()F

    move-result v7

    iget-object v8, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float v7, v7, v2

    iget-object v8, p0, Lb/a/a/a/f/v;->s:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    const/4 v9, 0x0

    :goto_1
    iget-object v10, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/h;->e()Lb/a/a/a/e/b/e;

    move-result-object v10

    check-cast v10, Lb/a/a/a/e/b/j;

    invoke-interface {v10}, Lb/a/a/a/e/b/e;->q0()I

    move-result v10

    if-ge v9, v10, :cond_3

    int-to-float v10, v9

    mul-float v10, v10, v1

    iget-object v11, p0, Lb/a/a/a/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v3, v7, v10, v4}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    if-nez v9, :cond_2

    iget v10, v4, Lb/a/a/a/g/e;->c:F

    iget v11, v4, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_2
    iget v10, v4, Lb/a/a/a/g/e;->c:F

    iget v11, v4, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v7, p0, Lb/a/a/a/f/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {v3}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    invoke-static {v4}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    return-void
.end method
