.class public Lcom/github/mikephil/charting/f/i;
.super Lcom/github/mikephil/charting/f/o;
.source "LegendRenderer.java"


# instance fields
.field protected a:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/Paint;

.field protected c:Lcom/github/mikephil/charting/components/Legend;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/e;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/graphics/Paint$FontMetrics;

.field private f:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/g/j;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/f/o;-><init>(Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/i;->e:Landroid/graphics/Paint$FontMetrics;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/i;->f:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->x()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->u()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->v()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->w()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->e:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->e:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->n()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v3

    add-float v20, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    const-string v3, "ABC"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v21, v19, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->a()[Lcom/github/mikephil/charting/components/e;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->o()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->m()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->f()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->h()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->j()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->p()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->t()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->s()F

    move-result v2

    const/4 v3, 0x0

    sget-object v4, Lcom/github/mikephil/charting/f/i$1;->a:[I

    invoke-virtual/range {v23 .. v23}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    :cond_3
    move v8, v3

    :goto_1
    sget-object v2, Lcom/github/mikephil/charting/f/i$1;->c:[I

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->z()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->r()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->y()Ljava/util/List;

    move-result-object v27

    const/4 v2, 0x0

    sget-object v3, Lcom/github/mikephil/charting/f/i$1;->b:[I

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    :goto_2
    const/4 v12, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v18, v3

    move v4, v2

    move v5, v8

    move v3, v12

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    aget-object v6, v22, v18

    iget-object v2, v6, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v7, :cond_c

    const/4 v2, 0x1

    move v9, v2

    :goto_4
    iget v2, v6, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_d

    move v10, v11

    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_25

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    add-float v2, v19, v20

    add-float/2addr v2, v4

    move/from16 v17, v2

    move v4, v8

    :goto_6
    cmpl-float v2, v4, v8

    if-nez v2, :cond_24

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->b:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_24

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_24

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_e

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/g/b;

    iget v2, v2, Lcom/github/mikephil/charting/g/b;->a:F

    :goto_7
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v12, v2

    move v2, v4

    :goto_8
    iget-object v3, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_9
    if-eqz v9, :cond_23

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v3, :cond_22

    sub-float v4, v2, v10

    :goto_a
    add-float v5, v17, v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/e;Lcom/github/mikephil/charting/components/Legend;)V

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_21

    add-float v3, v4, v10

    :goto_b
    if-nez v16, :cond_12

    if-eqz v9, :cond_4

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_10

    neg-float v2, v13

    :goto_c
    add-float/2addr v2, v3

    move v3, v2

    :cond_4
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/g/b;

    iget v2, v2, Lcom/github/mikephil/charting/g/b;->a:F

    sub-float/2addr v3, v2

    :cond_5
    add-float v2, v17, v19

    iget-object v4, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_6

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/g/b;

    iget v2, v2, Lcom/github/mikephil/charting/g/b;->a:F

    add-float/2addr v3, v2

    :cond_6
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_11

    neg-float v2, v14

    :goto_d
    add-float/2addr v2, v3

    :goto_e
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    move/from16 v4, v17

    move v5, v2

    move v3, v12

    goto/16 :goto_3

    :pswitch_1
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->b:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v6, v3, :cond_7

    :goto_f
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->a:F

    add-float/2addr v2, v3

    move v8, v2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_f

    :pswitch_2
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->b:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v6, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v3

    sub-float v2, v3, v2

    :goto_10
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->a:F

    sub-float/2addr v2, v3

    move v8, v2

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->g()F

    move-result v3

    sub-float v2, v3, v2

    goto :goto_10

    :pswitch_3
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->b:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v6, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->n()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    :goto_11
    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_a

    move v4, v2

    :goto_12
    add-float/2addr v3, v4

    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->b:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v6, v4, :cond_3

    float-to-double v8, v3

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->a:F

    neg-float v3, v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v16, v16, v26

    float-to-double v2, v2

    add-double v2, v2, v16

    :goto_13
    add-double/2addr v2, v8

    double-to-float v2, v2

    move v8, v2

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/g/j;->f()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/g/j;->i()F

    move-result v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    goto :goto_11

    :cond_a
    neg-float v4, v2

    goto :goto_12

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->a:F

    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v16, v16, v26

    float-to-double v2, v2

    sub-double v2, v16, v2

    goto :goto_13

    :pswitch_4
    move v2, v5

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->b:F

    sub-float/2addr v2, v3

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->b:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v5

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    :cond_d
    iget v2, v6, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v2

    move v10, v2

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/g/b;

    iget v2, v2, Lcom/github/mikephil/charting/g/b;->a:F

    neg-float v2, v2

    goto/16 :goto_7

    :cond_f
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_9

    :cond_10
    move v2, v13

    goto/16 :goto_c

    :cond_11
    move v2, v14

    goto/16 :goto_d

    :cond_12
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_13

    neg-float v2, v15

    :goto_14
    add-float/2addr v2, v3

    goto/16 :goto_e

    :cond_13
    move v2, v15

    goto :goto_14

    :pswitch_7
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/github/mikephil/charting/f/i$1;->b:[I

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_3

    :goto_15
    const/4 v3, 0x0

    move v9, v3

    move v10, v2

    move v12, v4

    move v14, v6

    :goto_16
    move-object/from16 v0, v22

    array-length v2, v0

    if-ge v9, v2, :cond_0

    aget-object v6, v22, v9

    iget-object v2, v6, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v3, :cond_19

    const/4 v2, 0x1

    move/from16 v16, v2

    :goto_17
    iget v2, v6, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    move/from16 v17, v11

    :goto_18
    if-eqz v16, :cond_20

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_1b

    add-float v4, v8, v14

    :goto_19
    add-float v5, v10, v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/e;Lcom/github/mikephil/charting/components/Legend;)V

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_14

    add-float v4, v4, v17

    :cond_14
    :goto_1a
    iget-object v2, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-eqz v2, :cond_1f

    if-eqz v16, :cond_1d

    if-nez v12, :cond_1d

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_1c

    move v2, v13

    :goto_1b
    add-float/2addr v4, v2

    :cond_15
    :goto_1c
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->b:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    iget-object v3, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    :cond_16
    if-nez v12, :cond_1e

    add-float v2, v10, v19

    iget-object v3, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    :goto_1d
    add-float v2, v19, v20

    add-float v3, v10, v2

    const/4 v5, 0x0

    move v4, v12

    :goto_1e
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v10, v3

    move v12, v4

    move v14, v5

    goto :goto_16

    :pswitch_8
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->b:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_17

    const/4 v2, 0x0

    :goto_1f
    add-float/2addr v2, v5

    goto/16 :goto_15

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->e()F

    move-result v2

    goto :goto_1f

    :pswitch_9
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->b:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    :goto_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->b:F

    add-float/2addr v3, v5

    sub-float/2addr v2, v3

    goto/16 :goto_15

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->h()F

    move-result v2

    goto :goto_20

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/g/j;->m()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->b:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->t()F

    move-result v3

    add-float/2addr v2, v3

    goto/16 :goto_15

    :cond_19
    const/4 v2, 0x0

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1a
    iget v2, v6, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_18

    :cond_1b
    sub-float v2, v17, v14

    sub-float v4, v8, v2

    goto/16 :goto_19

    :cond_1c
    neg-float v2, v13

    goto/16 :goto_1b

    :cond_1d
    if-eqz v12, :cond_15

    move v4, v8

    goto/16 :goto_1c

    :cond_1e
    add-float v2, v19, v20

    add-float/2addr v10, v2

    add-float v2, v10, v19

    iget-object v3, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/github/mikephil/charting/f/i;->a(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto/16 :goto_1d

    :cond_1f
    add-float v2, v17, v15

    add-float v5, v14, v2

    const/4 v4, 0x1

    move v3, v10

    goto/16 :goto_1e

    :cond_20
    move v4, v8

    goto/16 :goto_1a

    :cond_21
    move v3, v4

    goto/16 :goto_b

    :cond_22
    move v4, v2

    goto/16 :goto_a

    :cond_23
    move v3, v2

    goto/16 :goto_b

    :cond_24
    move v12, v3

    move v2, v4

    goto/16 :goto_8

    :cond_25
    move/from16 v17, v4

    move v4, v5

    goto/16 :goto_6

    :cond_26
    move v8, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/e;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 7

    iget v0, p4, Lcom/github/mikephil/charting/components/e;->f:I

    const v1, 0x112234

    if-eq v0, v1, :cond_0

    iget v0, p4, Lcom/github/mikephil/charting/components/e;->f:I

    const v1, 0x112233

    if-eq v0, v1, :cond_0

    iget v0, p4, Lcom/github/mikephil/charting/components/e;->f:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v0, p4, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->c:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v0, v1, :cond_2

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->i()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    iget v2, p4, Lcom/github/mikephil/charting/components/e;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p4, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->j()F

    move-result v1

    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    sget-object v2, Lcom/github/mikephil/charting/f/i$1;->d:[I

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend$LegendForm;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    iget v1, p4, Lcom/github/mikephil/charting/components/e;->c:F

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float v0, p2, v4

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-float v2, p3, v4

    add-float v3, p2, v1

    add-float/2addr v4, p3

    iget-object v5, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :pswitch_3
    iget v0, p4, Lcom/github/mikephil/charting/components/e;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->k()F

    move-result v0

    :goto_3
    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v2

    iget-object v0, p4, Lcom/github/mikephil/charting/components/e;->e:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_5

    invoke-virtual {p5}, Lcom/github/mikephil/charting/components/Legend;->l()Landroid/graphics/DashPathEffect;

    move-result-object v0

    :goto_4
    iget-object v3, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->f:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->f:Landroid/graphics/Path;

    add-float/2addr v1, p2

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget v0, p4, Lcom/github/mikephil/charting/components/e;->d:F

    goto :goto_3

    :cond_5
    iget-object v0, p4, Lcom/github/mikephil/charting/components/e;->e:Landroid/graphics/DashPathEffect;

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Lcom/github/mikephil/charting/data/h;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/h",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->c()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/h;->d()I

    move-result v0

    if-ge v9, v0, :cond_7

    invoke-virtual {p1, v9}, Lcom/github/mikephil/charting/data/h;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->b()Ljava/util/List;

    move-result-object v11

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->s()I

    move-result v12

    instance-of v0, v7, Lcom/github/mikephil/charting/e/b/a;

    if-eqz v0, :cond_2

    move-object v0, v7

    check-cast v0, Lcom/github/mikephil/charting/e/b/a;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v8, v7

    check-cast v8, Lcom/github/mikephil/charting/e/b/a;

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->B()[Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->r()I

    move-result v0

    if-ge v10, v0, :cond_0

    iget-object v13, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    array-length v1, v12

    rem-int v1, v10, v1

    aget-object v1, v12, v1

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->k()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v2

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->l()F

    move-result v3

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->m()F

    move-result v4

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->n()Landroid/graphics/DashPathEffect;

    move-result-object v5

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    :cond_0
    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v5, 0x0

    const v6, 0x112233

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    :cond_2
    instance-of v0, v7, Lcom/github/mikephil/charting/e/b/i;

    if-eqz v0, :cond_4

    move-object v8, v7

    check-cast v8, Lcom/github/mikephil/charting/e/b/i;

    const/4 v0, 0x0

    move v10, v0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    if-ge v10, v12, :cond_3

    iget-object v13, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    invoke-interface {v8, v10}, Lcom/github/mikephil/charting/e/b/i;->d(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->k()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v2

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->l()F

    move-result v3

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->m()F

    move-result v4

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->n()Landroid/graphics/DashPathEffect;

    move-result-object v5

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Lcom/github/mikephil/charting/e/b/i;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v5, 0x0

    const v6, 0x112233

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v0, v7, Lcom/github/mikephil/charting/e/b/d;

    if-eqz v0, :cond_5

    move-object v0, v7

    check-cast v0, Lcom/github/mikephil/charting/e/b/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v0

    const v1, 0x112233

    if-eq v0, v1, :cond_5

    move-object v0, v7

    check-cast v0, Lcom/github/mikephil/charting/e/b/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/d;->B()I

    move-result v6

    move-object v0, v7

    check-cast v0, Lcom/github/mikephil/charting/e/b/d;

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/d;->A()I

    move-result v8

    iget-object v10, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    const/4 v1, 0x0

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->k()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v2

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->l()F

    move-result v3

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->m()F

    move-result v4

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->n()Landroid/graphics/DashPathEffect;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->k()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v2

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->l()F

    move-result v3

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->m()F

    move-result v4

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->n()Landroid/graphics/DashPathEffect;

    move-result-object v5

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    move v8, v0

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    if-ge v8, v12, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_6

    add-int/lit8 v0, v12, -0x1

    if-ge v8, v0, :cond_6

    const/4 v1, 0x0

    :goto_5
    iget-object v10, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    new-instance v0, Lcom/github/mikephil/charting/components/e;

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->k()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v2

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->l()F

    move-result v3

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->m()F

    move-result v4

    invoke-interface {v7}, Lcom/github/mikephil/charting/e/b/e;->n()Landroid/graphics/DashPathEffect;

    move-result-object v5

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/github/mikephil/charting/components/e;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v9}, Lcom/github/mikephil/charting/data/h;->a(I)Lcom/github/mikephil/charting/e/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/mikephil/charting/e/b/e;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->b()[Lcom/github/mikephil/charting/components/e;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->b()[Lcom/github/mikephil/charting/components/e;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->a(Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->u()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_a
    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/f/i;->c:Lcom/github/mikephil/charting/components/Legend;

    iget-object v1, p0, Lcom/github/mikephil/charting/f/i;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/mikephil/charting/f/i;->o:Lcom/github/mikephil/charting/g/j;

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/Legend;->a(Landroid/graphics/Paint;Lcom/github/mikephil/charting/g/j;)V

    return-void
.end method
