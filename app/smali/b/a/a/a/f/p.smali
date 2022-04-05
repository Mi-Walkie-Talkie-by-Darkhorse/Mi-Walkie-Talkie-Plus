.class public Lb/a/a/a/f/p;
.super Lb/a/a/a/f/l;


# instance fields
.field protected h:Lb/a/a/a/e/a/h;

.field i:[F


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/h;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/l;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lb/a/a/a/f/p;->i:[F

    iput-object p1, p0, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v0}, Lb/a/a/a/e/a/h;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/b/k;

    invoke-interface {v1}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lb/a/a/a/f/p;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/k;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/k;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v9, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v1, v0, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v10

    iget-object v1, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v1}, Lb/a/a/a/a/a;->b()F

    move-result v11

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/k;->d0()Lb/a/a/a/f/w/a;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v1, "MISSING"

    const-string v2, "There\'s no IShapeRenderer specified for ScatterDataSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v2}, Lb/a/a/a/a/a;->a()F

    move-result v2

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result v3

    int-to-float v3, v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_4

    invoke-interface {v8, v15}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    iget-object v2, v0, Lb/a/a/a/f/p;->i:[F

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    aput v3, v2, v14

    iget-object v2, v0, Lb/a/a/a/f/p;->i:[F

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v1

    mul-float v1, v1, v11

    const/4 v3, 0x1

    aput v1, v2, v3

    iget-object v1, v0, Lb/a/a/a/f/p;->i:[F

    invoke-virtual {v10, v1}, Lb/a/a/a/g/g;->b([F)V

    iget-object v1, v0, Lb/a/a/a/f/p;->i:[F

    aget v1, v1, v14

    invoke-virtual {v9, v1}, Lb/a/a/a/g/j;->c(F)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lb/a/a/a/f/p;->i:[F

    aget v1, v1, v14

    invoke-virtual {v9, v1}, Lb/a/a/a/g/j;->b(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lb/a/a/a/f/p;->i:[F

    aget v1, v1, v3

    invoke-virtual {v9, v1}, Lb/a/a/a/g/j;->f(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    div-int/lit8 v2, v15, 0x2

    invoke-interface {v8, v2}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    iget-object v1, v0, Lb/a/a/a/f/p;->i:[F

    aget v5, v1, v14

    aget v6, v1, v3

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v1 .. v7}, Lb/a/a/a/f/w/a;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/k;Lb/a/a/a/g/j;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 9

    iget-object v0, p0, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v0}, Lb/a/a/a/e/a/h;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lb/a/a/a/d/d;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v4

    check-cast v4, Lb/a/a/a/e/b/k;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lb/a/a/a/d/d;->g()F

    move-result v5

    invoke-virtual {v3}, Lb/a/a/a/d/d;->i()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lb/a/a/a/e/b/e;->a(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lb/a/a/a/f/c;->a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v4}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v5

    iget-object v8, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v8}, Lb/a/a/a/a/a;->b()F

    move-result v8

    mul-float v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lb/a/a/a/g/g;->a(FF)Lb/a/a/a/g/d;

    move-result-object v5

    iget-wide v6, v5, Lb/a/a/a/g/d;->c:D

    double-to-float v6, v6

    iget-wide v7, v5, Lb/a/a/a/g/d;->d:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lb/a/a/a/d/d;->a(FF)V

    iget-wide v6, v5, Lb/a/a/a/g/d;->c:D

    double-to-float v3, v6

    iget-wide v5, v5, Lb/a/a/a/g/d;->d:D

    double-to-float v5, v5

    invoke-virtual {p0, p1, v3, v5, v4}, Lb/a/a/a/f/l;->a(Landroid/graphics/Canvas;FFLb/a/a/a/e/b/h;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-virtual {v9, v0}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/a/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v0}, Lb/a/a/a/e/a/h;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v0, v9, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v0}, Lb/a/a/a/e/a/h;->getScatterData()Lcom/github/mikephil/charting/data/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->b()I

    move-result v0

    if-ge v12, v0, :cond_5

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lb/a/a/a/e/b/k;

    invoke-virtual {v9, v13}, Lb/a/a/a/f/c;->b(Lb/a/a/a/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v9, v13}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/b/e;)V

    iget-object v0, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v1, v9, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-virtual {v0, v1, v13}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    iget-object v0, v9, Lb/a/a/a/f/p;->h:Lb/a/a/a/e/a/h;

    invoke-interface {v13}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v1

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()F

    move-result v3

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v4

    iget-object v0, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v5, v0, Lb/a/a/a/f/c$a;->a:I

    iget v6, v0, Lb/a/a/a/f/c$a;->b:I

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Lb/a/a/a/g/g;->a(Lb/a/a/a/e/b/k;FFII)[F

    move-result-object v14

    invoke-interface {v13}, Lb/a/a/a/e/b/k;->U()F

    move-result v0

    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v15

    const/4 v8, 0x0

    :goto_1
    array-length v0, v14

    if-ge v8, v0, :cond_4

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    aget v1, v14, v8

    invoke-virtual {v0, v1}, Lb/a/a/a/g/j;->c(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    aget v1, v14, v8

    invoke-virtual {v0, v1}, Lb/a/a/a/g/j;->b(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    add-int/lit8 v1, v8, 0x1

    aget v2, v14, v1

    invoke-virtual {v0, v2}, Lb/a/a/a/g/j;->f(F)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    div-int/lit8 v0, v8, 0x2

    iget-object v2, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v2, v0

    invoke-interface {v13, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    invoke-interface {v13}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/e;->b()F

    move-result v3

    aget v6, v14, v8

    aget v1, v14, v1

    sub-float v7, v1, v15

    iget-object v1, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v1, v1, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v0, v1

    invoke-interface {v13, v0}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lb/a/a/a/f/g;->a(Landroid/graphics/Canvas;Lb/a/a/a/c/f;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v17, v8

    :goto_3
    add-int/lit8 v8, v17, 0x2

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
