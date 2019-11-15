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
.field private B:Z

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/g/b;",
            ">;"
        }
    .end annotation
.end field

.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private e:[Lcom/github/mikephil/charting/components/e;

.field private f:[Lcom/github/mikephil/charting/components/e;

.field private g:Z

.field private h:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field private i:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field private j:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field private k:Z

.field private l:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private m:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private n:F

.field private o:F

.field private p:Landroid/graphics/DashPathEffect;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v4, 0x10

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/github/mikephil/charting/components/b;-><init>()V

    new-array v0, v2, [Lcom/github/mikephil/charting/components/e;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->e:[Lcom/github/mikephil/charting/components/e;

    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->g:Z

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->a:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->h:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->c:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->i:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->a:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->j:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->k:Z

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->a:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->l:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->d:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->m:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->n:F

    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->o:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->p:Landroid/graphics/DashPathEffect;

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->q:F

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->r:F

    iput v5, p0, Lcom/github/mikephil/charting/components/Legend;->s:F

    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->t:F

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->u:F

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->a:F

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->b:F

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->c:F

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->d:F

    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->z:F

    invoke-static {v5}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->w:F

    invoke-static {v3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->x:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)F
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->s:F

    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/components/Legend;->e:[Lcom/github/mikephil/charting/components/e;

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    iget v0, v7, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->n:F

    :goto_1
    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    cmpl-float v8, v0, v1

    if-lez v8, :cond_4

    :goto_2
    iget-object v1, v7, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :cond_0
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, v7, Lcom/github/mikephil/charting/components/e;->c:F

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_0

    move v1, v2

    goto :goto_3

    :cond_3
    add-float v0, v2, v1

    add-float/2addr v0, v4

    return v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public a(Landroid/graphics/Paint;Lcom/github/mikephil/charting/g/j;)V
    .locals 23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->n:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->t:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->s:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->q:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->r:F

    invoke-static {v2}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/github/mikephil/charting/components/Legend;->B:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/components/Legend;->e:[Lcom/github/mikephil/charting/components/e;

    array-length v15, v14

    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->a(Landroid/graphics/Paint;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->d:F

    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->b(Landroid/graphics/Paint;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->c:F

    sget-object v2, Lcom/github/mikephil/charting/components/Legend$1;->b:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->j:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->x:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->a:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->w:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->a:F

    return-void

    :pswitch_0
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;)F

    move-result v13

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-ge v9, v15, :cond_7

    aget-object v16, v14, v9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v16

    iget v3, v0, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    if-eqz v2, :cond_2

    if-eqz v6, :cond_1

    add-float/2addr v5, v11

    :cond_1
    add-float/2addr v5, v3

    :cond_2
    if-eqz v16, :cond_6

    if-eqz v2, :cond_5

    if-nez v6, :cond_5

    add-float v2, v5, v12

    move v3, v2

    move v5, v7

    move v2, v6

    move v6, v8

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v7, v15, -0x1

    if-ge v9, v7, :cond_1a

    add-float v7, v13, v10

    add-float/2addr v7, v5

    :goto_5
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v6, v2

    move v5, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, v16

    iget v3, v0, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v3

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_1b

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v2, v13, v10

    add-float v5, v7, v2

    const/4 v3, 0x0

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    add-float/2addr v3, v5

    add-int/lit8 v5, v15, -0x1

    if-ge v9, v5, :cond_19

    add-float/2addr v3, v11

    move v6, v8

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Lcom/github/mikephil/charting/components/Legend;->a:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    goto/16 :goto_0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;)F

    move-result v16

    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;)F

    move-result v2

    add-float v17, v2, v10

    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/g/j;->i()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->u:F

    mul-float v18, v2, v3

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    move v10, v2

    :goto_6
    if-ge v5, v15, :cond_15

    aget-object v19, v14, v5

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/github/mikephil/charting/components/e;->b:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->a:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, v19

    iget v3, v0, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_8
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_e

    const/4 v10, 0x0

    :goto_9
    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/g/b;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_f

    add-float v2, v12, v3

    :goto_a
    add-float v3, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/g/b;

    iget v2, v2, Lcom/github/mikephil/charting/g/b;->a:F

    add-float/2addr v2, v3

    move v3, v8

    move v8, v2

    :goto_b
    if-nez v19, :cond_8

    add-int/lit8 v2, v15, -0x1

    if-ne v5, v2, :cond_17

    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_c
    if-eqz v13, :cond_9

    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-eqz v10, :cond_9

    sub-float v10, v18, v6

    add-float v20, v2, v8

    cmpl-float v10, v10, v20

    if-ltz v10, :cond_13

    :cond_9
    add-float/2addr v2, v8

    add-float/2addr v2, v6

    move v6, v7

    :goto_d
    add-int/lit8 v7, v15, -0x1

    if-ne v5, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/github/mikephil/charting/g/b;->a(FF)Lcom/github/mikephil/charting/g/b;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_a
    :goto_e
    if-eqz v19, :cond_b

    const/4 v3, -0x1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move v10, v8

    move v7, v6

    move v6, v2

    move v8, v3

    goto/16 :goto_6

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, v19

    iget v3, v0, Lcom/github/mikephil/charting/components/e;->c:F

    invoke-static {v3}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v3

    goto/16 :goto_8

    :cond_e
    add-float/2addr v10, v11

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/github/mikephil/charting/g/b;->a(FF)Lcom/github/mikephil/charting/g/b;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_11

    :goto_f
    add-float v2, v10, v3

    const/4 v3, -0x1

    if-ne v8, v3, :cond_18

    move v3, v5

    move v8, v2

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    goto :goto_f

    :cond_12
    move v2, v9

    goto :goto_c

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/github/mikephil/charting/g/b;->a(FF)Lcom/github/mikephil/charting/g/b;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    const/4 v2, -0x1

    if-le v3, v2, :cond_14

    move v2, v3

    :goto_10
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v2, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v8

    goto :goto_d

    :cond_14
    move v2, v5

    goto :goto_10

    :cond_15
    move-object/from16 v0, p0

    iput v7, v0, Lcom/github/mikephil/charting/components/Legend;->a:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    :goto_11
    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->b:F

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_17
    move v2, v6

    move v6, v7

    goto/16 :goto_e

    :cond_18
    move v3, v8

    move v8, v2

    goto/16 :goto_b

    :cond_19
    move v6, v8

    goto/16 :goto_5

    :cond_1a
    move v7, v5

    goto/16 :goto_5

    :cond_1b
    move v2, v6

    move v3, v5

    move v5, v7

    move v6, v8

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/components/e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/e;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/e;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->e:[Lcom/github/mikephil/charting/components/e;

    return-void
.end method

.method public a()[Lcom/github/mikephil/charting/components/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->e:[Lcom/github/mikephil/charting/components/e;

    return-object v0
.end method

.method public b(Landroid/graphics/Paint;)F
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->e:[Lcom/github/mikephil/charting/components/e;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    iget-object v1, v1, Lcom/github/mikephil/charting/components/e;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v5, v1, v0

    if-lez v5, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public b()[Lcom/github/mikephil/charting/components/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->f:[Lcom/github/mikephil/charting/components/e;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->g:Z

    return v0
.end method

.method public d()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->h:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-object v0
.end method

.method public e()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->i:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    return-object v0
.end method

.method public f()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->j:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->k:Z

    return v0
.end method

.method public h()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->l:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public i()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->m:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->n:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->o:F

    return v0
.end method

.method public l()Landroid/graphics/DashPathEffect;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->p:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->q:F

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->r:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->s:F

    return v0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->t:F

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->u:F

    return v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/g/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->C:Ljava/util/List;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->D:Ljava/util/List;

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/g/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->E:Ljava/util/List;

    return-object v0
.end method
