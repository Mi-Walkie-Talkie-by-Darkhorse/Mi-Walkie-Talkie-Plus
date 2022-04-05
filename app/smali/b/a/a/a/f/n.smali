.class public Lb/a/a/a/f/n;
.super Lb/a/a/a/f/k;


# instance fields
.field protected h:Lcom/github/mikephil/charting/charts/RadarChart;

.field protected i:Landroid/graphics/Paint;

.field protected j:Landroid/graphics/Paint;

.field protected k:Landroid/graphics/Path;

.field protected l:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/k;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/n;->k:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lb/a/a/a/f/n;->l:Landroid/graphics/Path;

    iput-object p1, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lb/a/a/a/f/g;->d:Landroid/graphics/Paint;

    const/16 p3, 0xff

    const/16 v0, 0xbb

    const/16 v1, 0x73

    invoke-static {p3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->e()Lb/a/a/a/e/b/e;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/j;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->q0()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/e/b/j;

    invoke-interface {v2}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lb/a/a/a/f/n;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/j;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/j;I)V
    .locals 12

    iget-object v0, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()F

    move-result v0

    iget-object v1, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v1

    iget-object v2, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v2

    iget-object v3, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    iget-object v4, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v5

    iget-object v6, p0, Lb/a/a/a/f/n;->k:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v9

    if-ge v7, v9, :cond_2

    iget-object v9, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {p2, v7}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {p2, v7}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v9

    iget-object v10, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v9, v9, v3

    mul-float v9, v9, v1

    int-to-float v10, v7

    mul-float v10, v10, v2

    mul-float v10, v10, v0

    iget-object v11, p0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v4, v9, v10, v5}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    iget v9, v5, Lb/a/a/a/g/e;->c:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    if-nez v8, :cond_1

    iget v8, v5, Lb/a/a/a/g/e;->c:F

    iget v9, v5, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    iget v9, v5, Lb/a/a/a/g/e;->c:F

    iget v10, v5, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v0

    if-le v0, p3, :cond_3

    iget p3, v4, Lb/a/a/a/g/e;->c:F

    iget v0, v4, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v6, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->J()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->B()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p1, v6, p3}, Lb/a/a/a/f/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Lb/a/a/a/e/b/g;->getFillColor()I

    move-result p3

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->h()I

    move-result v0

    invoke-virtual {p0, p1, v6, p3, v0}, Lb/a/a/a/f/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :cond_5
    :goto_2
    iget-object p3, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->o()F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p3, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->J()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Lb/a/a/a/e/b/g;->h()I

    move-result p2

    const/16 p3, 0xff

    if-ge p2, p3, :cond_7

    :cond_6
    iget-object p2, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    invoke-static {v4}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    invoke-static {v5}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lb/a/a/a/g/e;FFIIF)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {p4}, Lb/a/a/a/g/i;->a(F)F

    move-result p4

    invoke-static {p3}, Lb/a/a/a/g/i;->a(F)F

    move-result p3

    const v0, 0x112233

    if-eq p5, v0, :cond_1

    iget-object v1, p0, Lb/a/a/a/f/n;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v2, p2, Lb/a/a/a/g/e;->c:F

    iget v3, p2, Lb/a/a/a/g/e;->d:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, p4, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget v2, p2, Lb/a/a/a/g/e;->c:F

    iget v3, p2, Lb/a/a/a/g/e;->d:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    iget-object p3, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    if-eq p6, v0, :cond_2

    iget-object p3, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    invoke-static {p7}, Lb/a/a/a/g/i;->a(F)F

    move-result p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget p3, p2, Lb/a/a/a/g/e;->c:F

    iget p2, p2, Lb/a/a/a/g/e;->d:F

    iget-object p5, p0, Lb/a/a/a/f/n;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v10

    iget-object v0, v8, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v11

    iget-object v0, v8, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v12

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v13

    iget-object v0, v8, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/github/mikephil/charting/data/n;

    array-length v15, v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v15, :cond_5

    aget-object v0, v9, v6

    invoke-virtual {v0}, Lb/a/a/a/d/d;->c()I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/j;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lb/a/a/a/d/d;->g()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {v8, v2, v1}, Lb/a/a/a/f/c;->a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    iget-object v3, v8, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v11

    iget-object v3, v8, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v3}, Lb/a/a/a/a/a;->b()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v0}, Lb/a/a/a/d/d;->g()F

    move-result v3

    mul-float v3, v3, v10

    iget-object v4, v8, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v4}, Lb/a/a/a/a/a;->a()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, v8, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v12, v2, v3, v13}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    iget v2, v13, Lb/a/a/a/g/e;->c:F

    iget v3, v13, Lb/a/a/a/g/e;->d:F

    invoke-virtual {v0, v2, v3}, Lb/a/a/a/d/d;->a(FF)V

    iget v0, v13, Lb/a/a/a/g/e;->c:F

    iget v2, v13, Lb/a/a/a/g/e;->d:F

    move-object/from16 v5, p1

    invoke-virtual {v8, v5, v0, v2, v1}, Lb/a/a/a/f/l;->a(Landroid/graphics/Canvas;FFLb/a/a/a/e/b/h;)V

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v13, Lb/a/a/a/g/e;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, v13, Lb/a/a/a/g/e;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->n()I

    move-result v0

    const v2, 0x112233

    if-ne v0, v2, :cond_2

    invoke-interface {v1, v7}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v0

    :cond_2
    invoke-interface {v1}, Lb/a/a/a/e/b/j;->i()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_3

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->i()I

    move-result v2

    invoke-static {v0, v2}, Lb/a/a/a/g/a;->a(II)I

    move-result v0

    :cond_3
    move/from16 v16, v0

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->g()F

    move-result v3

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->y()F

    move-result v4

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->e()I

    move-result v17

    invoke-interface {v1}, Lb/a/a/a/e/b/j;->a()F

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    const/16 v16, 0x0

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lb/a/a/a/f/n;->a(Landroid/graphics/Canvas;Lb/a/a/a/g/e;FFIIF)V

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v17, v6

    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v6, v17, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {v12}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    invoke-static {v13}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/f/n;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v9, p0

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()F

    move-result v10

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v11

    iget-object v0, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v12

    iget-object v0, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v13

    iget-object v0, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v14

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v15

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v16

    const/16 v17, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v0, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0, v8}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb/a/a/a/e/b/j;

    invoke-virtual {v9, v7}, Lb/a/a/a/f/c;->b(Lb/a/a/a/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move/from16 v18, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v7}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/b/e;)V

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v7}, Lb/a/a/a/e/b/e;->q0()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-interface {v7, v6}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v0

    iget-object v1, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float v0, v0, v13

    mul-float v0, v0, v11

    int-to-float v1, v6

    mul-float v1, v1, v12

    mul-float v1, v1, v10

    iget-object v2, v9, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v14, v0, v1, v15}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    invoke-interface {v7}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    iget v5, v15, Lb/a/a/a/g/e;->c:F

    iget v0, v15, Lb/a/a/a/g/e;->d:F

    sub-float v18, v0, v16

    invoke-interface {v7, v6}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v20, v5

    move v5, v8

    move/from16 v21, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    add-int/lit8 v6, v21, 0x1

    move/from16 v8, v18

    move-object/from16 v7, v20

    goto :goto_1

    :goto_2
    add-int/lit8 v8, v18, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {v14}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    invoke-static {v15}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v1

    iget-object v2, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v3

    iget-object v4, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v4

    iget-object v5, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getSkipWebLineCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/h;->e()Lb/a/a/a/e/b/e;

    move-result-object v6

    check-cast v6, Lb/a/a/a/e/b/j;

    invoke-interface {v6}, Lb/a/a/a/e/b/e;->q0()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v7}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    iget-object v11, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v11

    mul-float v11, v11, v2

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    invoke-static {v4, v11, v12, v8}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    iget v14, v4, Lb/a/a/a/g/e;->c:F

    iget v15, v4, Lb/a/a/a/g/e;->d:F

    iget v11, v8, Lb/a/a/a/g/e;->c:F

    iget v12, v8, Lb/a/a/a/g/e;->d:F

    iget-object v13, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v5

    goto :goto_0

    :cond_0
    invoke-static {v8}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    iget-object v5, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidthInner()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColorInner()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v5

    iget v5, v5, Lcom/github/mikephil/charting/components/a;->n:I

    invoke-static {v7, v7}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v6

    invoke-static {v7, v7}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/h;->d()I

    move-result v11

    if-ge v10, v11, :cond_1

    iget-object v11, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v11

    iget-object v11, v11, Lcom/github/mikephil/charting/components/a;->l:[F

    aget v11, v11, v8

    iget-object v12, v0, Lb/a/a/a/f/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v2

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    invoke-static {v4, v11, v12, v6}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    add-int/lit8 v10, v10, 0x1

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    invoke-static {v4, v11, v12, v7}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    iget v14, v6, Lb/a/a/a/g/e;->c:F

    iget v15, v6, Lb/a/a/a/g/e;->d:F

    iget v11, v7, Lb/a/a/a/g/e;->c:F

    iget v12, v7, Lb/a/a/a/g/e;->d:F

    iget-object v13, v0, Lb/a/a/a/f/n;->i:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    invoke-static {v7}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    return-void
.end method
