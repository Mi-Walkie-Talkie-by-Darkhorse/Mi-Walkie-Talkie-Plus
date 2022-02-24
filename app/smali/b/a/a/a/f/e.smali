.class public Lb/a/a/a/f/e;
.super Lb/a/a/a/f/l;
.source "CandleStickChartRenderer.java"


# instance fields
.field protected h:Lb/a/a/a/e/a/d;

.field private i:[F

.field private j:[F

.field private k:[F

.field private l:[F

.field private m:[F


# direct methods
.method public constructor <init>(Lb/a/a/a/e/a/d;Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lb/a/a/a/f/l;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    .line 2
    iput-object p2, p0, Lb/a/a/a/f/e;->i:[F

    const/4 p2, 0x4

    new-array p3, p2, [F

    .line 3
    iput-object p3, p0, Lb/a/a/a/f/e;->j:[F

    new-array p3, p2, [F

    .line 4
    iput-object p3, p0, Lb/a/a/a/f/e;->k:[F

    new-array p3, p2, [F

    .line 5
    iput-object p3, p0, Lb/a/a/a/f/e;->l:[F

    new-array p2, p2, [F

    .line 6
    iput-object p2, p0, Lb/a/a/a/f/e;->m:[F

    .line 7
    iput-object p1, p0, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface {v0}, Lb/a/a/a/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v0

    .line 2
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

    check-cast v1, Lb/a/a/a/e/b/d;

    .line 3
    invoke-interface {v1}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Lb/a/a/a/f/e;->a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lb/a/a/a/e/b/d;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v3}, Lb/a/a/a/a/a;->b()F

    move-result v3

    .line 7
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->G()F

    move-result v4

    .line 8
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->p0()Z

    move-result v5

    .line 9
    iget-object v6, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v7, v0, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-virtual {v6, v7, v1}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    .line 10
    iget-object v6, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object v6, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v6, v6, Lb/a/a/a/f/c$a;->a:I

    :goto_0
    iget-object v7, v0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v8, v7, Lb/a/a/a/f/c$a;->c:I

    iget v7, v7, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_15

    .line 12
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/CandleEntry;

    if-nez v7, :cond_0

    move-object/from16 v12, p1

    goto/16 :goto_b

    .line 13
    :cond_0
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v8

    .line 14
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->g()F

    move-result v9

    .line 15
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->d()F

    move-result v10

    .line 16
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v11

    .line 17
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/CandleEntry;->f()F

    move-result v7

    const v13, 0x112233

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x1

    if-eqz v5, :cond_f

    .line 18
    iget-object v12, v0, Lb/a/a/a/f/e;->i:[F

    aput v8, v12, v15

    .line 19
    aput v8, v12, v14

    const/16 v19, 0x4

    .line 20
    aput v8, v12, v19

    const/16 v19, 0x6

    .line 21
    aput v8, v12, v19

    const/16 v19, 0x7

    const/16 v20, 0x5

    cmpl-float v21, v9, v10

    if-lez v21, :cond_1

    mul-float v11, v11, v3

    .line 22
    aput v11, v12, v17

    mul-float v11, v9, v3

    .line 23
    aput v11, v12, v16

    mul-float v7, v7, v3

    .line 24
    aput v7, v12, v20

    mul-float v7, v10, v3

    .line 25
    aput v7, v12, v19

    goto :goto_1

    :cond_1
    cmpg-float v22, v9, v10

    if-gez v22, :cond_2

    mul-float v11, v11, v3

    .line 26
    aput v11, v12, v17

    mul-float v11, v10, v3

    .line 27
    aput v11, v12, v16

    mul-float v7, v7, v3

    .line 28
    aput v7, v12, v20

    mul-float v7, v9, v3

    .line 29
    aput v7, v12, v19

    goto :goto_1

    :cond_2
    mul-float v11, v11, v3

    .line 30
    aput v11, v12, v17

    mul-float v11, v9, v3

    .line 31
    aput v11, v12, v16

    mul-float v7, v7, v3

    .line 32
    aput v7, v12, v20

    .line 33
    aget v7, v12, v16

    aput v7, v12, v19

    .line 34
    :goto_1
    iget-object v7, v0, Lb/a/a/a/f/e;->i:[F

    invoke-virtual {v2, v7}, Lb/a/a/a/g/g;->b([F)V

    .line 35
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->X()Z

    move-result v7

    if-eqz v7, :cond_8

    if-lez v21, :cond_4

    .line 36
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    .line 37
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->w0()I

    move-result v11

    if-ne v11, v13, :cond_3

    .line 38
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v11

    goto :goto_2

    .line 39
    :cond_3
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->w0()I

    move-result v11

    .line 40
    :goto_2
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_4
    cmpg-float v7, v9, v10

    if-gez v7, :cond_6

    .line 41
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    .line 42
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m0()I

    move-result v11

    if-ne v11, v13, :cond_5

    .line 43
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v11

    goto :goto_3

    .line 44
    :cond_5
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m0()I

    move-result v11

    .line 45
    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 46
    :cond_6
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    .line 47
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->b()I

    move-result v11

    if-ne v11, v13, :cond_7

    .line 48
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v11

    goto :goto_4

    .line 49
    :cond_7
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->b()I

    move-result v11

    .line 50
    :goto_4
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    .line 51
    :cond_8
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    .line 52
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->f0()I

    move-result v11

    if-ne v11, v13, :cond_9

    .line 53
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v11

    goto :goto_5

    .line 54
    :cond_9
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->f0()I

    move-result v11

    .line 55
    :goto_5
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    :goto_6
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v7, v0, Lb/a/a/a/f/e;->i:[F

    iget-object v11, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v7, v11}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 58
    iget-object v7, v0, Lb/a/a/a/f/e;->j:[F

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v18, v8, v11

    add-float v18, v18, v4

    aput v18, v7, v15

    mul-float v18, v10, v3

    .line 59
    aput v18, v7, v17

    add-float/2addr v8, v11

    sub-float/2addr v8, v4

    .line 60
    aput v8, v7, v14

    mul-float v8, v9, v3

    .line 61
    aput v8, v7, v16

    .line 62
    invoke-virtual {v2, v7}, Lb/a/a/a/g/g;->b([F)V

    if-lez v21, :cond_b

    .line 63
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->w0()I

    move-result v7

    if-ne v7, v13, :cond_a

    .line 64
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 65
    :cond_a
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->w0()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    :goto_7
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->C()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v7, v0, Lb/a/a/a/f/e;->j:[F

    aget v23, v7, v15

    aget v24, v7, v16

    aget v25, v7, v14

    aget v26, v7, v17

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_b
    cmpg-float v7, v9, v10

    if-gez v7, :cond_d

    .line 68
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m0()I

    move-result v7

    if-ne v7, v13, :cond_c

    .line 69
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 70
    :cond_c
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m0()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    :goto_8
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->Q()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v7, v0, Lb/a/a/a/f/e;->j:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 73
    :cond_d
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->b()I

    move-result v7

    if-ne v7, v13, :cond_e

    .line 74
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 75
    :cond_e
    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    :goto_9
    iget-object v7, v0, Lb/a/a/a/f/e;->j:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    :cond_f
    move-object/from16 v12, p1

    .line 77
    iget-object v13, v0, Lb/a/a/a/f/e;->k:[F

    aput v8, v13, v15

    mul-float v11, v11, v3

    .line 78
    aput v11, v13, v17

    .line 79
    aput v8, v13, v14

    mul-float v7, v7, v3

    .line 80
    aput v7, v13, v16

    .line 81
    iget-object v7, v0, Lb/a/a/a/f/e;->l:[F

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v18, v8, v11

    add-float v18, v18, v4

    aput v18, v7, v15

    mul-float v18, v9, v3

    .line 82
    aput v18, v7, v17

    .line 83
    aput v8, v7, v14

    .line 84
    aput v18, v7, v16

    .line 85
    iget-object v7, v0, Lb/a/a/a/f/e;->m:[F

    add-float/2addr v11, v8

    sub-float/2addr v11, v4

    aput v11, v7, v15

    mul-float v11, v10, v3

    .line 86
    aput v11, v7, v17

    .line 87
    aput v8, v7, v14

    .line 88
    aput v11, v7, v16

    .line 89
    invoke-virtual {v2, v13}, Lb/a/a/a/g/g;->b([F)V

    .line 90
    iget-object v7, v0, Lb/a/a/a/f/e;->l:[F

    invoke-virtual {v2, v7}, Lb/a/a/a/g/g;->b([F)V

    .line 91
    iget-object v7, v0, Lb/a/a/a/f/e;->m:[F

    invoke-virtual {v2, v7}, Lb/a/a/a/g/g;->b([F)V

    cmpl-float v7, v9, v10

    if-lez v7, :cond_11

    .line 92
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->w0()I

    move-result v7

    const v8, 0x112233

    if-ne v7, v8, :cond_10

    .line 93
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v7

    goto :goto_a

    .line 94
    :cond_10
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->w0()I

    move-result v7

    goto :goto_a

    :cond_11
    const v8, 0x112233

    cmpg-float v7, v9, v10

    if-gez v7, :cond_13

    .line 95
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m0()I

    move-result v7

    if-ne v7, v8, :cond_12

    .line 96
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v7

    goto :goto_a

    .line 97
    :cond_12
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->m0()I

    move-result v7

    goto :goto_a

    .line 98
    :cond_13
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->b()I

    move-result v7

    if-ne v7, v8, :cond_14

    .line 99
    invoke-interface {v1, v6}, Lb/a/a/a/e/b/e;->b(I)I

    move-result v7

    goto :goto_a

    .line 100
    :cond_14
    invoke-interface/range {p2 .. p2}, Lb/a/a/a/e/b/d;->b()I

    move-result v7

    .line 101
    :goto_a
    iget-object v8, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v7, v0, Lb/a/a/a/f/e;->k:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v22, p1

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v7, v0, Lb/a/a/a/f/e;->l:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget-object v7, v0, Lb/a/a/a/f/e;->m:[F

    aget v23, v7, v15

    aget v24, v7, v17

    aget v25, v7, v14

    aget v26, v7, v16

    iget-object v7, v0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    move-object/from16 v27, v7

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lb/a/a/a/d/d;)V
    .locals 9

    .line 105
    iget-object v0, p0, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface {v0}, Lb/a/a/a/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v0

    .line 106
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 107
    invoke-virtual {v3}, Lb/a/a/a/d/d;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/h;->a(I)Lb/a/a/a/e/b/e;

    move-result-object v4

    check-cast v4, Lb/a/a/a/e/b/d;

    if-eqz v4, :cond_2

    .line 108
    invoke-interface {v4}, Lb/a/a/a/e/b/e;->s0()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {v3}, Lb/a/a/a/d/d;->g()F

    move-result v5

    invoke-virtual {v3}, Lb/a/a/a/d/d;->i()F

    move-result v6

    invoke-interface {v4, v5, v6}, Lb/a/a/a/e/b/e;->a(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 110
    invoke-virtual {p0, v5, v4}, Lb/a/a/a/f/c;->a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->f()F

    move-result v6

    iget-object v7, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v7}, Lb/a/a/a/a/a;->b()F

    move-result v7

    mul-float v6, v6, v7

    .line 112
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v7

    iget-object v8, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v8}, Lb/a/a/a/a/a;->b()F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 113
    iget-object v7, p0, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface {v4}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    invoke-virtual {v7, v5, v6}, Lb/a/a/a/g/g;->a(FF)Lb/a/a/a/g/d;

    move-result-object v5

    .line 114
    iget-wide v6, v5, Lb/a/a/a/g/d;->c:D

    double-to-float v6, v6

    iget-wide v7, v5, Lb/a/a/a/g/d;->d:D

    double-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Lb/a/a/a/d/d;->a(FF)V

    .line 115
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

    .line 1
    iget-object v0, v9, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-virtual {v9, v0}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/a/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, v9, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface {v0}, Lb/a/a/a/e/a/d;->getCandleData()Lcom/github/mikephil/charting/data/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/h;->c()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_5

    .line 4
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lb/a/a/a/e/b/d;

    .line 5
    invoke-virtual {v9, v13}, Lb/a/a/a/f/c;->b(Lb/a/a/a/e/b/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-virtual {v9, v13}, Lb/a/a/a/f/g;->a(Lb/a/a/a/e/b/e;)V

    .line 7
    iget-object v0, v9, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-interface {v13}, Lb/a/a/a/e/b/e;->o0()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lb/a/a/a/g/g;

    move-result-object v1

    .line 8
    iget-object v0, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget-object v2, v9, Lb/a/a/a/f/e;->h:Lb/a/a/a/e/a/d;

    invoke-virtual {v0, v2, v13}, Lb/a/a/a/f/c$a;->a(Lb/a/a/a/e/a/b;Lb/a/a/a/e/b/b;)V

    .line 9
    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    .line 10
    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()F

    move-result v3

    iget-object v0, v9, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()F

    move-result v4

    iget-object v0, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v5, v0, Lb/a/a/a/f/c$a;->a:I

    iget v6, v0, Lb/a/a/a/f/c$a;->b:I

    move-object v2, v13

    .line 11
    invoke-virtual/range {v1 .. v6}, Lb/a/a/a/g/g;->a(Lb/a/a/a/e/b/d;FFII)[F

    move-result-object v14

    const/high16 v0, 0x40a00000    # 5.0f

    .line 12
    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v15

    const/4 v8, 0x0

    .line 13
    :goto_1
    array-length v0, v14

    if-ge v8, v0, :cond_4

    .line 14
    aget v6, v14, v8

    add-int/lit8 v0, v8, 0x1

    .line 15
    aget v0, v14, v0

    .line 16
    iget-object v1, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v6}, Lb/a/a/a/g/j;->c(F)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_4

    .line 17
    :cond_1
    iget-object v1, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v6}, Lb/a/a/a/g/j;->b(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v9, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {v1, v0}, Lb/a/a/a/g/j;->f(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    div-int/lit8 v1, v8, 0x2

    iget-object v2, v9, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    iget v2, v2, Lb/a/a/a/f/c$a;->a:I

    add-int/2addr v2, v1

    invoke-interface {v13, v2}, Lb/a/a/a/e/b/e;->a(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 19
    invoke-interface {v13}, Lb/a/a/a/e/b/e;->E()Lb/a/a/a/c/f;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v3

    sub-float v7, v0, v15

    .line 20
    invoke-interface {v13, v1}, Lb/a/a/a/e/b/e;->c(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v12

    move/from16 v17, v8

    move/from16 v8, v16

    .line 21
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
