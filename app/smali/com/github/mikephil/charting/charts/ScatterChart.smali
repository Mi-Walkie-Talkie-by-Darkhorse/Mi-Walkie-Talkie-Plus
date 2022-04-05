.class public Lcom/github/mikephil/charting/charts/ScatterChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;

# interfaces
.implements Lb/a/a/a/e/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lcom/github/mikephil/charting/data/o;",
        ">;",
        "Lb/a/a/a/e/a/h;"
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

    new-instance v0, Lb/a/a/a/f/p;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->u:Lb/a/a/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lb/a/a/a/g/j;

    invoke-direct {v0, p0, v1, v2}, Lb/a/a/a/f/p;-><init>(Lb/a/a/a/e/a/h;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->r:Lb/a/a/a/f/g;

    return-void
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/o;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->b:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/o;

    return-object v0
.end method
