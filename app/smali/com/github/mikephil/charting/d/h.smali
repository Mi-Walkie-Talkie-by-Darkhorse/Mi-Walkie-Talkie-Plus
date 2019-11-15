.class public abstract Lcom/github/mikephil/charting/d/h;
.super Ljava/lang/Object;
.source "PieRadarHighlighter.java"

# interfaces
.implements Lcom/github/mikephil/charting/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/d/f;"
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
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/d/h;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    return-void
.end method


# virtual methods
.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d(FF)F

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b(FF)F

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    instance-of v2, v2, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getAnimator()Lcom/github/mikephil/charting/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/a/a;->a()F

    move-result v2

    div-float/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(F)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/d/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getData()Lcom/github/mikephil/charting/data/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/h;->k()Lcom/github/mikephil/charting/e/b/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/mikephil/charting/e/b/e;->s()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/github/mikephil/charting/d/h;->a(IFF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(IFF)Lcom/github/mikephil/charting/d/d;
.end method
