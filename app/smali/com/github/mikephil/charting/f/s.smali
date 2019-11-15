.class public Lcom/github/mikephil/charting/f/s;
.super Lcom/github/mikephil/charting/f/q;
.source "XAxisRendererRadarChart.java"


# instance fields
.field private n:Lcom/github/mikephil/charting/charts/RadarChart;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/mikephil/charting/f/q;-><init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/g/g;)V

    iput-object p3, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->z()F

    move-result v6

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v5

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->u()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v8

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v9

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v10

    invoke-static {v2, v2}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v11

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/j;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/j;->s()I

    move-result v0

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->p()Lcom/github/mikephil/charting/c/d;

    move-result-object v0

    int-to-float v1, v7

    iget-object v2, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v0, v1, v2}, Lcom/github/mikephil/charting/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v7

    mul-float/2addr v0, v8

    iget-object v1, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/f/s;->n:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v1

    mul-float/2addr v1, v9

    iget-object v3, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->D:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    add-float/2addr v1, v3

    invoke-static {v10, v1, v0, v11}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget v3, v11, Lcom/github/mikephil/charting/g/e;->a:F

    iget v0, v11, Lcom/github/mikephil/charting/g/e;->b:F

    iget-object v1, p0, Lcom/github/mikephil/charting/f/s;->g:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->E:I

    int-to-float v1, v1

    div-float/2addr v1, v12

    sub-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/f/s;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/g/e;F)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v11}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    invoke-static {v5}, Lcom/github/mikephil/charting/g/e;->a(Lcom/github/mikephil/charting/g/e;)V

    goto/16 :goto_0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
