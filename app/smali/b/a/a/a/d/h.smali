.class public abstract Lb/a/a/a/d/h;
.super Ljava/lang/Object;
.source "PieRadarHighlighter.java"

# interfaces
.implements Lb/a/a/a/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/a/a/d/f;"
    }
.end annotation


# instance fields
.field protected a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/d/h;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    return-void
.end method


# virtual methods
.method public a(FF)Lb/a/a/a/d/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c(FF)F

    move-result v0

    .line 2
    iget-object v1, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d(FF)F

    move-result v0

    .line 4
    iget-object v1, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    instance-of v3, v1, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lb/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v1

    div-float/2addr v0, v1

    .line 6
    :cond_1
    iget-object v1, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 7
    iget-object v1, p0, Lb/a/a/a/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/h;->e()Lb/a/a/a/e/b/e;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->q0()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lb/a/a/a/d/h;->a(IFF)Lb/a/a/a/d/d;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method protected abstract a(IFF)Lb/a/a/a/d/d;
.end method
