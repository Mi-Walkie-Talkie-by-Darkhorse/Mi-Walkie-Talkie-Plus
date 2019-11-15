.class public Lcom/github/mikephil/charting/d/a;
.super Lcom/github/mikephil/charting/d/b;
.source "BarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/d/b",
        "<",
        "Lcom/github/mikephil/charting/e/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/d/b;-><init>(Lcom/github/mikephil/charting/e/a/b;)V

    return-void
.end method


# virtual methods
.method protected a(FFFF)F
    .locals 1

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected a([Lcom/github/mikephil/charting/d/j;F)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    array-length v4, p1

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Lcom/github/mikephil/charting/d/j;->a(F)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/github/mikephil/charting/d/j;->b:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/d/b;->a(FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/d/a;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v2

    iget-object v0, p0, Lcom/github/mikephil/charting/d/a;->a:Lcom/github/mikephil/charting/e/a/b;

    check-cast v0, Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/a;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v3, v4

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v2, v4

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/github/mikephil/charting/d/a;->a(Lcom/github/mikephil/charting/d/d;Lcom/github/mikephil/charting/e/b/a;FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/github/mikephil/charting/d/d;Lcom/github/mikephil/charting/e/b/a;FF)Lcom/github/mikephil/charting/d/d;
    .locals 9

    const/4 v1, 0x0

    invoke-interface {p2, p3, p4}, Lcom/github/mikephil/charting/e/b/a;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v2, :cond_1

    move-object p1, v1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->a()[F

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->c()[Lcom/github/mikephil/charting/d/j;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p0, v3, p4}, Lcom/github/mikephil/charting/d/a;->a([Lcom/github/mikephil/charting/d/j;F)I

    move-result v6

    iget-object v0, p0, Lcom/github/mikephil/charting/d/a;->a:Lcom/github/mikephil/charting/e/a/b;

    check-cast v0, Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/a;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/a/a;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->a()F

    move-result v1

    aget-object v3, v3, v6

    iget v3, v3, Lcom/github/mikephil/charting/d/j;->b:F

    invoke-virtual {v0, v1, v3}, Lcom/github/mikephil/charting/g/g;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v8

    new-instance v0, Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->h()F

    move-result v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v2

    iget-wide v4, v8, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v3, v4

    iget-wide v4, v8, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v4, v4

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v5

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->h()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/github/mikephil/charting/d/d;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-static {v8}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method protected a()Lcom/github/mikephil/charting/data/b;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/d/a;->a:Lcom/github/mikephil/charting/e/a/b;

    check-cast v0, Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    return-object v0
.end method
