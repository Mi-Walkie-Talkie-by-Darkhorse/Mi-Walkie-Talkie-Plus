.class public Lb/a/a/a/d/i;
.super Lb/a/a/a/d/h;
.source "RadarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/d/h<",
        "Lcom/github/mikephil/charting/charts/RadarChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/a/d/h;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    return-void
.end method


# virtual methods
.method protected a(IFF)Lb/a/a/a/d/d;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/a/d/i;->a(I)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c(FF)F

    move-result p2

    iget-object p3, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast p3, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {p3}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result p3

    div-float/2addr p2, p3

    const/4 p3, 0x0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/d/d;

    .line 5
    invoke-virtual {v2}, Lb/a/a/a/d/d;->i()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    move-object p3, v2

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method protected a(I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 6
    iget-object v2, v0, Lb/a/a/a/d/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 7
    iget-object v2, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lb/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/a/a;->a()F

    move-result v2

    .line 8
    iget-object v3, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v3, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lb/a/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/a/a/a/a;->b()F

    move-result v3

    .line 9
    iget-object v4, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v4, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v4

    .line 10
    iget-object v5, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v5, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v5

    const/4 v6, 0x0

    .line 11
    invoke-static {v6, v6}, Lb/a/a/a/g/e;->a(FF)Lb/a/a/a/g/e;

    move-result-object v6

    const/4 v7, 0x0

    .line 12
    :goto_0
    iget-object v8, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v8, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 13
    iget-object v8, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v8, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/n;

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v8

    .line 14
    invoke-interface {v8, v1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 15
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v10

    iget-object v11, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v11, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v11

    sub-float/2addr v10, v11

    .line 16
    iget-object v11, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v11, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 17
    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lb/a/a/a/g/e;

    move-result-object v11

    mul-float v10, v10, v5

    mul-float v10, v10, v3

    int-to-float v12, v1

    mul-float v13, v4, v12

    mul-float v13, v13, v2

    iget-object v14, v0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v14, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 18
    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v14

    add-float/2addr v13, v14

    .line 19
    invoke-static {v11, v10, v13, v6}, Lb/a/a/a/g/i;->a(Lb/a/a/a/g/e;FFLb/a/a/a/g/e;)V

    .line 20
    iget-object v15, v0, Lb/a/a/a/d/h;->b:Ljava/util/List;

    new-instance v14, Lb/a/a/a/d/d;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v10

    iget v11, v6, Lb/a/a/a/g/e;->c:F

    iget v13, v6, Lb/a/a/a/g/e;->d:F

    invoke-interface {v8}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v16

    move-object v8, v14

    move v9, v12

    move v12, v13

    move v13, v7

    move-object v1, v14

    move-object/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lb/a/a/a/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lb/a/a/a/d/h;->b:Ljava/util/List;

    return-object v1
.end method
