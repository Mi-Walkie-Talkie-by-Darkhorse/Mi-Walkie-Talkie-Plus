.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;

# interfaces
.implements Lb/a/a/a/e/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lcom/github/mikephil/charting/data/j;",
        ">;",
        "Lb/a/a/a/e/a/g;"
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
.method protected g()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g()V

    new-instance v0, Lb/a/a/a/f/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->u:Lb/a/a/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lb/a/a/a/g/j;

    invoke-direct {v0, p0, v1, v2}, Lb/a/a/a/f/j;-><init>(Lb/a/a/a/e/a/g;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->r:Lb/a/a/a/f/g;

    return-void
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/j;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->r:Lb/a/a/a/f/g;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/a/a/a/f/j;

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/a/a/f/j;

    invoke-virtual {v0}, Lb/a/a/a/f/j;->b()V

    :cond_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->onDetachedFromWindow()V

    return-void
.end method
