.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "LineChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/j;",
        ">;",
        "Lcom/github/mikephil/charting/e/a/g;"
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
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    new-instance v0, Lcom/github/mikephil/charting/f/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/LineChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/LineChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/j;-><init>(Lcom/github/mikephil/charting/e/a/g;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->Q:Lcom/github/mikephil/charting/f/g;

    return-void
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/j;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->Q:Lcom/github/mikephil/charting/f/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->Q:Lcom/github/mikephil/charting/f/g;

    instance-of v0, v0, Lcom/github/mikephil/charting/f/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/LineChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/j;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/j;->b()V

    :cond_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->onDetachedFromWindow()V

    return-void
.end method
