.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "BarChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/a;",
        ">;",
        "Lcom/github/mikephil/charting/e/a/a;"
    }
.end annotation


# instance fields
.field protected a:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ac:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ae:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ac:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ae:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ac:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ad:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ae:Z

    return-void
.end method


# virtual methods
.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    if-nez v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getHighlighter()Lcom/github/mikephil/charting/d/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/d/f;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->e()Z

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

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a()V

    new-instance v0, Lcom/github/mikephil/charting/f/b;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->T:Lcom/github/mikephil/charting/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarChart;->S:Lcom/github/mikephil/charting/g/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/f/b;-><init>(Lcom/github/mikephil/charting/e/a/a;Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->Q:Lcom/github/mikephil/charting/f/g;

    new-instance v0, Lcom/github/mikephil/charting/d/a;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/d/a;-><init>(Lcom/github/mikephil/charting/e/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlighter(Lcom/github/mikephil/charting/d/b;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->d(F)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->e(F)V

    return-void
.end method

.method protected b()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ae:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->a()F

    move-result v0

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->h()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->a()F

    move-result v0

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->a(FF)V

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->o:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/a;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/a;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->p:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/a;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/a;->b(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->a(FF)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarChart;->J:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/a;->h()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->a(FF)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ac:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->ad:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    return v0
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->E:Lcom/github/mikephil/charting/data/h;

    check-cast v0, Lcom/github/mikephil/charting/data/a;

    return-object v0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ad:Z

    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ac:Z

    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->ae:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->a:Z

    return-void
.end method
