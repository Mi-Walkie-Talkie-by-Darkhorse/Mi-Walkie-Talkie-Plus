.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/b;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendOrientation;,
        Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/a/a/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/a/a/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Lcom/github/mikephil/charting/components/e;

.field private h:[Lcom/github/mikephil/charting/components/e;

.field private i:Z

.field private j:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field private k:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field private l:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field private m:Z

.field private n:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private o:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private p:F

.field private q:F

.field private r:Landroid/graphics/DashPathEffect;

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/b;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/github/mikephil/charting/components/e;

    .line 2
    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->g:[Lcom/github/mikephil/charting/components/e;

    .line 3
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->i:Z

    .line 4
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->a:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->j:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 5
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->c:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->k:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 6
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->a:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->l:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 7
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->m:Z

    .line 8
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->n:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 9
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->d:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->o:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v1, 0x41000000    # 8.0f

    .line 10
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->p:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 11
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->q:F

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->r:Landroid/graphics/DashPathEffect;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 13
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->s:F

    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->t:F

    const/high16 v3, 0x40a00000    # 5.0f

    .line 15
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->u:F

    .line 16
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->v:F

    const v4, 0x3f733333    # 0.95f

    .line 17
    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->w:F

    .line 18
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->x:F

    .line 19
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->y:F

    .line 20
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->z:F

    .line 21
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->A:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->B:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    const/high16 v0, 0x41200000    # 10.0f

    .line 25
    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->e:F

    .line 26
    invoke-static {v3}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->b:F

    .line 27
    invoke-static {v1}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/b;->c:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)F
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->g:[Lcom/github/mikephil/charting/components/e;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    iget-object v4, v4, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1, v4}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public a(Landroid/graphics/Paint;Lb/a/a/a/g/j;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5
    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->p:F

    invoke-static {v2}, Lb/a/a/a/g/i;->a(F)F

    move-result v2

    .line 6
    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->v:F

    invoke-static {v3}, Lb/a/a/a/g/i;->a(F)F

    move-result v3

    .line 7
    iget v4, v0, Lcom/github/mikephil/charting/components/Legend;->u:F

    invoke-static {v4}, Lb/a/a/a/g/i;->a(F)F

    move-result v4

    .line 8
    iget v5, v0, Lcom/github/mikephil/charting/components/Legend;->s:F

    invoke-static {v5}, Lb/a/a/a/g/i;->a(F)F

    move-result v5

    .line 9
    iget v6, v0, Lcom/github/mikephil/charting/components/Legend;->t:F

    invoke-static {v6}, Lb/a/a/a/g/i;->a(F)F

    move-result v6

    .line 10
    iget-boolean v7, v0, Lcom/github/mikephil/charting/components/Legend;->A:Z

    .line 11
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->g:[Lcom/github/mikephil/charting/components/e;

    .line 12
    array-length v9, v8

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->b(Landroid/graphics/Paint;)F

    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->a(Landroid/graphics/Paint;)F

    move-result v10

    iput v10, v0, Lcom/github/mikephil/charting/components/Legend;->z:F

    .line 15
    sget-object v10, Lcom/github/mikephil/charting/components/Legend$a;->b:[I

    iget-object v11, v0, Lcom/github/mikephil/charting/components/Legend;->l:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v12, 0x1

    if-eq v10, v12, :cond_12

    const/4 v14, 0x2

    if-eq v10, v14, :cond_0

    goto/16 :goto_13

    .line 16
    :cond_0
    invoke-static/range {p1 .. p1}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;)F

    move-result v10

    .line 17
    invoke-static/range {p1 .. p1}, Lb/a/a/a/g/i;->b(Landroid/graphics/Paint;)F

    move-result v14

    add-float/2addr v14, v6

    .line 18
    invoke-virtual/range {p2 .. p2}, Lb/a/a/a/g/j;->j()F

    move-result v6

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->w:F

    mul-float v6, v6, v15

    .line 19
    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 20
    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->B:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 21
    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v12, v9, :cond_10

    .line 22
    aget-object v15, v8, v12

    .line 23
    iget-object v11, v15, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move/from16 v22, v2

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v11, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    iget v11, v15, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_2

    move/from16 v11, v22

    goto :goto_2

    :cond_2
    iget v11, v15, Lcom/github/mikephil/charting/components/e;->c:F

    .line 25
    invoke-static {v11}, Lb/a/a/a/g/i;->a(F)F

    move-result v11

    .line 26
    :goto_2
    iget-object v15, v15, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    move/from16 v23, v5

    .line 27
    iget-object v5, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    move-object/from16 v24, v8

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    if-ne v13, v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    add-float v5, v19, v3

    :goto_3
    if-eqz v15, :cond_5

    .line 28
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->B:Ljava/util/List;

    move/from16 v19, v3

    invoke-static {v1, v15}, Lb/a/a/a/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)Lb/a/a/a/g/b;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_4

    add-float v2, v4, v11

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-float/2addr v5, v2

    .line 29
    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->B:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/g/b;

    iget v2, v2, Lb/a/a/a/g/b;->c:F

    add-float/2addr v5, v2

    goto :goto_6

    :cond_5
    move/from16 v19, v3

    .line 30
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->B:Ljava/util/List;

    move/from16 v25, v11

    const/4 v8, 0x0

    invoke-static {v8, v8}, Lb/a/a/a/g/b;->a(FF)Lb/a/a/a/g/b;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    move/from16 v11, v25

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    add-float/2addr v5, v11

    const/4 v2, -0x1

    if-ne v13, v2, :cond_7

    move v13, v12

    :cond_7
    :goto_6
    if-nez v15, :cond_8

    add-int/lit8 v2, v9, -0x1

    if-ne v12, v2, :cond_e

    :cond_8
    move/from16 v2, v20

    const/4 v8, 0x0

    cmpl-float v3, v2, v8

    if-nez v3, :cond_9

    const/4 v11, 0x0

    goto :goto_7

    :cond_9
    move/from16 v11, v23

    :goto_7
    if-eqz v7, :cond_c

    if-eqz v3, :cond_c

    sub-float v3, v6, v2

    add-float v18, v11, v5

    cmpl-float v3, v3, v18

    if-ltz v3, :cond_a

    goto :goto_9

    .line 31
    :cond_a
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    invoke-static {v2, v10}, Lb/a/a/a/g/b;->a(FF)Lb/a/a/a/g/b;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    .line 32
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 33
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    const/4 v11, -0x1

    if-le v13, v11, :cond_b

    move v8, v13

    goto :goto_8

    :cond_b
    move v8, v12

    :goto_8
    const/16 v16, 0x1

    .line 34
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 35
    invoke-interface {v3, v8, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    const/4 v8, -0x1

    goto :goto_a

    :cond_c
    :goto_9
    move/from16 v3, v17

    const/4 v8, -0x1

    add-float/2addr v11, v5

    add-float v20, v2, v11

    move v2, v3

    move/from16 v3, v20

    :goto_a
    add-int/lit8 v11, v9, -0x1

    if-ne v12, v11, :cond_d

    .line 36
    iget-object v11, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    invoke-static {v3, v10}, Lb/a/a/a/g/b;->a(FF)Lb/a/a/a/g/b;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v17

    goto :goto_b

    :cond_d
    move/from16 v17, v2

    :goto_b
    move/from16 v20, v3

    :cond_e
    if-eqz v15, :cond_f

    const/4 v13, -0x1

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    move/from16 v2, v22

    move-object/from16 v8, v24

    move/from16 v19, v5

    move/from16 v5, v23

    goto/16 :goto_0

    :cond_10
    move/from16 v3, v17

    const/16 v21, 0x0

    .line 38
    iput v3, v0, Lcom/github/mikephil/charting/components/Legend;->x:F

    .line 39
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float v10, v10, v1

    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v11, 0x0

    goto :goto_c

    :cond_11
    iget-object v1, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v11, v1, -0x1

    :goto_c
    int-to-float v1, v11

    mul-float v14, v14, v1

    add-float/2addr v10, v14

    iput v10, v0, Lcom/github/mikephil/charting/components/Legend;->y:F

    goto/16 :goto_13

    :cond_12
    move/from16 v22, v2

    move/from16 v19, v3

    move-object/from16 v24, v8

    const/16 v16, 0x1

    const/16 v21, 0x0

    .line 43
    invoke-static/range {p1 .. p1}, Lb/a/a/a/g/i;->a(Landroid/graphics/Paint;)F

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_d
    if-ge v7, v9, :cond_1d

    .line 44
    aget-object v11, v24, v7

    .line 45
    iget-object v12, v11, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v13, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v12, v13, :cond_13

    const/4 v12, 0x1

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    .line 46
    :goto_e
    iget v13, v11, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_14

    move/from16 v13, v22

    goto :goto_f

    :cond_14
    iget v13, v11, Lcom/github/mikephil/charting/components/e;->c:F

    .line 47
    invoke-static {v13}, Lb/a/a/a/g/i;->a(F)F

    move-result v13

    .line 48
    :goto_f
    iget-object v11, v11, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-nez v10, :cond_15

    const/4 v5, 0x0

    :cond_15
    if-eqz v12, :cond_17

    if-eqz v10, :cond_16

    add-float v5, v5, v19

    :cond_16
    add-float/2addr v5, v13

    :cond_17
    if-eqz v11, :cond_1b

    if-eqz v12, :cond_18

    if-nez v10, :cond_18

    add-float/2addr v5, v4

    goto :goto_10

    :cond_18
    if-eqz v10, :cond_19

    .line 49
    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float v5, v2, v6

    add-float/2addr v3, v5

    move v5, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_11

    :cond_19
    :goto_10
    move/from16 v26, v8

    move v8, v5

    move/from16 v5, v26

    .line 50
    :goto_11
    invoke-static {v1, v11}, Lb/a/a/a/g/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v8, v11

    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_1a

    add-float v11, v2, v6

    add-float/2addr v3, v11

    :cond_1a
    move/from16 v26, v8

    move v8, v5

    move/from16 v5, v26

    goto :goto_12

    :cond_1b
    add-float/2addr v5, v13

    add-int/lit8 v10, v9, -0x1

    if-ge v7, v10, :cond_1c

    add-float v5, v5, v19

    :cond_1c
    const/4 v10, 0x1

    .line 51
    :goto_12
    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 52
    :cond_1d
    iput v8, v0, Lcom/github/mikephil/charting/components/Legend;->x:F

    .line 53
    iput v3, v0, Lcom/github/mikephil/charting/components/Legend;->y:F

    .line 54
    :goto_13
    iget v1, v0, Lcom/github/mikephil/charting/components/Legend;->y:F

    iget v2, v0, Lcom/github/mikephil/charting/components/b;->c:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->y:F

    .line 55
    iget v1, v0, Lcom/github/mikephil/charting/components/Legend;->x:F

    iget v2, v0, Lcom/github/mikephil/charting/components/b;->b:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/github/mikephil/charting/components/Legend;->x:F

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/e;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/mikephil/charting/components/e;

    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->g:[Lcom/github/mikephil/charting/components/e;

    return-void
.end method

.method public b(Landroid/graphics/Paint;)F
    .locals 9

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->u:F

    invoke-static {v0}, Lb/a/a/a/g/i;->a(F)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->g:[Lcom/github/mikephil/charting/components/e;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    aget-object v6, v1, v5

    .line 3
    iget v7, v6, Lcom/github/mikephil/charting/components/e;->c:F

    .line 4
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/github/mikephil/charting/components/Legend;->p:F

    goto :goto_1

    :cond_0
    iget v7, v6, Lcom/github/mikephil/charting/components/e;->c:F

    .line 5
    :goto_1
    invoke-static {v7}, Lb/a/a/a/g/i;->a(F)F

    move-result v7

    cmpl-float v8, v7, v4

    if-lez v8, :cond_1

    move v4, v7

    .line 6
    :cond_1
    iget-object v6, v6, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {p1, v6}, Lb/a/a/a/g/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v7, v6, v3

    if-lez v7, :cond_3

    move v3, v6

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    add-float/2addr v3, v4

    add-float/2addr v3, v0

    return v3
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a/a/a/g/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->B:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a/a/a/g/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    return-object v0
.end method

.method public j()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->n:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public k()[Lcom/github/mikephil/charting/components/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->g:[Lcom/github/mikephil/charting/components/e;

    return-object v0
.end method

.method public l()[Lcom/github/mikephil/charting/components/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->h:[Lcom/github/mikephil/charting/components/e;

    return-object v0
.end method

.method public m()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->o:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public n()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->r:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->q:F

    return v0
.end method

.method public p()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->p:F

    return v0
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->u:F

    return v0
.end method

.method public r()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->j:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-object v0
.end method

.method public s()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->w:F

    return v0
.end method

.method public t()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->l:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    return-object v0
.end method

.method public u()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->v:F

    return v0
.end method

.method public v()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->k:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    return-object v0
.end method

.method public w()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->s:F

    return v0
.end method

.method public x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->t:F

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->m:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->i:Z

    return v0
.end method
