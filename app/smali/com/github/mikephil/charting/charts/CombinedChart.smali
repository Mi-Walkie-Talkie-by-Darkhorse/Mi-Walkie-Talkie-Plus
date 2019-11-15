.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CombinedChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/i;",
        ">;",
        "Lcom/github/mikephil/charting/e/a/f;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected ac:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field private ad:Z

.field private ae:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ae:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ae:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ae:Z

    return-void
.end method


# virtual methods
.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getHighlighter()Lcom/github/mikephil/charting/d/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/d/f;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v1

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->b()F

    move-result v2

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->c()F

    move-result v3

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->d()F

    move-result v4

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v7}, Lcom/github/mikephil/charting/d/d;->h()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/github/mikephil/charting/d/d;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v1, 0x0

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->a:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->b:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->c:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->d:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->e:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ac:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    new-instance v0, Lcom/github/mikephil/charting/d/c;

    invoke-direct {v0, p0, p0}, Lcom/github/mikephil/charting/d/c;-><init>(Lcom/github/mikephil/charting/e/a/f;Lcom/github/mikephil/charting/e/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcom/github/mikephil/charting/d/b;)V

    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    new-instance v0, Lcom/github/mikephil/charting/f/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/f;-><init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->Q:Lcom/github/mikephil/charting/f/g;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ad:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ae:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    return v0
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->m()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    goto :goto_0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->a()Lcom/github/mikephil/charting/data/f;

    move-result-object v0

    goto :goto_0
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->o()Lcom/github/mikephil/charting/data/g;

    move-result-object v0

    goto :goto_0
.end method

.method public getCombinedData()Lcom/github/mikephil/charting/data/i;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/i;

    return-object v0
.end method

.method public getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ac:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    return-object v0
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->l()Lcom/github/mikephil/charting/data/j;

    move-result-object v0

    goto :goto_0
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/o;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/i;->n()Lcom/github/mikephil/charting/data/o;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic setData(Lcom/github/mikephil/charting/data/h;)V
    .locals 0

    check-cast p1, Lcom/github/mikephil/charting/data/i;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcom/github/mikephil/charting/data/i;)V

    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/i;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/h;)V

    new-instance v0, Lcom/github/mikephil/charting/d/c;

    invoke-direct {v0, p0, p0}, Lcom/github/mikephil/charting/d/c;-><init>(Lcom/github/mikephil/charting/e/a/f;Lcom/github/mikephil/charting/e/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcom/github/mikephil/charting/d/b;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->Q:Lcom/github/mikephil/charting/f/g;

    check-cast v0, Lcom/github/mikephil/charting/f/f;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/f;->b()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->Q:Lcom/github/mikephil/charting/f/g;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/f/g;->a()V

    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ae:Z

    return-void
.end method

.method public setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ac:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    goto :goto_0
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->ad:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->a:Z

    return-void
.end method
