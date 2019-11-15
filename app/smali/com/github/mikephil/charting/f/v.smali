.class public Lcom/github/mikephil/charting/f/v;
.super Lcom/github/mikephil/charting/f/t;
.source "YAxisRendererRadarChart.java"


# instance fields
.field private r:Lcom/github/mikephil/charting/charts/RadarChart;

.field private s:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/mikephil/charting/f/t;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/g/g;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/v;->s:Landroid/graphics/Path;

    iput-object p3, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 12

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->j()I

    move-result v3

    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-lez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/github/mikephil/charting/components/a;->b:[F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/github/mikephil/charting/components/a;->c:[F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/github/mikephil/charting/components/a;->d:I

    :goto_0
    return-void

    :cond_1
    int-to-double v0, v3

    div-double v0, v4, v0

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/i;->a(D)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->l()F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->l()F

    move-result v0

    float-to-double v0, v0

    :cond_2
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    double-to-int v2, v8

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/g/i;->a(D)F

    move-result v2

    float-to-double v6, v2

    div-double v8, v0, v6

    double-to-int v2, v8

    const/4 v8, 0x5

    if-le v2, v8, :cond_3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/a;->c()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/a;->i()Z

    move-result v6

    if-eqz v6, :cond_8

    double-to-float v2, v4

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    div-float v4, v2, v4

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iput v3, v2, Lcom/github/mikephil/charting/components/a;->d:I

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/a;->b:[F

    array-length v2, v2

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    new-array v5, v3, [F

    iput-object v5, v2, Lcom/github/mikephil/charting/components/a;->b:[F

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_6

    iget-object v5, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/a;->b:[F

    aput p1, v5, v2

    add-float/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_f

    iget-object v3, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v3, Lcom/github/mikephil/charting/components/a;->e:I

    :goto_4
    if-eqz v9, :cond_10

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v0, v0, Lcom/github/mikephil/charting/components/a;->c:[F

    array-length v0, v0

    if-ge v0, v2, :cond_7

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/github/mikephil/charting/components/a;->c:[F

    :cond_7
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v0, v0, Lcom/github/mikephil/charting/components/a;->b:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/a;->b:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_10

    iget-object v3, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/a;->c:[F

    iget-object v4, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/a;->b:[F

    aget v4, v4, v0

    add-float/2addr v4, v1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_a

    const-wide/16 v6, 0x0

    :goto_6
    if-eqz v9, :cond_9

    sub-double/2addr v6, v0

    :cond_9
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_b

    const-wide/16 v4, 0x0

    move-wide v10, v4

    :goto_7
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-eqz v3, :cond_c

    move-wide v4, v6

    :goto_8
    cmpg-double v3, v4, v10

    if-gtz v3, :cond_c

    add-int/lit8 v8, v2, 0x1

    add-double v2, v4, v0

    move-wide v4, v2

    move v2, v8

    goto :goto_8

    :cond_a
    float-to-double v4, p1

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double v6, v4, v0

    goto :goto_6

    :cond_b
    float-to-double v4, p2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Lcom/github/mikephil/charting/g/i;->b(D)D

    move-result-wide v4

    move-wide v10, v4

    goto :goto_7

    :cond_c
    add-int/lit8 v4, v2, 0x1

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iput v4, v2, Lcom/github/mikephil/charting/components/a;->d:I

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/a;->b:[F

    array-length v2, v2

    if-ge v2, v4, :cond_d

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    new-array v3, v4, [F

    iput-object v3, v2, Lcom/github/mikephil/charting/components/a;->b:[F

    :cond_d
    const/4 v2, 0x0

    move v5, v2

    move-wide v2, v6

    :goto_9
    if-ge v5, v4, :cond_11

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_e

    const-wide/16 v2, 0x0

    :cond_e
    iget-object v6, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v6, v6, Lcom/github/mikephil/charting/components/a;->b:[F

    double-to-float v7, v2

    aput v7, v6, v5

    add-double v6, v2, v0

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v2, v6

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/github/mikephil/charting/components/a;->e:I

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/a;->b:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    iput v1, v0, Lcom/github/mikephil/charting/components/a;->t:F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/a;->b:[F

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/github/mikephil/charting/components/a;->s:F

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget v1, v1, Lcom/github/mikephil/charting/components/a;->s:F

    iget-object v2, p0, Lcom/github/mikephil/charting/f/v;->a:Lcom/github/mikephil/charting/components/a;

    iget v2, v2, Lcom/github/mikephil/charting/components/a;->t:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/a;->u:F

    goto/16 :goto_0

    :cond_11
    move v2, v4

    goto/16 :goto_3
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->u()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v1

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v0, Lcom/github/mikephil/charting/components/YAxis;->d:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_3

    iget-object v5, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->C()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v2}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/YAxis;->b:[F

    aget v5, v5, v0

    iget-object v6, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    iget v6, v6, Lcom/github/mikephil/charting/components/YAxis;->t:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v6

    invoke-static {v1, v5, v6, v2}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget-object v5, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/components/YAxis;->c(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/github/mikephil/charting/g/e;->a:F

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v6, v7

    iget v7, v2, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v8, p0, Lcom/github/mikephil/charting/f/v;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->g:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->m()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v6

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v7

    invoke-static {v1, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v8

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->x()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/f/v;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->c()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/v;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->d()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v3, p0, Lcom/github/mikephil/charting/f/v;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->b()F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/LimitLine;->a()F

    move-result v0

    iget-object v3, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v3

    sub-float/2addr v0, v3

    mul-float v9, v0, v6

    iget-object v10, p0, Lcom/github/mikephil/charting/f/v;->s:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    move v3, v2

    :goto_3
    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v0

    if-ge v3, v0, :cond_3

    int-to-float v0, v3

    mul-float/2addr v0, v5

    iget-object v11, p0, Lcom/github/mikephil/charting/f/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v11

    add-float/2addr v0, v11

    invoke-static {v7, v9, v0, v8}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    if-nez v3, :cond_2

    iget v0, v8, Lcom/github/mikephil/charting/g/e;->a:F

    iget v11, v8, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    iget v0, v8, Lcom/github/mikephil/charting/g/e;->a:F

    iget v11, v8, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/v;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v8}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto/16 :goto_0
.end method
