.class public Lcom/github/mikephil/charting/d/b;
.super Ljava/lang/Object;
.source "ChartHighlighter.java"

# interfaces
.implements Lcom/github/mikephil/charting/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/mikephil/charting/e/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/d/f;"
    }
.end annotation


# instance fields
.field protected a:Lcom/github/mikephil/charting/e/a/b;
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
.method public constructor <init>(Lcom/github/mikephil/charting/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/d/b;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/github/mikephil/charting/d/b;->a:Lcom/github/mikephil/charting/e/a/b;

    return-void
.end method


# virtual methods
.method protected a(FFFF)F
    .locals 4

    sub-float v0, p1, p3

    float-to-double v0, v0

    sub-float v2, p2, p4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected a(Lcom/github/mikephil/charting/d/d;)F
    .locals 1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/d/d;->d()F

    move-result v0

    return v0
.end method

.method protected a(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")F"
        }
    .end annotation

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/d/d;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/d/d;->h()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    if-ne v3, p3, :cond_0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/d/b;->a(Lcom/github/mikephil/charting/d/d;)F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a(FF)Lcom/github/mikephil/charting/d/d;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/d/b;->b(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    iget-wide v2, v0, Lcom/github/mikephil/charting/g/d;->a:D

    double-to-float v1, v2

    invoke-static {v0}, Lcom/github/mikephil/charting/g/d;->a(Lcom/github/mikephil/charting/g/d;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/github/mikephil/charting/d/b;->a(FFF)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(FFF)Lcom/github/mikephil/charting/d/d;
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mikephil/charting/d/b;->b(FFF)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1, p3, v0}, Lcom/github/mikephil/charting/d/b;->a(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1, p3, v2}, Lcom/github/mikephil/charting/d/b;->a(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/d/b;->a:Lcom/github/mikephil/charting/e/a/b;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/b;->getMaxHighlightDistance()F

    move-result v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/d/b;->a(Ljava/util/List;FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;F)Lcom/github/mikephil/charting/d/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->b:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    goto :goto_1
.end method

.method public a(Ljava/util/List;FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;F)Lcom/github/mikephil/charting/d/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;FF",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            "F)",
            "Lcom/github/mikephil/charting/d/d;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v4, v0

    move v1, p5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/d/d;

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/d/d;->h()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    if-ne v2, p4, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/d/d;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/github/mikephil/charting/d/d;->d()F

    move-result v5

    invoke-virtual {p0, p2, p3, v2, v5}, Lcom/github/mikephil/charting/d/b;->a(FFFF)F

    move-result v2

    cmpg-float v5, v2, v1

    if-gez v5, :cond_2

    move-object v1, v0

    move v0, v2

    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    move v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method protected a()Lcom/github/mikephil/charting/data/b;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/d/b;->a:Lcom/github/mikephil/charting/e/a/b;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/a/b;->getData()Lcom/github/mikephil/charting/data/b;

    move-result-object v0

    return-object v0
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

    iget-object v2, p0, Lcom/github/mikephil/charting/d/b;->a:Lcom/github/mikephil/charting/e/a/b;

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->q()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->h()F

    move-result v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->b()F

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

.method protected b(FF)Lcom/github/mikephil/charting/g/d;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/d/b;->a:Lcom/github/mikephil/charting/e/a/b;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->a:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/g/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/g/g;->a(FF)Lcom/github/mikephil/charting/g/d;

    move-result-object v0

    return-object v0
.end method

.method protected b(FFF)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/d/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/d/b;->a()Lcom/github/mikephil/charting/data/b;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/d/b;->b:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/b;->d()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/b;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/mikephil/charting/e/b/e;->f()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/d/b;->b:Ljava/util/List;

    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->c:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v3, v0, p1, v5}, Lcom/github/mikephil/charting/d/b;->a(Lcom/github/mikephil/charting/e/b/e;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/d/b;->b:Ljava/util/List;

    goto :goto_0
.end method
