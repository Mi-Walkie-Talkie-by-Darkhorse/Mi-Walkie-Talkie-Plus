.class public Lcom/github/mikephil/charting/f/n;
.super Lcom/github/mikephil/charting/f/k;
.source "RadarChartRenderer.java"


# instance fields
.field protected a:Lcom/github/mikephil/charting/charts/RadarChart;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Path;

.field protected e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/f/k;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/n;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/n;->e:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/n;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->i:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/mikephil/charting/f/n;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/j;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/e/b/j;I)V
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v3

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v4

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v5

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v6

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v7

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v8

    iget-object v9, p0, Lcom/github/mikephil/charting/f/n;->d:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/e/b/j;->a(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/e/b/j;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/RadarEntry;->b()F

    move-result v0

    iget-object v10, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v10

    sub-float/2addr v0, v10

    mul-float/2addr v0, v6

    mul-float/2addr v0, v4

    int-to-float v10, v1

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v7, v0, v10, v8}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget v0, v8, Lcom/github/mikephil/charting/g/e;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    iget v0, v8, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, v8, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget v0, v8, Lcom/github/mikephil/charting/g/e;->a:F

    iget v10, v8, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v9, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v0

    if-le v0, p3, :cond_3

    iget v0, v7, Lcom/github/mikephil/charting/g/e;->a:F

    iget v1, v7, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->L()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, v9, v0}, Lcom/github/mikephil/charting/f/n;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->N()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->O()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->M()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    invoke-static {v7}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v8}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return-void

    :cond_7
    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->K()I

    move-result v0

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/j;->M()I

    move-result v1

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/github/mikephil/charting/f/n;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/g/e;FFIIF)V
    .locals 7

    const v6, 0x112233

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {p4}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    invoke-static {p3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    if-eq p5, v6, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/n;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget v3, p2, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, p2, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget v3, p2, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, p2, Lcom/github/mikephil/charting/g/e;->b:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    if-eq p6, v6, :cond_2

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    invoke-static {p7}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p2, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, p2, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v3, p0, Lcom/github/mikephil/charting/f/n;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V
    .locals 15

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v11

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v12

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v13

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v3

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/github/mikephil/charting/data/n;

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v14, :cond_3

    aget-object v4, p2, v10

    invoke-virtual {v4}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/github/mikephil/charting/data/n;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/e/b/j;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->f()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/e/b/j;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {p0, v2, v1}, Lcom/github/mikephil/charting/f/n;->a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/e/b/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/RadarEntry;->b()F

    move-result v2

    iget-object v5, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v2, v12

    iget-object v5, p0, Lcom/github/mikephil/charting/f/n;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual {v4}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v5

    mul-float/2addr v5, v11

    iget-object v6, p0, Lcom/github/mikephil/charting/f/n;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v13, v2, v5, v3}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget v2, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget v5, v3, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v4, v2, v5}, Lcom/github/mikephil/charting/d/d;->a(FF)V

    iget v2, v3, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, v3, Lcom/github/mikephil/charting/g/e;->b:F

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/github/mikephil/charting/f/n;->a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/e/b/h;)V

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v3, Lcom/github/mikephil/charting/g/e;->a:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v3, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->t()I

    move-result v2

    const v4, 0x112233

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/e/b/j;->a(I)I

    move-result v2

    :cond_2
    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->y()I

    move-result v4

    const/16 v5, 0xff

    if-ge v4, v5, :cond_4

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->y()I

    move-result v4

    invoke-static {v2, v4}, Lcom/github/mikephil/charting/g/a;->a(II)I

    move-result v7

    :goto_2
    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->z()F

    move-result v4

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->A()F

    move-result v5

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->r()I

    move-result v6

    invoke-interface {v1}, Lcom/github/mikephil/charting/e/b/j;->B()F

    move-result v8

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/github/mikephil/charting/f/n;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/g/e;FFIIF)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v13}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v3}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return-void

    :cond_4
    move v7, v2

    goto :goto_2
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v18

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v19

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/n;->d()I

    move-result v2

    if-ge v7, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/data/n;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/github/mikephil/charting/e/b/j;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/f/n;->a(Lcom/github/mikephil/charting/e/b/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/github/mikephil/charting/f/n;->b(Lcom/github/mikephil/charting/e/b/e;)V

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    invoke-interface {v11}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v2

    if-ge v12, v2, :cond_0

    invoke-interface {v11, v12}, Lcom/github/mikephil/charting/e/b/j;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/RadarEntry;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/RadarEntry;->b()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v16

    mul-float/2addr v2, v14

    int-to-float v3, v12

    mul-float/2addr v3, v15

    mul-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v3, v1}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    invoke-interface {v11}, Lcom/github/mikephil/charting/e/b/j;->g()Lcom/github/mikephil/charting/c/f;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/RadarEntry;->b()F

    move-result v5

    move-object/from16 v0, v18

    iget v8, v0, Lcom/github/mikephil/charting/g/e;->a:F

    move-object/from16 v0, v18

    iget v2, v0, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float v9, v2, v19

    invoke-interface {v11, v12}, Lcom/github/mikephil/charting/e/b/j;->c(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/github/mikephil/charting/f/n;->a(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static/range {v18 .. v18}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/f/n;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 15

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v8

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v9

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v11

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSkipWebLineCount()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v13

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v12, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v0

    mul-float/2addr v0, v9

    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float/2addr v1, v10

    invoke-static {v11, v0, v1, v13}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget v1, v11, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, v11, Lcom/github/mikephil/charting/g/e;->b:F

    iget v3, v13, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, v13, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v5, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v6, v7

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-static {v13}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidthInner()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColorInner()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v12, v0, Lcom/github/mikephil/charting/components/YAxis;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v14

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v12, :cond_2

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->j()I

    move-result v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/YAxis;->b:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/github/mikephil/charting/f/n;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v9

    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float/2addr v1, v10

    invoke-static {v11, v0, v1, v13}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    add-int/lit8 v1, v6, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v10

    invoke-static {v11, v0, v1, v14}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget v1, v13, Lcom/github/mikephil/charting/g/e;->a:F

    iget v2, v13, Lcom/github/mikephil/charting/g/e;->b:F

    iget v3, v14, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, v14, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v5, p0, Lcom/github/mikephil/charting/f/n;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    invoke-static {v13}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v14}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return-void
.end method
