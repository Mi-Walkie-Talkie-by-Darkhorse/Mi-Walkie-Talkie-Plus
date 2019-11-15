.class public Lcom/github/mikephil/charting/d/e;
.super Lcom/github/mikephil/charting/d/a;
.source "HorizontalBarHighlighter.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/d/a;-><init>(Lcom/github/mikephil/charting/e/a/a;)V

    return-void
.end method


# virtual methods
.method protected a(FFFF)F
    .locals 1

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 6

    iget-object v0, p0, Lcom/github/mikephil/charting/d/e;->a:Lcom/github/mikephil/charting/e/a/b;

    check-cast v0, Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/github/mikephil/charting/d/e;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v2

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v1, v4

    invoke-virtual {p0, v1, p2, p1}, Lcom/github/mikephil/charting/d/e;->a(FFF)Lcom/github/mikephil/charting/d/d;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/github/mikephil/charting/d/d;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/a;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/e/b/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v3, v4

    iget-wide v4, v2, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v2, v4

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/github/mikephil/charting/d/e;->a(Lcom/github/mikephil/charting/d/d;Lcom/github/mikephil/charting/e/b/a;FF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/github/mikephil/charting/e/b/e;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/e/b/e;",
            "IF",
            "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/github/mikephil/charting/e/b/e;->a(F)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, 0x7fc00000    # Float.NaN

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {p1, v0, v3, v1}, Lcom/github/mikephil/charting/e/b/e;->a(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v2

    invoke-interface {p1, v2}, Lcom/github/mikephil/charting/e/b/e;->a(F)Ljava/util/List;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v9

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    iget-object v2, p0, Lcom/github/mikephil/charting/d/e;->a:Lcom/github/mikephil/charting/e/a/b;

    check-cast v2, Lcom/github/mikephil/charting/e/a/a;

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/e/a/a;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/github/mikephil/charting/g/g;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v6

    new-instance v2, Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

    move-result v4

    iget-wide v12, v6, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v5, v12

    iget-wide v6, v6, Lcom/github/mikephil/charting/g/d;->b:D

    double-to-float v6, v6

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    move/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/github/mikephil/charting/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v2, v9

    goto :goto_0
.end method
