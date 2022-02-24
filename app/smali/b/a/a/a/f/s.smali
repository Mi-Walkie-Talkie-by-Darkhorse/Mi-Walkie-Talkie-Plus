.class public Lb/a/a/a/f/s;
.super Lb/a/a/a/f/q;
.source "XAxisRendererRadarChart.java"


# instance fields
.field private p:Lcom/github/mikephil/charting/charts/RadarChart;


# direct methods
.method public constructor <init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lb/a/a/a/f/q;-><init>(Lb/a/a/a/g/j;Lcom/github/mikephil/charting/components/XAxis;Lb/a/a/a/g/g;)V

    .line 2
    iput-object p3, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->y()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 3
    invoke-static {v1, v2}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v8

    .line 4
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    iget-object v1, p0, Lb/a/a/a/f/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v1, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    .line 8
    iget-object v1, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v10

    .line 9
    iget-object v1, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v11

    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v1}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v12

    const/4 v1, 0x0

    const/4 v13, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->e()Lb/a/a/a/e/b/e;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/j;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->q0()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 12
    iget-object v1, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/a;->q()Lb/a/a/a/c/d;

    move-result-object v1

    int-to-float v2, v13

    iget-object v3, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v1, v2, v3}, Lb/a/a/a/c/d;->a(FLcom/github/mikephil/charting/components/a;)Ljava/lang/String;

    move-result-object v3

    mul-float v2, v2, v9

    .line 13
    iget-object v1, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v1

    add-float/2addr v2, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v2, v1

    .line 14
    iget-object v1, p0, Lb/a/a/a/f/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v1

    mul-float v1, v1, v10

    iget-object v4, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->K:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-static {v11, v1, v2, v12}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    .line 15
    iget v4, v12, Lb/a/a/a/g/e;->c:F

    iget v1, v12, Lb/a/a/a/g/e;->d:F

    iget-object v2, p0, Lb/a/a/a/f/q;->h:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->L:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float v5, v1, v2

    move-object v1, p0

    move-object v2, p1

    move-object v6, v8

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lb/a/a/a/f/q;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLb/a/a/a/g/e;F)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v11}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    .line 17
    invoke-static {v12}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    .line 18
    invoke-static {v8}, Lb/a/a/a/g/e;->a(Lb/a/a/a/g/e;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
