.class public Landroidx/constraintlayout/solver/widgets/analyzer/b;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/b$a;,
        Landroidx/constraintlayout/solver/widgets/analyzer/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

.field private c:Landroidx/constraintlayout/solver/widgets/d;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:Landroidx/constraintlayout/solver/widgets/d;

    return-void
.end method

.method private a(Landroidx/constraintlayout/solver/widgets/d;Ljava/lang/String;II)V
    .locals 2

    .line 10
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r()I

    move-result p2

    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q()I

    move-result v0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(I)V

    .line 13
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    .line 14
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    .line 15
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    .line 16
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m(I)V

    .line 17
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l(I)V

    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/d;->J()V

    return-void
.end method

.method private a(Landroidx/constraintlayout/solver/widgets/analyzer/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .locals 5

    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 112
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->c:I

    .line 113
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:I

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->i:Z

    .line 115
    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:Z

    .line 116
    iget-object p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 117
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    .line 118
    iget p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 119
    iget v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x4

    if-eqz p3, :cond_4

    .line 120
    iget-object p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    aget p3, p3, v1

    if-ne p3, v3, :cond_4

    .line 121
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p3, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v0, :cond_5

    .line 122
    iget-object p3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l:[I

    aget p3, p3, v2

    if-ne p3, v3, :cond_5

    .line 123
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 124
    :cond_5
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/b$b;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;)V

    .line 125
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    .line 126
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    .line 127
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget-boolean p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->h:Z

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Z)V

    .line 128
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g(I)V

    .line 129
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iput-boolean v1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:Z

    .line 130
    iget-boolean p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->i:Z

    return p1
.end method

