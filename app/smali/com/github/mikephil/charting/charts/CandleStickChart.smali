.class public Lcom/github/mikephil/charting/charts/CandleStickChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CandleStickChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/g;",
        ">;",
        "Lcom/github/mikephil/charting/e/a/d;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    new-instance v0, Lcom/github/mikephil/charting/f/e;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/e;-><init>(Lcom/github/mikephil/charting/e/a/d;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->d(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->e(F)V

    return-void
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/g;

    return-object v0
.end method
