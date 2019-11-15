.class public Lcom/github/mikephil/charting/charts/BubbleChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "BubbleChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/f;",
        ">;",
        "Lcom/github/mikephil/charting/e/a/c;"
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

    new-instance v0, Lcom/github/mikephil/charting/f/d;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/d;-><init>(Lcom/github/mikephil/charting/e/a/c;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->Q:Lcom/github/mikephil/charting/f/g;

    return-void
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BubbleChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/f;

    return-object v0
.end method
