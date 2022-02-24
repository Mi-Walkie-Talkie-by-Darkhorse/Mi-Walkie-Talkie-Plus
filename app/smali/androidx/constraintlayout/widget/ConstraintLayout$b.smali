.class Landroidx/constraintlayout/widget/ConstraintLayout$b;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 98
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 99
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_0

    .line 100
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 102
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 103
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(IIIIII)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 2
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    .line 3
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 4
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 6
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    return-void
.end method

.method public final a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->E()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:I

    .line 9
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    .line 10
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    return-void

    .line 11
    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 12
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->c:I

    .line 14
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:I

    .line 15
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    add-int/2addr v8, v9

    .line 16
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 18
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x4

    const/4 v14, -0x2

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v11, v5, :cond_b

    if-eq v11, v15, :cond_9

    if-eq v11, v13, :cond_8

    if-eq v11, v12, :cond_2

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    goto :goto_3

    .line 19
    :cond_2
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 20
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-ne v9, v5, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 21
    :goto_1
    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    const/16 v16, 0x0

    aput v16, v11, v15

    .line 22
    iget-boolean v12, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:Z

    if-eqz v12, :cond_a

    if-eqz v9, :cond_4

    .line 23
    aget v12, v11, v13

    if-eqz v12, :cond_4

    aget v11, v11, v16

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v12

    if-ne v11, v12, :cond_5

    :cond_4
    instance-of v11, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eqz v9, :cond_7

    if-eqz v11, :cond_a

    .line 25
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_0

    .line 26
    :cond_8
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n()I

    move-result v11

    add-int/2addr v9, v11

    const/4 v11, -0x1

    .line 28
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 29
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v11, v9, v15

    goto :goto_0

    .line 30
    :cond_9
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 31
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v14, v9, v15

    :cond_a
    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    const/high16 v9, 0x40000000    # 2.0f

    .line 32
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 33
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v6, v9, v15

    move v6, v11

    goto :goto_0

    .line 34
    :goto_3
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_15

    if-eq v11, v15, :cond_13

    if-eq v11, v13, :cond_12

    const/4 v7, 0x4

    if-eq v11, v7, :cond_c

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_8

    .line 35
    :cond_c
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 36
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    if-ne v8, v5, :cond_d

    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    .line 37
    :goto_4
    iget-object v11, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    const/4 v12, 0x0

    aput v12, v11, v13

    .line 38
    iget-boolean v12, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:Z

    if-eqz v12, :cond_14

    if-eqz v8, :cond_e

    .line 39
    aget v12, v11, v15

    if-eqz v12, :cond_e

    aget v11, v11, v5

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v12

    if-ne v11, v12, :cond_f

    :cond_e
    instance-of v11, v10, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_10

    :cond_f
    const/4 v11, 0x1

    goto :goto_5

    :cond_10
    const/4 v11, 0x0

    :goto_5
    if-eqz v8, :cond_11

    if-eqz v11, :cond_14

    .line 41
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_6

    .line 42
    :cond_12
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    .line 44
    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 45
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v11, v8, v13

    :goto_6
    move v11, v7

    goto :goto_7

    .line 46
    :cond_13
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 47
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v14, v8, v13

    :cond_14
    move v11, v7

    const/4 v7, 0x1

    goto :goto_8

    :cond_15
    const/high16 v8, 0x40000000    # 2.0f

    .line 48
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 49
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v7, v8, v13

    :goto_7
    const/4 v7, 0x0

    .line 50
    :goto_8
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_16

    const/4 v8, 0x1

    goto :goto_9

    :cond_16
    const/4 v8, 0x0

    .line 51
    :goto_9
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_17

    const/4 v12, 0x1

    goto :goto_a

    :cond_17
    const/4 v12, 0x0

    .line 52
    :goto_a
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v14, :cond_19

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_18

    goto :goto_b

    :cond_18
    const/4 v4, 0x0

    goto :goto_c

    :cond_19
    :goto_b
    const/4 v4, 0x1

    .line 53
    :goto_c
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v14, :cond_1b

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v14, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    goto :goto_e

    :cond_1b
    :goto_d
    const/4 v3, 0x1

    :goto_e
    const/4 v14, 0x0

    if-eqz v8, :cond_1c

    .line 54
    iget v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1c

    const/4 v13, 0x1

    goto :goto_f

    :cond_1c
    const/4 v13, 0x0

    :goto_f
    if-eqz v12, :cond_1d

    .line 55
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    cmpl-float v5, v5, v14

    if-lez v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    .line 56
    :goto_10
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 57
    iget-boolean v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:Z

    if-nez v15, :cond_1f

    if-eqz v8, :cond_1f

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    if-nez v8, :cond_1f

    if-eqz v12, :cond_1f

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    if-eqz v8, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1a

    .line 58
    :cond_1f
    :goto_11
    instance-of v8, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v8, :cond_20

    instance-of v8, v1, Landroidx/constraintlayout/solver/widgets/j;

    if-eqz v8, :cond_20

    .line 59
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/solver/widgets/j;

    .line 60
    move-object v12, v10

    check-cast v12, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v12, v8, v6, v11}, Landroidx/constraintlayout/widget/VirtualLayout;->a(Landroidx/constraintlayout/solver/widgets/j;II)V

    goto :goto_12

    .line 61
    :cond_20
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 62
    :goto_12
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 63
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 64
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v15

    if-eqz v9, :cond_21

    .line 65
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    const/16 v16, 0x0

    aput v8, v9, v16

    const/16 v18, 0x2

    .line 66
    aput v12, v9, v18

    goto :goto_13

    :cond_21
    const/16 v16, 0x0

    const/16 v18, 0x2

    .line 67
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v16, v9, v16

    .line 68
    aput v16, v9, v18

    :goto_13
    if-eqz v7, :cond_22

    .line 69
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    const/4 v9, 0x1

    aput v12, v7, v9

    const/16 v17, 0x3

    .line 70
    aput v8, v7, v17

    goto :goto_14

    :cond_22
    const/4 v9, 0x1

    const/16 v17, 0x3

    .line 71
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    aput v16, v7, v9

    .line 72
    aput v16, v7, v17

    .line 73
    :goto_14
    iget v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    if-lez v7, :cond_23

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_15

    :cond_23
    move v7, v8

    .line 75
    :goto_15
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-lez v9, :cond_24

    .line 76
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 77
    :cond_24
    iget v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    if-lez v9, :cond_25

    .line 78
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_16

    :cond_25
    move v9, v12

    .line 79
    :goto_16
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    if-lez v0, :cond_26

    .line 80
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_26
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v13, :cond_27

    if-eqz v4, :cond_27

    .line 81
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    int-to-float v4, v9

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v7, v0

    goto :goto_17

    :cond_27
    if-eqz v5, :cond_28

    if-eqz v3, :cond_28

    .line 82
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->P:F

    int-to-float v4, v7

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_28
    :goto_17
    if-ne v8, v7, :cond_2a

    if-eq v12, v9, :cond_29

    goto :goto_19

    :cond_29
    move v0, v7

    move v3, v9

    :goto_18
    const/4 v4, -0x1

    goto :goto_1a

    :cond_2a
    :goto_19
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v8, v7, :cond_2b

    .line 83
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_2b
    if-eq v12, v9, :cond_2c

    .line 84
    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 85
    :cond_2c
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 86
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 87
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 88
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v4

    goto :goto_18

    :goto_1a
    if-eq v15, v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v4, 0x0

    .line 89
    :goto_1b
    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->c:I

    if-ne v0, v5, :cond_2f

    iget v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:I

    if-eq v3, v5, :cond_2e

    goto :goto_1c

    :cond_2e
    const/4 v5, 0x0

    goto :goto_1d

    :cond_2f
    :goto_1c
    const/4 v5, 0x1

    :goto_1d
    iput-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->i:Z

    .line 90
    iget-boolean v5, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v5, :cond_30

    const/4 v9, 0x1

    goto :goto_1e

    :cond_30
    move v9, v4

    :goto_1e
    if-eqz v9, :cond_31

    const/4 v4, -0x1

    if-eq v15, v4, :cond_31

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->d()I

    move-result v1

    if-eq v1, v15, :cond_31

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->i:Z

    .line 93
    :cond_31
    iput v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:I

    .line 94
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    .line 95
    iput-boolean v9, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->h:Z

    .line 96
    iput v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    return-void
.end method
