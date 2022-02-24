.class public Lb/a/a/a/c/b;
.super Ljava/lang/Object;
.source "DefaultFillFormatter.java"

# interfaces
.implements Lb/a/a/a/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/e/b/f;Lb/a/a/a/e/a/g;)F
    .locals 4

    .line 1
    invoke-interface {p2}, Lb/a/a/a/e/a/e;->getYChartMax()F

    move-result v0

    .line 2
    invoke-interface {p2}, Lb/a/a/a/e/a/e;->getYChartMin()F

    move-result v1

    .line 3
    invoke-interface {p2}, Lb/a/a/a/e/a/g;->getLineData()Lcom/github/mikephil/charting/data/j;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->l()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/h;->h()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v0, 0x0

    .line 6
    :cond_1
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/h;->i()F

    move-result p2

    cmpg-float p2, p2, v3

    if-gez p2, :cond_2

    const/4 v1, 0x0

    .line 7
    :cond_2
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->x()F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    return v3
.end method
