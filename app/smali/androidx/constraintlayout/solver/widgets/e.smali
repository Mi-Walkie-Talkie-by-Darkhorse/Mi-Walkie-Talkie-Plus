.class public Landroidx/constraintlayout/solver/widgets/e;
.super Landroidx/constraintlayout/solver/widgets/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/e$a;
    }
.end annotation


# instance fields
.field private Q0:I

.field private R0:I

.field private S0:I

.field private T0:I

.field private U0:I

.field private V0:I

.field private W0:F

.field private X0:F

.field private Y0:F

.field private Z0:F

.field private a1:F

.field private b1:F

.field private c1:I

.field private d1:I

.field private e1:I

.field private f1:I

.field private g1:I

.field private h1:I

.field private i1:I

.field private j1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private m1:[I

.field private n1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private o1:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/j;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->S0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->T0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->U0:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->V0:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->W0:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->X0:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->Y0:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->Z0:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->a1:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->b1:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    const/4 v2, 0x2

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/e;->e1:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/e;->f1:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->g1:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->m1:[I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/e;->o1:I

    return-void
.end method

.method private final a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v0

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/j;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p2

    :cond_3
    const/4 p2, 0x1

    if-ne v1, p2, :cond_4

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result p1

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result p1

    return p1
.end method

.method static synthetic a(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    return p0
.end method

.method static synthetic a(Landroidx/constraintlayout/solver/widgets/e;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method private a([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-nez v3, :cond_4

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    if-gtz v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v2, :cond_3

    if-lez v7, :cond_0

    iget v9, v0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    add-int/2addr v8, v9

    :cond_0
    aget-object v9, v1, v7

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {v0, v9, v4}, Landroidx/constraintlayout/solver/widgets/e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    move v7, v6

    const/4 v6, 0x0

    goto :goto_6

    :cond_4
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    if-gtz v6, :cond_8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v2, :cond_8

    if-lez v7, :cond_5

    iget v9, v0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    add-int/2addr v8, v9

    :cond_5
    aget-object v9, v1, v7

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    invoke-direct {v0, v9, v4}, Landroidx/constraintlayout/solver/widgets/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v4, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    const/4 v7, 0x0

    :goto_6
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/e;->m1:[I

    if-nez v8, :cond_9

    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v0, Landroidx/constraintlayout/solver/widgets/e;->m1:[I

    :cond_9
    const/4 v8, 0x1

    if-nez v6, :cond_a

    if-eq v3, v8, :cond_b

    :cond_a
    if-nez v7, :cond_c

    if-nez v3, :cond_c

    :cond_b
    const/4 v9, 0x1

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_22

    if-nez v3, :cond_d

    int-to-float v6, v2

    int-to-float v10, v7

    div-float/2addr v6, v10

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_8

    :cond_d
    int-to-float v7, v2

    int-to-float v10, v6

    div-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    :goto_8
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_f

    array-length v12, v10

    if-ge v12, v7, :cond_e

    goto :goto_9

    :cond_e
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    :goto_9
    new-array v10, v7, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_a
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_11

    array-length v12, v10

    if-ge v12, v6, :cond_10

    goto :goto_b

    :cond_10
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_11
    :goto_b
    new-array v10, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_c
    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_1a

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v6, :cond_19

    mul-int v12, v11, v7

    add-int/2addr v12, v10

    if-ne v3, v8, :cond_12

    mul-int v12, v10, v6

    add-int/2addr v12, v11

    :cond_12
    array-length v13, v1

    if-lt v12, v13, :cond_13

    goto :goto_f

    :cond_13
    aget-object v12, v1, v12

    if-nez v12, :cond_14

    goto :goto_f

    :cond_14
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v14, v10

    if-eqz v15, :cond_15

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v14

    if-ge v14, v13, :cond_16

    :cond_15
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v12, v13, v10

    :cond_16
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v14, v11

    if-eqz v15, :cond_17

    aget-object v14, v14, v11

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v14

    if-ge v14, v13, :cond_18

    :cond_17
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v12, v13, v11

    :cond_18
    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_19
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_1a
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_10
    if-ge v10, v7, :cond_1d

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v10

    if-eqz v12, :cond_1c

    if-lez v10, :cond_1b

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    add-int/2addr v11, v13

    :cond_1b
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v11, v12

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_1d
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_11
    if-ge v10, v6, :cond_20

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v13, v13, v10

    if-eqz v13, :cond_1f

    if-lez v10, :cond_1e

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    add-int/2addr v12, v14

    :cond_1e
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_20
    aput v11, p5, v5

    aput v12, p5, v8

    if-nez v3, :cond_21

    if-le v11, v4, :cond_b

    if-le v7, v8, :cond_b

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_7

    :cond_21
    if-le v12, v4, :cond_b

    if-le v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_7

    :cond_22
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/e;->m1:[I

    aput v7, v1, v5

    aput v6, v1, v8

    return-void
.end method

.method private final b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/j;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_2
    return p2

    :cond_3
    const/4 p2, 0x1

    if-ne v1, p2, :cond_4

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result p1

    return p1

    :cond_4
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result p1

    return p1
.end method

.method static synthetic b(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/solver/widgets/e;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method private b([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 28

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v10, Landroidx/constraintlayout/solver/widgets/e$a;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/e$a;-><init>(Landroidx/constraintlayout/solver/widgets/e;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez p3, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_e

    aget-object v12, p1, v11

    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/e;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v14, v0

    if-eq v1, v15, :cond_2

    iget v0, v8, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_3

    :cond_2
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/e$a;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-lez v11, :cond_4

    iget v2, v8, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    if-lez v2, :cond_4

    rem-int v2, v11, v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_6

    new-instance v10, Landroidx/constraintlayout/solver/widgets/e$a;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/e$a;-><init>(Landroidx/constraintlayout/solver/widgets/e;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/e$a;->b(I)V

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v13

    goto :goto_2

    :cond_6
    if-lez v11, :cond_5

    iget v0, v8, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    :goto_2
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_e

    aget-object v12, p1, v11

    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/e;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    move v14, v0

    if-eq v1, v15, :cond_9

    iget v0, v8, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_a

    :cond_9
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/e$a;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_b

    if-lez v11, :cond_b

    iget v2, v8, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    if-lez v2, :cond_b

    rem-int v2, v11, v2

    if-nez v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    if-eqz v0, :cond_d

    new-instance v10, Landroidx/constraintlayout/solver/widgets/e$a;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/e$a;-><init>(Landroidx/constraintlayout/solver/widgets/e;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/e$a;->b(I)V

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move v1, v13

    goto :goto_5

    :cond_d
    if-lez v11, :cond_c

    iget v0, v8, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    :goto_5
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_3

    :cond_e
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->M()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->O()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->N()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->L()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_f

    goto :goto_6

    :cond_f
    const/4 v11, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v11, 0x1

    :goto_7
    if-lez v0, :cond_12

    if-eqz v11, :cond_12

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_12

    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/e$a;

    if-nez p3, :cond_11

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/e$a;->c()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/e$a;->a(I)V

    goto :goto_9

    :cond_11
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/e$a;->b()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/e$a;->a(I)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    move/from16 v22, v7

    move v0, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v7, v6

    move-object v6, v3

    move-object v3, v2

    move v2, v10

    :goto_a
    if-ge v14, v1, :cond_18

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroidx/constraintlayout/solver/widgets/e$a;

    if-nez p3, :cond_15

    add-int/lit8 v2, v1, -0x1

    if-ge v14, v2, :cond_13

    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/e$a;

    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/e$a;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x0

    goto :goto_b

    :cond_13
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->L()I

    move-result v5

    :goto_b
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/e$a;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v24, v11

    move-object v11, v3

    move-object/from16 p1, v3

    move v3, v12

    move-object v12, v6

    move v6, v13

    move-object v13, v4

    move-object/from16 p2, v4

    move v4, v14

    move-object v14, v2

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v0

    move/from16 v18, v5

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/e$a;->a(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/e$a;->c()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/e$a;->b()I

    move-result v9

    add-int v12, v3, v9

    if-lez v4, :cond_14

    iget v3, v8, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    add-int/2addr v12, v3

    :cond_14
    move-object/from16 v3, p1

    move v13, v6

    move-object/from16 v6, v24

    const/16 v22, 0x0

    move-object/from16 v24, p2

    move/from16 v27, v5

    move-object v5, v2

    move/from16 v2, v27

    goto/16 :goto_d

    :cond_15
    move-object/from16 p1, v3

    move v3, v12

    move v0, v13

    move v4, v14

    add-int/lit8 v9, v1, -0x1

    if-ge v4, v9, :cond_16

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/e$a;

    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/e$a;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v9

    const/16 v25, 0x0

    goto :goto_c

    :cond_16
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->N()I

    move-result v10

    move-object/from16 v24, v9

    move/from16 v25, v10

    :goto_c
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/e$a;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v15, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, v24

    move-object v14, v5

    move-object/from16 v26, v15

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v19, p4

    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/e$a;->a(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/e$a;->c()I

    move-result v7

    add-int v13, v0, v7

    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/e$a;->b()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v4, :cond_17

    iget v3, v8, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    add-int/2addr v13, v3

    :cond_17
    move v12, v0

    move/from16 v0, v25

    move-object/from16 v3, v26

    const/4 v7, 0x0

    :goto_d
    add-int/lit8 v14, v4, 0x1

    move/from16 v15, p4

    move-object/from16 v4, v24

    goto/16 :goto_a

    :cond_18
    move v3, v12

    move v0, v13

    aput v0, p5, v21

    aput v3, p5, v20

    return-void
.end method

.method static synthetic c(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->S0:I

    return p0
.end method

.method private c([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 22

    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    new-instance v11, Landroidx/constraintlayout/solver/widgets/e$a;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/e$a;-><init>(Landroidx/constraintlayout/solver/widgets/e;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/e$a;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/e$a;->a()V

    iget-object v13, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->M()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->O()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->N()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->L()I

    move-result v20

    move-object v11, v0

    move/from16 v12, p3

    move-object/from16 v16, v1

    move/from16 v21, p4

    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/solver/widgets/e$a;->a(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v11, v1}, Landroidx/constraintlayout/solver/widgets/e$a;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/e$a;->c()I

    move-result v0

    aput v0, p5, v10

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/e$a;->b()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    return-void
.end method

.method static synthetic d(Landroidx/constraintlayout/solver/widgets/e;)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->Y0:F

    return p0
.end method

.method static synthetic e(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->U0:I

    return p0
.end method

.method static synthetic f(Landroidx/constraintlayout/solver/widgets/e;)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->a1:F

    return p0
.end method

.method private f(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->m1:[I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/e;->o1:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/e;->n1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->H()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/e;->m1:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v2, :cond_8

    if-eqz p1, :cond_2

    sub-int v7, v2, v5

    sub-int/2addr v7, v3

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v8, v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v8

    if-ne v8, v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/j;->M()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i(I)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/e;->W0:F

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(F)V

    :cond_4
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_5

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/j;->N()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_5
    if-lez v5, :cond_6

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_6
    move-object v4, v7

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-ge p1, v1, :cond_e

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p1

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v7

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    if-nez p1, :cond_a

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/j;->O()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n(I)V

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/e;->X0:F

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(F)V

    :cond_a
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_b

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/j;->L()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_b
    if-lez p1, :cond_c

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_c
    move-object v4, v5

    :cond_d
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    :goto_6
    if-ge p1, v2, :cond_15

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_14

    mul-int v5, v4, v2

    add-int/2addr v5, p1

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    if-ne v7, v3, :cond_f

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    :cond_f
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/e;->n1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v8, v7

    if-lt v5, v8, :cond_10

    goto :goto_8

    :cond_10
    aget-object v5, v7, v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v7

    if-ne v7, v6, :cond_11

    goto :goto_8

    :cond_11
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/e;->l1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, p1

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/e;->k1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v4

    if-eq v5, v7, :cond_12

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_12
    if-eq v5, v8, :cond_13

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_15
    :goto_9
    return-void
.end method

.method static synthetic g(Landroidx/constraintlayout/solver/widgets/e;)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->X0:F

    return p0
.end method

.method static synthetic h(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->T0:I

    return p0
.end method

.method static synthetic i(Landroidx/constraintlayout/solver/widgets/e;)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->Z0:F

    return p0
.end method

.method static synthetic j(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->V0:I

    return p0
.end method

.method static synthetic k(Landroidx/constraintlayout/solver/widgets/e;)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->b1:F

    return p0
.end method

.method static synthetic l(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->e1:I

    return p0
.end method

.method static synthetic m(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->o1:I

    return p0
.end method

.method static synthetic n(Landroidx/constraintlayout/solver/widgets/e;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/e;->n1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p0
.end method

.method static synthetic o(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    return p0
.end method

.method static synthetic p(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->f1:I

    return p0
.end method

.method static synthetic q(Landroidx/constraintlayout/solver/widgets/e;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    return p0
.end method

.method static synthetic r(Landroidx/constraintlayout/solver/widgets/e;)F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/e;->W0:F

    return p0
.end method


# virtual methods
.method public A(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->T0:I

    return-void
.end method

.method public B(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->e1:I

    return-void
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->U0:I

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->V0:I

    return-void
.end method

.method public G(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    return-void
.end method

.method public I(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->f1:I

    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    return-void
.end method

.method public K(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->g1:I

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/d;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/d;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/d;->R()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/e;->g1:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/e;->f(Z)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/e$a;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, p1, v3, v5}, Landroidx/constraintlayout/solver/widgets/e$a;->a(ZIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/e;->j1:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/e$a;

    invoke-virtual {v1, p1, v0, v2}, Landroidx/constraintlayout/solver/widgets/e$a;->a(ZIZ)V

    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/j;->e(Z)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/h;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    check-cast p1, Landroidx/constraintlayout/solver/widgets/e;

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->S0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->S0:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->T0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->T0:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->U0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->U0:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->V0:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->V0:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->W0:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->W0:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->X0:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->X0:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->Y0:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->Y0:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->Z0:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->Z0:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->a1:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->a1:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->b1:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->b1:F

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->c1:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->d1:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->e1:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->e1:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->f1:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->f1:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->g1:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->g1:I

    iget p2, p1, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/e;->h1:I

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    return-void
.end method

.method public b(IIII)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget v0, v6, Landroidx/constraintlayout/solver/widgets/h;->E0:I

    const/4 v11, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->P()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/solver/widgets/j;->d(II)V

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/j;->e(Z)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->M()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->N()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->O()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/j;->L()I

    move-result v15

    const/4 v0, 0x2

    new-array v5, v0, [I

    sub-int v1, v8, v12

    sub-int/2addr v1, v13

    iget v2, v6, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    sub-int v1, v10, v14

    sub-int/2addr v1, v15

    :cond_1
    move/from16 v16, v1

    iget v1, v6, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    const/4 v2, -0x1

    if-nez v1, :cond_3

    iget v1, v6, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    if-ne v1, v2, :cond_2

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    :cond_2
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    if-ne v1, v2, :cond_5

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    goto :goto_0

    :cond_3
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    if-ne v1, v2, :cond_4

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/e;->Q0:I

    :cond_4
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    if-ne v1, v2, :cond_5

    iput v11, v6, Landroidx/constraintlayout/solver/widgets/e;->R0:I

    :cond_5
    :goto_0
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/h;->D0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/h;->E0:I

    const/16 v0, 0x8

    if-ge v2, v11, :cond_7

    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/h;->D0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v11

    if-ne v11, v0, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto :goto_1

    :cond_7
    if-lez v3, :cond_a

    sub-int/2addr v11, v3

    new-array v1, v11, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/h;->E0:I

    if-ge v2, v11, :cond_9

    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/h;->D0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v4

    if-eq v4, v0, :cond_8

    aput-object v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_3

    :cond_a
    move v2, v11

    :goto_3
    iput-object v1, v6, Landroidx/constraintlayout/solver/widgets/e;->n1:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput v2, v6, Landroidx/constraintlayout/solver/widgets/e;->o1:I

    iget v0, v6, Landroidx/constraintlayout/solver/widgets/e;->g1:I

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    move-object/from16 v17, v5

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    move-object/from16 v0, p0

    const/4 v11, 0x1

    move/from16 v4, v16

    move-object/from16 v17, v5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/e;->a([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_4

    :cond_c
    move-object/from16 v17, v5

    const/4 v11, 0x1

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/e;->b([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_4

    :cond_d
    move-object/from16 v17, v5

    const/4 v11, 0x1

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/e;->i1:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/e;->c([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    :goto_4
    const/4 v0, 0x0

    :goto_5
    aget v1, v17, v0

    add-int/2addr v1, v12

    add-int/2addr v1, v13

    aget v2, v17, v11

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v7, v4, :cond_e

    move v1, v8

    goto :goto_6

    :cond_e
    if-ne v7, v3, :cond_f

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_f
    if-nez v7, :cond_10

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_6
    if-ne v9, v4, :cond_11

    move v2, v10

    goto :goto_7

    :cond_11
    if-ne v9, v3, :cond_12

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_7

    :cond_12
    if-nez v9, :cond_13

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v6, v1, v2}, Landroidx/constraintlayout/solver/widgets/j;->d(II)V

    invoke-virtual {v6, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    iget v1, v6, Landroidx/constraintlayout/solver/widgets/h;->E0:I

    if-lez v1, :cond_14

    goto :goto_8

    :cond_14
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/j;->e(Z)V

    return-void
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->Y0:F

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->Z0:F

    return-void
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->W0:F

    return-void
.end method

.method public h(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->a1:F

    return-void
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->b1:F

    return-void
.end method

.method public j(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->X0:F

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/e;->S0:I

    return-void
.end method
