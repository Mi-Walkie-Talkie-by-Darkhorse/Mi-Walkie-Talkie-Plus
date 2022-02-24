.class public Lb/a/a/a/d/b;
.super Ljava/lang/Object;
.source "ChartHighlighter.java"

# interfaces
.implements Lb/a/a/a/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb/a/a/a/e/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/a/a/d/f;"
    }
.end annotation


# instance fields
.field protected a:Lb/a/a/a/e/a/b;
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
.method public constructor <init>(Lb/a/a/a/e/a/b;)V
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

    iput-object v0, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    return-void
.end method


# virtual methods
.method protected a(FFFF)F
    .locals 2

    sub-float/2addr p1, p3

    float-to-double v0, p1

    sub-float/2addr p2, p4

    float-to-double p1, p2

    .line 35
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method protected a(Lb/a/a/a/d/d;)F
    .locals 0

    .line 15
    invoke-virtual {p1}, Lb/a/a/a/d/d;->j()F

    move-result p1

    return p1
.end method

.method protected a(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")F"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/d/d;

    .line 13
    invoke-virtual {v2}, Lb/a/a/a/d/d;->a()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    if-ne v3, p3, :cond_0

    .line 14
    invoke-virtual {p0, v2}, Lb/a/a/a/d/b;->a(Lb/a/a/a/d/d;)F

    move-result v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(FF)Lb/a/a/a/d/d;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/d/b;->b(FF)Lb/a/a/a/g/d;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Lb/a/a/a/g/d;->c:D

    double-to-float v1, v1

    .line 3
    invoke-static {v0}, Lb/a/a/a/g/d;->a(Lb/a/a/a/g/d;)V

    .line 4
    invoke-virtual {p0, v1, p1, p2}, Lb/a/a/a/d/b;->a(FFF)Lb/a/a/a/d/d;

    move-result-object p1

    return-object p1
.end method

.method protected a(FFF)Lb/a/a/a/d/d;
    .locals 6

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/a/d/b;->b(FFF)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1, p3, p1}, Lb/a/a/a/d/b;->a(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result p1

    .line 8
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1, p3, v0}, Lb/a/a/a/d/b;->a(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 9
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    :goto_0
    move-object v4, p1

    .line 10
    iget-object p1, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    invoke-interface {p1}, Lb/a/a/a/e/a/e;->getMaxHighlightDistance()F

    move-result v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lb/a/a/a/d/b;->a(Ljava/util/List;FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;F)Lb/a/a/a/d/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;F)Lb/a/a/a/d/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;FF",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            "F)",
            "Lb/a/a/a/d/d;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/d/d;

    if-eqz p4, :cond_0

    .line 33
    invoke-virtual {v2}, Lb/a/a/a/d/d;->a()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    if-ne v3, p4, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v2}, Lb/a/a/a/d/d;->h()F

    move-result v3

    invoke-virtual {v2}, Lb/a/a/a/d/d;->j()F

    move-result v4

    invoke-virtual {p0, p2, p3, v3, v4}, Lb/a/a/a/d/b;->a(FFFF)F

    move-result v3

    cmpg-float v4, v3, p5

    if-gez v4, :cond_1

    move-object v0, v2

    move p5, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected a()Lcom/github/mikephil/charting/data/b;
    .locals 1

    .line 36
    iget-object v0, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    invoke-interface {v0}, Lb/a/a/a/e/a/b;->getData()Lcom/github/mikephil/charting/data/b;

    move-result-object v0

    return-object v0
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

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1, p3}, Lb/a/a/a/e/b/e;->a(F)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 19
    invoke-interface {p1, p3, v2, p4}, Lb/a/a/a/e/b/e;->a(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 20
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result p3

    invoke-interface {p1, p3}, Lb/a/a/a/e/b/e;->a(F)Ljava/util/List;

    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    .line 22
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

    .line 23
    iget-object v1, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    .line 24
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v1

    .line 26
    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lb/a/a/a/g/g;->a(FF)Lb/a/a/a/g/d;

    move-result-object v1

    .line 27
    new-instance v9, Lb/a/a/a/d/d;

    .line 28
    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    invoke-virtual {p4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v4

    iget-wide v5, v1, Lb/a/a/a/g/d;->c:D

    double-to-float v5, v5

    iget-wide v1, v1, Lb/a/a/a/g/d;->d:D

    double-to-float v6, v1

    .line 29
    invoke-interface {p1}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    move-object v2, v9

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lb/a/a/a/d/d;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 30
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected b(FF)Lb/a/a/a/g/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/d/b;->a:Lb/a/a/a/e/a/b;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/g/g;->b(FF)Lb/a/a/a/g/d;

    move-result-object p1

    return-object p1
.end method

.method protected b(FFF)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List<",
            "Lb/a/a/a/d/d;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Lb/a/a/a/d/b;->a()Lcom/github/mikephil/charting/data/b;

    move-result-object p2

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_2

    .line 6
    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    sget-object v3, Lcom/github/mikephil/charting/data/DataSet$Rounding;->c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v1, p3, p1, v3}, Lb/a/a/a/d/b;->a(Lb/a/a/a/e/b/e;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lb/a/a/a/d/b;->b:Ljava/util/List;

    return-object p1
.end method
