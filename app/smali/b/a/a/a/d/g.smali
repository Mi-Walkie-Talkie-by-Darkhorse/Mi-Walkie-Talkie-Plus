.class public Lb/a/a/a/d/g;
.super Lb/a/a/a/d/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/d/h<",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/a/d/h;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    return-void
.end method


# virtual methods
.method protected a(IFF)Lb/a/a/a/d/d;
    .locals 10

    iget-object v0, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/m;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/m;->k()Lb/a/a/a/e/b/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    new-instance v9, Lb/a/a/a/d/d;

    int-to-float v3, p1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v4

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, v9

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lb/a/a/a/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    return-object v9
.end method