.method private b(Landroidx/constraintlayout/solver/widgets/d;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/k;->D0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/d;->L()Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 3
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/k;->D0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 4
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v5, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v5, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    const/4 v6, 0x1

    .line 7
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 8
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-eq v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-direct {p0, v1, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/analyzer/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 10
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/d;->I0:Landroidx/constraintlayout/solver/e;

    if-eqz v4, :cond_4

    .line 11
    iget-wide v5, v4, Landroidx/constraintlayout/solver/e;->a:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroidx/constraintlayout/solver/e;->a:J

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_5
    invoke-interface {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/b$b;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/solver/widgets/d;IIIIIIIII)J
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/d;->L()Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    move-result-object v5

    .line 20
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/k;->D0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v7

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v8

    const/16 v9, 0x80

    .line 23
    invoke-static {v2, v9}, Landroidx/constraintlayout/solver/widgets/i;->a(II)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    const/16 v12, 0x40

    .line 24
    invoke-static {v2, v12}, Landroidx/constraintlayout/solver/widgets/i;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_a

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_a

    .line 25
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/k;->D0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 26
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 27
    :goto_3
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    .line 28
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    .line 29
    :goto_5
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    .line 30
    :cond_6
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v11, :cond_7

    goto :goto_6

    .line 31
    :cond_7
    instance-of v11, v13, Landroidx/constraintlayout/solver/widgets/j;

    if-eqz v11, :cond_8

    goto :goto_6

    .line 32
    :cond_8
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->D()Z

    move-result v11

    if-nez v11, :cond_5

    .line 33
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    :goto_7
    const-wide/16 v11, 0x1

    if-eqz v2, :cond_b

    .line 34
    sget-object v13, Landroidx/constraintlayout/solver/d;->r:Landroidx/constraintlayout/solver/e;

    if-eqz v13, :cond_b

    .line 35
    iget-wide v14, v13, Landroidx/constraintlayout/solver/e;->c:J

    add-long/2addr v14, v11

    iput-wide v14, v13, Landroidx/constraintlayout/solver/e;->c:J

    :cond_b
    const/high16 v13, 0x40000000    # 2.0f

    if-ne v3, v13, :cond_c

    if-eq v4, v13, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :goto_8
    and-int/2addr v2, v14

    const/4 v14, 0x2

    if-eqz v2, :cond_16

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p()I

    move-result v2

    move/from16 v15, p6

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o()I

    move-result v15

    move/from16 v11, p8

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ne v3, v13, :cond_f

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v12

    if-eq v12, v2, :cond_f

    .line 39
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/d;->O()V

    :cond_f
    if-ne v4, v13, :cond_10

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v2

    if-eq v2, v11, :cond_10

    .line 42
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/d;->O()V

    :cond_10
    if-ne v3, v13, :cond_11

    if-ne v4, v13, :cond_11

    .line 44
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/d;->d(Z)Z

    move-result v2

    const/4 v9, 0x2

    goto :goto_a

    .line 45
    :cond_11
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/d;->e(Z)Z

    move-result v2

    if-ne v3, v13, :cond_12

    .line 46
    invoke-virtual {v1, v9, v10}, Landroidx/constraintlayout/solver/widgets/d;->a(ZI)Z

    move-result v11

    and-int/2addr v2, v11

    move v11, v2

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    move v11, v2

    const/4 v2, 0x0

    :goto_9
    if-ne v4, v13, :cond_13

    const/4 v12, 0x1

    .line 47
    invoke-virtual {v1, v9, v12}, Landroidx/constraintlayout/solver/widgets/d;->a(ZI)Z

    move-result v9

    and-int/2addr v9, v11

    add-int/lit8 v2, v2, 0x1

    move/from16 v21, v9

    move v9, v2

    move/from16 v2, v21

    goto :goto_a

    :cond_13
    move v9, v2

    move v2, v11

    :goto_a
    if-eqz v2, :cond_17

    if-ne v3, v13, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    if-ne v4, v13, :cond_15

    const/4 v4, 0x1

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    .line 48
    :goto_c
    invoke-virtual {v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/d;->a(ZZ)V

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    const/4 v9, 0x0

    :cond_17
    :goto_d
    if-eqz v2, :cond_18

    if-eq v9, v14, :cond_37

    :cond_18
    if-lez v6, :cond_19

    .line 49
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b(Landroidx/constraintlayout/solver/widgets/d;)V

    .line 50
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/d;->M()I

    move-result v2

    .line 51
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v6, :cond_1a

    const-string v4, "First pass"

    .line 52
    invoke-direct {v0, v1, v4, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/d;Ljava/lang/String;II)V

    :cond_1a
    if-lez v3, :cond_36

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_1b

    const/4 v12, 0x1

    goto :goto_e

    :cond_1b
    const/4 v12, 0x0

    .line 54
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_1c

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    .line 55
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v6

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v9

    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_10
    if-ge v11, v3, :cond_23

    .line 57
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 58
    instance-of v10, v15, Landroidx/constraintlayout/solver/widgets/j;

    if-nez v10, :cond_1d

    move/from16 p5, v2

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_11

    .line 59
    :cond_1d
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v10

    .line 60
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v14

    move/from16 p5, v2

    const/4 v2, 0x1

    .line 61
    invoke-direct {v0, v5, v15, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/analyzer/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v16

    or-int v2, v13, v16

    .line 62
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/d;->I0:Landroidx/constraintlayout/solver/e;

    move/from16 v16, v7

    move/from16 v17, v8

    if-eqz v13, :cond_1e

    .line 63
    iget-wide v7, v13, Landroidx/constraintlayout/solver/e;->b:J

    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    iput-wide v7, v13, Landroidx/constraintlayout/solver/e;->b:J

    .line 64
    :cond_1e
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v7

    .line 65
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v8

    if-eq v7, v10, :cond_20

    .line 66
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    if-eqz v12, :cond_1f

    .line 67
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    if-le v2, v6, :cond_1f

    .line 68
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 69
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v7

    add-int/2addr v2, v7

    .line 70
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v6, v2

    :cond_1f
    const/4 v2, 0x1

    :cond_20
    if-eq v8, v14, :cond_22

    .line 71
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    if-eqz v4, :cond_21

    .line 72
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    if-le v2, v9, :cond_21

    .line 73
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 74
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v7

    add-int/2addr v2, v7

    .line 75
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v9, v2

    :cond_21
    const/4 v2, 0x1

    .line 76
    :cond_22
    check-cast v15, Landroidx/constraintlayout/solver/widgets/j;

    .line 77
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/j;->Q()Z

    move-result v7

    or-int v13, v2, v7

    :goto_11
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p5

    move/from16 v7, v16

    move/from16 v8, v17

    const/4 v10, 0x0

    const/4 v14, 0x2

    goto/16 :goto_10

    :cond_23
    move/from16 p5, v2

    move/from16 v16, v7

    move/from16 v17, v8

    const/4 v2, 0x0

    const/4 v7, 0x2

    :goto_12
    if-ge v2, v7, :cond_32

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v3, :cond_30

    .line 78
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 79
    instance-of v11, v10, Landroidx/constraintlayout/solver/widgets/g;

    if-eqz v11, :cond_24

    instance-of v11, v10, Landroidx/constraintlayout/solver/widgets/j;

    if-eqz v11, :cond_28

    :cond_24
    instance-of v11, v10, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v11, :cond_25

    goto :goto_14

    .line 80
    :cond_25
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v11

    const/16 v14, 0x8

    if-ne v11, v14, :cond_26

    goto :goto_14

    .line 81
    :cond_26
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/solver/widgets/analyzer/i;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v11, :cond_27

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->j:Z

    if-eqz v11, :cond_27

    goto :goto_14

    .line 82
    :cond_27
    instance-of v11, v10, Landroidx/constraintlayout/solver/widgets/j;

    if-eqz v11, :cond_29

    :cond_28
    :goto_14
    move/from16 v18, v2

    move/from16 p6, v3

    const-wide/16 v19, 0x1

    goto/16 :goto_16

    .line 83
    :cond_29
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v11

    .line 84
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v14

    .line 85
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v15

    const/4 v7, 0x1

    .line 86
    invoke-direct {v0, v5, v10, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/analyzer/b$b;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v18

    or-int v13, v13, v18

    .line 87
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/d;->I0:Landroidx/constraintlayout/solver/e;

    move/from16 v18, v2

    move/from16 p6, v3

    if-eqz v7, :cond_2a

    .line 88
    iget-wide v2, v7, Landroidx/constraintlayout/solver/e;->b:J

    const-wide/16 v19, 0x1

    add-long v2, v2, v19

    iput-wide v2, v7, Landroidx/constraintlayout/solver/e;->b:J

    goto :goto_15

    :cond_2a
    const-wide/16 v19, 0x1

    .line 89
    :goto_15
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v2

    .line 90
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v3

    if-eq v2, v11, :cond_2c

    .line 91
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    if-eqz v12, :cond_2b

    .line 92
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    if-le v2, v6, :cond_2b

    .line 93
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 94
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v7

    add-int/2addr v2, v7

    .line 95
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_2b
    const/4 v13, 0x1

    :cond_2c
    if-eq v3, v14, :cond_2e

    .line 96
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    if-eqz v4, :cond_2d

    .line 97
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    if-le v2, v9, :cond_2d

    .line 98
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()I

    move-result v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 99
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 100
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v9, v2

    :cond_2d
    const/4 v13, 0x1

    .line 101
    :cond_2e
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->C()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v2

    if-eq v15, v2, :cond_2f

    const/4 v13, 0x1

    :cond_2f
    :goto_16
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p6

    move/from16 v2, v18

    const/4 v7, 0x2

    goto/16 :goto_13

    :cond_30
    move/from16 v18, v2

    move/from16 p6, v3

    const-wide/16 v19, 0x1

    if-eqz v13, :cond_31

    const-string v2, "intermediate pass"

    move/from16 v3, v16

    move/from16 v7, v17

    .line 102
    invoke-direct {v0, v1, v2, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/d;Ljava/lang/String;II)V

    const/4 v13, 0x0

    goto :goto_17

    :cond_31
    move/from16 v3, v16

    move/from16 v7, v17

    :goto_17
    add-int/lit8 v2, v18, 0x1

    move/from16 v16, v3

    move/from16 v17, v7

    const/4 v7, 0x2

    move/from16 v3, p6

    goto/16 :goto_12

    :cond_32
    move/from16 v3, v16

    move/from16 v7, v17

    if-eqz v13, :cond_35

    const-string v2, "2nd pass"

    .line 103
    invoke-direct {v0, v1, v2, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/d;Ljava/lang/String;II)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v2

    if-ge v2, v6, :cond_33

    .line 105
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p(I)V

    const/4 v10, 0x1

    goto :goto_18

    :cond_33
    const/4 v10, 0x0

    .line 106
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v2

    if-ge v2, v9, :cond_34

    .line 107
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    const/4 v11, 0x1

    goto :goto_19

    :cond_34
    move v11, v10

    :goto_19
    if-eqz v11, :cond_35

    const-string v2, "3rd pass"

    .line 108
    invoke-direct {v0, v1, v2, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a(Landroidx/constraintlayout/solver/widgets/d;Ljava/lang/String;II)V

    :cond_35
    move/from16 v2, p5

    .line 109
    :cond_36
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/d;->t(I)V

    :cond_37
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public a(Landroidx/constraintlayout/solver/widgets/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/k;->D0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/k;->D0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 4
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 6
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 7
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 8
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/d;->O()V

    return-void
.end method
