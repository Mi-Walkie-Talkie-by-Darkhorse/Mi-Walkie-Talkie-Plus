.class public Lb/a/a/a/d/e;
.super Lb/a/a/a/d/a;
.source "HorizontalBarHighlighter.java"


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/a/d/a;-><init>(Lb/a/a/a/e/a/a;)V

    return-void
.end method


# virtual methods
.method protected a(FFFF)F
    .locals 0

    sub-float/2addr p2, p4

    .line 23
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public a(FF)Lb/a/a/a/d/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    check-cast v0, Lb/a/a/a/e/a/a;

    invoke-interface {v0}, Lb/a/a/a/e/a/a;->getBarData()Lcom/github/mikephil/charting/data/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2, p1}, Lb/a/a/a/d/b;->b(FF)Lb/a/a/a/g/d;

    move-result-object v1

    .line 3
    iget-wide v2, v1, Lb/a/a/a/g/d;->d:D

    double-to-float v2, v2

    invoke-virtual {p0, v2, p2, p1}, Lb/a/a/a/d/b;->a(FFF)Lb/a/a/a/d/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lb/a/a/a/d/d;->c()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object p2

    check-cast p2, Lb/a/a/a/e/b/a;

    .line 5
    invoke-interface {p2}, Lb/a/a/a/e/b/a;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, v1, Lb/a/a/a/g/d;->d:D

    double-to-float v0, v2

    iget-wide v1, v1, Lb/a/a/a/g/d;->c:D

    double-to-float v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lb/a/a/a/d/a;->a(Lb/a/a/a/d/d;Lb/a/a/a/e/b/a;FF)Lb/a/a/a/d/d;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {v1}, Lb/a/a/a/g/d;->a(Lb/a/a/a/g/d;)V

    return-object p1
.end method

.method protected a(Lb/a/a/a/e/b/e;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/e/b/e;",
            "IF",
            "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
            ")",
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1, p3}, Lb/a/a/a/e/b/e;->a(F)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 11
    invoke-interface {p1, p3, v2, p4}, Lb/a/a/a/e/b/e;->a(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result p3

    invoke-interface {p1, p3}, Lb/a/a/a/e/b/e;->a(F)Ljava/util/List;

    move-result-object v1

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    .line 14
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/mikephil/charting/data/Entry;

    .line 15
    iget-object v1, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    check-cast v1, Lb/a/a/a/e/a/a;

    .line 16
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v1

    .line 18
    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v2

    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lb/a/a/a/g/g;->a(FF)Lb/a/a/a/g/d;

    move-result-object v1

    .line 19
    new-instance v9, Lb/a/a/a/d/d;

    .line 20
    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v4

    iget-wide v5, v1, Lb/a/a/a/g/d;->c:D

    double-to-float v5, v5

    iget-wide v1, v1, Lb/a/a/a/g/d;->d:D

    double-to-float v6, v1

    .line 21
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    move-object v2, v9

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lb/a/a/a/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 22
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
