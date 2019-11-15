.class public Lcom/github/mikephil/charting/d/i;
.super Lcom/github/mikephil/charting/d/h;
.source "RadarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/d/h",
        "<",
        "Lcom/github/mikephil/charting/charts/RadarChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/d/h;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    return-void
.end method


# virtual methods
.method protected a(IFF)Lcom/github/mikephil/charting/d/d;
    .locals 9

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/d/i;->a(I)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, p2, p3}, Lcom/github/mikephil/charting/charts/RadarChart;->d(FF)F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v0

    div-float v6, v1, v0

    const/4 v3, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v1

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v7, v1, v2

    if-gez v7, :cond_1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method protected a(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getAnimator()Lcom/github/mikephil/charting/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v7

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getAnimator()Lcom/github/mikephil/charting/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v8

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v10

    invoke-static {v1, v1}, Lcom/github/mikephil/charting/g/e;->a(FF)Lcom/github/mikephil/charting/g/e;

    move-result-object v11

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/n;->d()I

    move-result v0

    if-ge v5, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/n;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/github/mikephil/charting/e/b/e;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/g/e;

    move-result-object v3

    mul-float v0, v1, v10

    mul-float v1, v0, v8

    int-to-float v0, p1

    mul-float/2addr v0, v9

    mul-float v4, v0, v7

    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v0

    add-float/2addr v0, v4

    invoke-static {v3, v1, v0, v11}, Lcom/github/mikephil/charting/g/i;->a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V

    iget-object v12, p0, Lcom/github/mikephil/charting/d/i;->b:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/d/d;

    int-to-float v1, p1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v2

    iget v3, v11, Lcom/github/mikephil/charting/g/e;->a:F

    iget v4, v11, Lcom/github/mikephil/charting/g/e;->b:F

    invoke-interface {v6}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/d/i;->b:Ljava/util/List;

    return-object v0
.end method
