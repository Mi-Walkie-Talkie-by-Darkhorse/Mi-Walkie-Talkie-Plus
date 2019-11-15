.class public Lcom/github/mikephil/charting/charts/RadarChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source "RadarChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/n;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/github/mikephil/charting/f/v;

.field protected b:Lcom/github/mikephil/charting/f/s;

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Lcom/github/mikephil/charting/components/YAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x7a

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->e:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->f:F

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->g:I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->h:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x7a

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->e:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->f:F

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->g:I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->h:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v1, 0x7a

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->e:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->f:F

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->g:I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->h:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->k:I

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->c(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v3, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected a()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a()V

    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->e:F

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->f:F

    new-instance v0, Lcom/github/mikephil/charting/f/n;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/n;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:Lcom/github/mikephil/charting/f/g;

    new-instance v0, Lcom/github/mikephil/charting/f/v;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    invoke-direct {v0, v1, v2, p0}, Lcom/github/mikephil/charting/f/v;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->a:Lcom/github/mikephil/charting/f/v;

    new-instance v0, Lcom/github/mikephil/charting/f/s;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:Lcom/github/mikephil/charting/g/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {v0, v1, v2, p0}, Lcom/github/mikephil/charting/f/s;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->b:Lcom/github/mikephil/charting/f/s;

    new-instance v0, Lcom/github/mikephil/charting/d/i;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/d/i;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->R:Lcom/github/mikephil/charting/d/f;

    return-void
.end method

.method protected b()V
    .locals 4

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b()V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/n;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/n;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->a(FF)V

    return-void
.end method

.method public getFactor()F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->u:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/g/j;->k()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected getRequiredBaseOffset()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->D:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    goto :goto_0
.end method

.method protected getRequiredLegendOffset()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:Lcom/github/mikephil/charting/f/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/i;->a()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSkipWebLineCount()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->k:I

    return v0
.end method

.method public getSliceAngle()F
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public getWebAlpha()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->i:I

    return v0
.end method

.method public getWebColor()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->g:I

    return v0
.end method

.method public getWebColorInner()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->h:I

    return v0
.end method

.method public getWebLineWidth()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->e:F

    return v0
.end method

.method public getWebLineWidthInner()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->f:F

    return v0
.end method

.method public getYAxis()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method public getYChartMax()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->s:F

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->t:F

    return v0
.end method

.method public getYRange()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->u:F

    return v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->b()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->a:Lcom/github/mikephil/charting/f/v;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->s:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/RadarChart;->l:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->D()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/v;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->b:Lcom/github/mikephil/charting/f/s;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->s:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/s;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:Lcom/github/mikephil/charting/f/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/f/i;->a(Lcom/github/mikephil/charting/data/h;)V

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->j()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->b:Lcom/github/mikephil/charting/f/s;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->s:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/f/s;->a(FFZ)V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->b:Lcom/github/mikephil/charting/f/s;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/s;->a(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->c(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->a:Lcom/github/mikephil/charting/f/v;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/v;->e(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:Lcom/github/mikephil/charting/f/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->U:[Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/f/g;->a(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/d/d;)V

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->a:Lcom/github/mikephil/charting/f/v;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/v;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/g;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:Lcom/github/mikephil/charting/f/i;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/RadarChart;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/RadarChart;->c(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDrawWeb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->j:Z

    return-void
.end method

.method public setSkipWebLineCount(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->k:I

    return-void
.end method

.method public setWebAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->i:I

    return-void
.end method

.method public setWebColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->g:I

    return-void
.end method

.method public setWebColorInner(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->h:I

    return-void
.end method

.method public setWebLineWidth(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->e:F

    return-void
.end method

.method public setWebLineWidthInner(F)V
    .locals 1

    invoke-static {p1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->f:F

    return-void
.end method
