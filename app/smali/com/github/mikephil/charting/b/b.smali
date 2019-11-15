.class public Lcom/github/mikephil/charting/b/b;
.super Lcom/github/mikephil/charting/b/a;
.source "BarBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/b/a",
        "<",
        "Lcom/github/mikephil/charting/e/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field protected k:F


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/b/a;-><init>(I)V

    iput v1, p0, Lcom/github/mikephil/charting/b/b;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/b/b;->h:I

    iput-boolean v1, p0, Lcom/github/mikephil/charting/b/b;->i:Z

    iput-boolean v1, p0, Lcom/github/mikephil/charting/b/b;->j:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/b/b;->k:F

    iput p2, p0, Lcom/github/mikephil/charting/b/b;->h:I

    iput-boolean p3, p0, Lcom/github/mikephil/charting/b/b;->i:Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/b/b;->k:F

    return-void
.end method

.method protected a(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/b/b;->b:[F

    iget v1, p0, Lcom/github/mikephil/charting/b/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/b/b;->a:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/b/b;->b:[F

    iget v1, p0, Lcom/github/mikephil/charting/b/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/b/b;->a:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/b/b;->b:[F

    iget v1, p0, Lcom/github/mikephil/charting/b/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/b/b;->a:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/github/mikephil/charting/b/b;->b:[F

    iget v1, p0, Lcom/github/mikephil/charting/b/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/b/b;->a:I

    aput p4, v0, v1

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/b/b;->g:I

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/e/b/a;)V
    .locals 16

    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/e/b/a;->s()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/b/b;->c:F

    mul-float v8, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/github/mikephil/charting/b/b;->k:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    int-to-float v1, v7

    cmpg-float v1, v1, v8

    if-gez v1, :cond_10

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/github/mikephil/charting/e/b/a;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->h()F

    move-result v10

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->b()F

    move-result v2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->a()[F

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/github/mikephil/charting/b/b;->i:Z

    if-eqz v3, :cond_2

    if-nez v11, :cond_9

    :cond_2
    sub-float v4, v10, v9

    add-float v5, v10, v9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/github/mikephil/charting/b/b;->j:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_4

    move v3, v2

    :goto_2
    const/4 v1, 0x0

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_5

    move v1, v2

    :goto_3
    move v2, v3

    :cond_3
    :goto_4
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/b/b;->d:F

    mul-float/2addr v1, v3

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/github/mikephil/charting/b/b;->a(FFFF)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_7

    move v1, v2

    :goto_6
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/b/b;->d:F

    mul-float/2addr v2, v3

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->f()F

    move-result v1

    neg-float v2, v1

    const/4 v1, 0x0

    :goto_7
    array-length v4, v11

    if-ge v1, v4, :cond_0

    aget v5, v11, v1

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_a

    add-float v4, v3, v5

    move v5, v3

    move v3, v4

    :goto_8
    sub-float v12, v10, v9

    add-float v13, v10, v9

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/github/mikephil/charting/b/b;->j:Z

    if-eqz v6, :cond_d

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_b

    move v6, v5

    :goto_9
    cmpg-float v14, v5, v4

    if-gtz v14, :cond_c

    :goto_a
    move v4, v6

    :goto_b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/mikephil/charting/b/b;->d:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/github/mikephil/charting/b/b;->d:F

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5, v13, v4}, Lcom/github/mikephil/charting/b/b;->a(FFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v5, v2

    move v15, v5

    move v5, v2

    move v2, v15

    goto :goto_8

    :cond_b
    move v6, v4

    goto :goto_9

    :cond_c
    move v5, v4

    goto :goto_a

    :cond_d
    cmpl-float v6, v5, v4

    if-ltz v6, :cond_e

    move v6, v5

    :goto_c
    cmpg-float v14, v5, v4

    if-gtz v14, :cond_f

    :goto_d
    move v4, v5

    move v5, v6

    goto :goto_b

    :cond_e
    move v6, v4

    goto :goto_c

    :cond_f
    move v5, v4

    goto :goto_d

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/b/b;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/b/b;->j:Z

    return-void
.end method
