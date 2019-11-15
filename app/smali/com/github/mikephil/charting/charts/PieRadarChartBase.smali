.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "PieRadarChartBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/h",
        "<+",
        "Lcom/github/mikephil/charting/e/b/e",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field protected c:Z

.field protected d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x43870000    # 270.0f

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, 0x43870000    # 270.0f

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/high16 v0, 0x43870000    # 270.0f

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    return-void
.end method


# virtual methods
.method public abstract a(F)I
.end method

.method public a(Lcom/github/mikephil/charting/g/e;FF)Lcom/github/mikephil/charting/g/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    return-object v0
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    new-instance v0, Lcom/github/mikephil/charting/listener/e;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/listener/e;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V
    .locals 6

    iget v0, p1, Lcom/github/mikephil/charting/g/e;->a:F

    float-to-double v0, v0

    float-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p4, Lcom/github/mikephil/charting/g/e;->a:F

    iget v0, p1, Lcom/github/mikephil/charting/g/e;->b:F

    float-to-double v0, v0

    float-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p4, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method public b(FF)F
    .locals 9

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v1

    iget v0, v1, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float v0, p1, v0

    float-to-double v2, v0

    iget v0, v1, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float v0, p2, v0

    float-to-double v4, v0

    mul-double/2addr v2, v2

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, v1, Lcom/github/mikephil/charting/g/e;->a:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    sub-float v0, v8, v0

    :cond_0
    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    cmpl-float v2, v0, v8

    if-lez v2, :cond_1

    sub-float/2addr v0, v8

    :cond_1
    invoke-static {v1}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/e;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/e;->b()V

    :cond_0
    return-void
.end method

.method public d(FF)F
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v2

    iget v0, v2, Lcom/github/mikephil/charting/g/e;->a:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, v2, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float v0, p1, v0

    :goto_0
    iget v1, v2, Lcom/github/mikephil/charting/g/e;->b:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget v1, v2, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float v1, p2, v1

    :goto_1
    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v0, v1

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v2}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    return v0

    :cond_0
    iget v0, v2, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_1
    iget v1, v2, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v1, p2

    goto :goto_1
.end method

.method public getDiameter()F
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraRightOffset()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraBottomOffset()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->j()I

    move-result v0

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    return v0
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    return v0
.end method

.method protected abstract getRequiredBaseOffset()F
.end method

.method protected abstract getRequiredLegendOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    return v0
.end method

.method public getYChartMax()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->P:Lcom/github/mikephil/charting/f/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/f/i;->a(Lcom/github/mikephil/charting/data/h;)V

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->j()V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    return v0
.end method

.method public j()V
    .locals 10

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->g()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->a:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;->c:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->f()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    move v1, v2

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v0, v4

    :goto_2
    iget v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    invoke-static {v4}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v4

    instance-of v5, p0, Lcom/github/mikephil/charting/charts/RadarChart;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v5, v5, Lcom/github/mikephil/charting/components/XAxis;->D:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraTopOffset()F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraRightOffset()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraBottomOffset()F

    move-result v5

    add-float/2addr v0, v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getExtraLeftOffset()F

    move-result v5

    add-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/github/mikephil/charting/g/j;->a(FFFF)V

    iget-boolean v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->D:Z

    if-eqz v4, :cond_2

    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", offsetTop: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offsetRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offsetBottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v1

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->a:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v1

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->c:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v1, v3, :cond_9

    :cond_3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->b:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v1, v3, :cond_4

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    :goto_3
    sget-object v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;->b:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    move v1, v2

    move v3, v0

    move v0, v2

    goto/16 :goto_1

    :cond_4
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->c:F

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getCenter()Lcom/github/mikephil/charting/g/e;

    move-result-object v4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v0

    sget-object v5, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->c:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v0, v5, :cond_5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    :goto_4
    add-float/2addr v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d(FF)F

    move-result v5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v6

    invoke-virtual {p0, v0, v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b(FF)F

    move-result v0

    invoke-virtual {p0, v4, v6, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(Lcom/github/mikephil/charting/g/e;FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v6

    iget v0, v6, Lcom/github/mikephil/charting/g/e;->a:F

    iget v7, v6, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-virtual {p0, v0, v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d(FF)F

    move-result v0

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v7

    iget v8, v4, Lcom/github/mikephil/charting/g/e;->b:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_6

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_6

    move v0, v1

    :goto_5
    invoke-static {v4}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v6}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto :goto_3

    :cond_5
    sub-float v0, v1, v6

    goto :goto_4

    :cond_6
    cmpg-float v1, v5, v0

    if-gez v1, :cond_8

    sub-float/2addr v0, v5

    add-float/2addr v0, v7

    goto :goto_5

    :pswitch_2
    move v1, v0

    move v3, v2

    move v0, v2

    goto/16 :goto_1

    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;->a:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    move v3, v2

    move v9, v0

    move v0, v2

    move v2, v9

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    move v3, v2

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->a:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->c:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    if-ne v0, v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredLegendOffset()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->b:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->q()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase$1;->a:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_7
    move v1, v2

    move v3, v2

    move v9, v0

    move v0, v2

    move v2, v9

    goto/16 :goto_1

    :pswitch_8
    move v1, v2

    move v3, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v2

    move v1, v2

    move v3, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->O:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setMinOffset(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    return-void
.end method

.method public setRotationAngle(F)V
    .locals 1

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->c(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    return-void
.end method
