.class Landroidx/constraintlayout/motion/widget/p;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/p;",
        ">;"
    }
.end annotation


# static fields
.field static o:[Ljava/lang/String;


# instance fields
.field a:La/c/a/a/c;

.field b:I

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:I

.field k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:[D

.field n:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/p;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->i:F

    .line 4
    sget v1, Landroidx/constraintlayout/motion/widget/c;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->j:I

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    .line 6
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 7
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    new-array v0, v0, [D

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->n:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 11
    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->i:F

    .line 12
    sget v1, Landroidx/constraintlayout/motion/widget/c;->e:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->j:I

    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->l:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 15
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    new-array v0, v0, [D

    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->n:[D

    .line 17
    iget v0, p3, Landroidx/constraintlayout/motion/widget/i;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 18
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/p;->k(Landroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V

    return-void

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/p;->m(IILandroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V

    return-void

    .line 20
    :cond_1
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/p;->l(Landroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V

    return-void
.end method

.method private c(FF)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/widget/b$a;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/widget/b$a;->c:Landroidx/constraintlayout/widget/b$c;

    iget-object v0, v0, Landroidx/constraintlayout/widget/b$c;->c:Ljava/lang/String;

    invoke-static {v0}, La/c/a/a/c;->c(Ljava/lang/String;)La/c/a/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/widget/b$a;->c:Landroidx/constraintlayout/widget/b$c;

    iget v1, v0, Landroidx/constraintlayout/widget/b$c;->d:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->j:I

    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/b$c;->g:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/p;->i:F

    .line 4
    iget v0, v0, Landroidx/constraintlayout/widget/b$c;->e:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/p;->b:I

    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/widget/b$a;->b:Landroidx/constraintlayout/widget/b$d;

    iget v0, v0, Landroidx/constraintlayout/widget/b$d;->e:F

    .line 6
    iget-object v0, p1, Landroidx/constraintlayout/widget/b$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p1, Landroidx/constraintlayout/widget/b$a;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 9
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->e:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_0

    .line 10
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/p;)I
    .locals 1
    .param p1    # Landroidx/constraintlayout/motion/widget/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->d:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/p;->d:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/p;->b(Landroidx/constraintlayout/motion/widget/p;)I

    move-result p1

    return p1
.end method

.method d(Landroidx/constraintlayout/motion/widget/p;[Z[Ljava/lang/String;Z)V
    .locals 3

    const/4 p3, 0x0

    .line 1
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/p;->d:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/p;->d:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/p;->c(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x1

    .line 2
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/p;->e:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/p;->e:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/p;->c(FF)Z

    move-result v1

    or-int/2addr v1, p4

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x2

    .line 3
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/p;->f:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/p;->f:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/p;->c(FF)Z

    move-result v1

    or-int/2addr p4, v1

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x3

    .line 4
    aget-boolean p4, p2, p3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->g:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/p;->g:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/p;->c(FF)Z

    move-result v0

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x4

    .line 5
    aget-boolean p4, p2, p3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/p;->h:F

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/p;->c(FF)Z

    move-result p1

    or-int/2addr p1, p4

    aput-boolean p1, p2, p3

    return-void
.end method

.method e([D[I)V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->d:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->e:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->f:F

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->g:F

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->h:F

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->i:F

    const/4 v4, 0x5

    aput v2, v1, v4

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 3
    aget v4, p2, v3

    if-ge v4, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 4
    aget v5, p2, v3

    aget v5, v1, v5

    float-to-double v5, v5

    aput-wide v5, p1, v2

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method f([I[D[FI)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->g:F

    .line 4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p;->h:F

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    .line 6
    aget-wide v7, p2, v4

    double-to-float v5, v7

    .line 7
    aget v7, p1, v4

    if-eq v7, v6, :cond_3

    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    const/4 v6, 0x3

    if-eq v7, v6, :cond_1

    const/4 v6, 0x4

    if-eq v7, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    const/4 p2, 0x0

    add-float/2addr v0, p2

    .line 8
    aput v0, p3, p4

    add-int/2addr p4, v6

    div-float/2addr v3, p1

    add-float/2addr v1, v3

    add-float/2addr v1, p2

    .line 9
    aput v1, p3, p4

    return-void
.end method

.method g(Ljava/lang/String;[DI)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->d()F

    move-result p1

    float-to-double v2, p1

    aput-wide v2, p2, p3

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->f()I

    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->e([F)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 7
    aget v3, v1, p1

    float-to-double v3, v3

    aput-wide v3, p2, p3

    add-int/lit8 p1, p1, 0x1

    move p3, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method h(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->f()I

    move-result p1

    return p1
.end method

.method i([I[D[FI)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/p;->g:F

    .line 4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/p;->h:F

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 6
    aget-wide v5, p2, v4

    double-to-float v5, v5

    .line 7
    aget v6, p1, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-float/2addr v2, v0

    add-float/2addr v3, v1

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    const/4 p1, 0x0

    add-float p2, v0, p1

    add-float v4, v1, p1

    add-float v5, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    add-float v6, v3, p1

    add-float/2addr v0, p1

    add-float/2addr v3, p1

    add-int/lit8 p1, p4, 0x1

    .line 10
    aput p2, p3, p4

    add-int/lit8 p2, p1, 0x1

    .line 11
    aput v4, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 12
    aput v5, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 13
    aput v1, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 14
    aput v2, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 15
    aput v6, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 16
    aput v0, p3, p2

    .line 17
    aput v3, p3, p1

    return-void
.end method

.method j(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method k(Landroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget v4, v1, Landroidx/constraintlayout/motion/widget/c;->a:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 2
    iput v4, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    .line 3
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->i:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/p;->b:I

    .line 4
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->j:F

    .line 5
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/i;->k:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/i;->k:F

    .line 6
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/p;->g:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float v9, v7, v8

    .line 7
    iget v10, v3, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float v12, v10, v11

    .line 8
    iget v13, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/p;->d:F

    .line 9
    iget v13, v2, Landroidx/constraintlayout/motion/widget/p;->e:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v8, v14

    add-float/2addr v15, v13

    .line 10
    iget v1, v2, Landroidx/constraintlayout/motion/widget/p;->f:F

    div-float v16, v11, v14

    add-float v16, v1, v16

    .line 11
    iget v2, v3, Landroidx/constraintlayout/motion/widget/p;->e:F

    div-float/2addr v7, v14

    add-float/2addr v2, v7

    .line 12
    iget v3, v3, Landroidx/constraintlayout/motion/widget/p;->f:F

    div-float/2addr v10, v14

    add-float/2addr v3, v10

    sub-float/2addr v2, v15

    sub-float v3, v3, v16

    mul-float v7, v2, v4

    add-float/2addr v13, v7

    mul-float v9, v9, v5

    div-float v5, v9, v14

    sub-float/2addr v13, v5

    float-to-int v7, v13

    int-to-float v7, v7

    .line 13
    iput v7, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    mul-float v7, v3, v4

    add-float/2addr v1, v7

    mul-float v12, v12, v6

    div-float v6, v12, v14

    sub-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    .line 14
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    .line 15
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->g:F

    add-float/2addr v11, v12

    float-to-int v1, v11

    int-to-float v1, v1

    .line 16
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->h:F

    move-object/from16 v1, p1

    .line 17
    iget v7, v1, Landroidx/constraintlayout/motion/widget/i;->l:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    iget v7, v1, Landroidx/constraintlayout/motion/widget/i;->l:F

    .line 18
    :goto_2
    iget v8, v1, Landroidx/constraintlayout/motion/widget/i;->o:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v1, Landroidx/constraintlayout/motion/widget/i;->o:F

    .line 19
    :goto_3
    iget v10, v1, Landroidx/constraintlayout/motion/widget/i;->m:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    iget v4, v1, Landroidx/constraintlayout/motion/widget/i;->m:F

    .line 20
    :goto_4
    iget v10, v1, Landroidx/constraintlayout/motion/widget/i;->n:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    iget v9, v1, Landroidx/constraintlayout/motion/widget/i;->n:F

    :goto_5
    const/4 v10, 0x2

    .line 21
    iput v10, v0, Landroidx/constraintlayout/motion/widget/p;->l:I

    move-object/from16 v10, p2

    .line 22
    iget v11, v10, Landroidx/constraintlayout/motion/widget/p;->e:F

    mul-float v7, v7, v2

    add-float/2addr v11, v7

    mul-float v9, v9, v3

    add-float/2addr v11, v9

    sub-float/2addr v11, v5

    float-to-int v5, v11

    int-to-float v5, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 23
    iget v5, v10, Landroidx/constraintlayout/motion/widget/p;->f:F

    mul-float v2, v2, v8

    add-float/2addr v5, v2

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    float-to-int v2, v5

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 24
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/i;->g:Ljava/lang/String;

    invoke-static {v2}, La/c/a/a/c;->c(Ljava/lang/String;)La/c/a/a/c;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    .line 25
    iget v1, v1, Landroidx/constraintlayout/motion/widget/i;->h:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->j:I

    return-void
.end method

.method l(Landroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget v4, v1, Landroidx/constraintlayout/motion/widget/c;->a:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 2
    iput v4, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    .line 3
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->i:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/p;->b:I

    .line 4
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->j:F

    .line 5
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/i;->k:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/i;->k:F

    .line 6
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/p;->g:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float/2addr v7, v8

    .line 7
    iget v8, v3, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float/2addr v8, v9

    .line 8
    iget v9, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    iput v9, v0, Landroidx/constraintlayout/motion/widget/p;->d:F

    .line 9
    iget v9, v1, Landroidx/constraintlayout/motion/widget/i;->l:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    iget v4, v1, Landroidx/constraintlayout/motion/widget/i;->l:F

    .line 10
    :goto_2
    iget v9, v2, Landroidx/constraintlayout/motion/widget/p;->e:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/p;->g:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v10, v11

    add-float/2addr v12, v9

    .line 11
    iget v13, v2, Landroidx/constraintlayout/motion/widget/p;->f:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/p;->h:F

    div-float v15, v14, v11

    add-float/2addr v15, v13

    .line 12
    iget v2, v3, Landroidx/constraintlayout/motion/widget/p;->e:F

    iget v1, v3, Landroidx/constraintlayout/motion/widget/p;->g:F

    div-float/2addr v1, v11

    add-float/2addr v2, v1

    .line 13
    iget v1, v3, Landroidx/constraintlayout/motion/widget/p;->f:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/p;->h:F

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    sub-float/2addr v2, v12

    sub-float/2addr v1, v15

    mul-float v3, v2, v4

    add-float/2addr v9, v3

    mul-float v7, v7, v5

    div-float v5, v7, v11

    sub-float/2addr v9, v5

    float-to-int v9, v9

    int-to-float v9, v9

    .line 14
    iput v9, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    mul-float v4, v4, v1

    add-float/2addr v13, v4

    mul-float v8, v8, v6

    div-float v6, v8, v11

    sub-float/2addr v13, v6

    float-to-int v9, v13

    int-to-float v9, v9

    .line 15
    iput v9, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    add-float/2addr v10, v7

    float-to-int v7, v10

    int-to-float v7, v7

    .line 16
    iput v7, v0, Landroidx/constraintlayout/motion/widget/p;->g:F

    add-float/2addr v14, v8

    float-to-int v7, v14

    int-to-float v7, v7

    .line 17
    iput v7, v0, Landroidx/constraintlayout/motion/widget/p;->h:F

    move-object/from16 v7, p1

    .line 18
    iget v8, v7, Landroidx/constraintlayout/motion/widget/i;->m:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v7, Landroidx/constraintlayout/motion/widget/i;->m:F

    :goto_3
    neg-float v1, v1

    mul-float v1, v1, v8

    mul-float v2, v2, v8

    const/4 v8, 0x1

    .line 19
    iput v8, v0, Landroidx/constraintlayout/motion/widget/p;->l:I

    move-object/from16 v8, p2

    .line 20
    iget v9, v8, Landroidx/constraintlayout/motion/widget/p;->e:F

    add-float/2addr v9, v3

    sub-float/2addr v9, v5

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 21
    iget v5, v8, Landroidx/constraintlayout/motion/widget/p;->f:F

    add-float/2addr v5, v4

    sub-float/2addr v5, v6

    float-to-int v4, v5

    int-to-float v4, v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    add-float/2addr v3, v1

    .line 22
    iput v3, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    add-float/2addr v4, v2

    .line 23
    iput v4, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 24
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/i;->g:Ljava/lang/String;

    invoke-static {v1}, La/c/a/a/c;->c(Ljava/lang/String;)La/c/a/a/c;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    .line 25
    iget v1, v7, Landroidx/constraintlayout/motion/widget/i;->h:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->j:I

    return-void
.end method

.method m(IILandroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    iget v4, v1, Landroidx/constraintlayout/motion/widget/c;->a:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 2
    iput v4, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    .line 3
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->i:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/p;->b:I

    .line 4
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/i;->j:F

    .line 5
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/i;->k:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/i;->k:F

    .line 6
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/p;->g:F

    iget v8, v2, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float v9, v7, v8

    .line 7
    iget v10, v3, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float v12, v10, v11

    .line 8
    iget v13, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/p;->d:F

    .line 9
    iget v13, v2, Landroidx/constraintlayout/motion/widget/p;->e:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v8, v14

    add-float/2addr v15, v13

    .line 10
    iget v2, v2, Landroidx/constraintlayout/motion/widget/p;->f:F

    div-float v16, v11, v14

    add-float v16, v2, v16

    .line 11
    iget v1, v3, Landroidx/constraintlayout/motion/widget/p;->e:F

    div-float/2addr v7, v14

    add-float/2addr v1, v7

    .line 12
    iget v3, v3, Landroidx/constraintlayout/motion/widget/p;->f:F

    div-float/2addr v10, v14

    add-float/2addr v3, v10

    sub-float/2addr v1, v15

    sub-float v3, v3, v16

    mul-float v1, v1, v4

    add-float/2addr v13, v1

    mul-float v9, v9, v5

    div-float v1, v9, v14

    sub-float/2addr v13, v1

    float-to-int v1, v13

    int-to-float v1, v1

    .line 13
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    mul-float v12, v12, v6

    div-float v1, v12, v14

    sub-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 14
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    .line 15
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->g:F

    add-float/2addr v11, v12

    float-to-int v1, v11

    int-to-float v1, v1

    .line 16
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->h:F

    const/4 v1, 0x3

    .line 17
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->l:I

    move-object/from16 v1, p3

    .line 18
    iget v2, v1, Landroidx/constraintlayout/motion/widget/i;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v2, p1

    int-to-float v2, v2

    .line 19
    iget v3, v0, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 20
    iget v3, v1, Landroidx/constraintlayout/motion/widget/i;->l:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 21
    :cond_2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/i;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    move/from16 v2, p2

    int-to-float v2, v2

    .line 22
    iget v3, v0, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 23
    iget v3, v1, Landroidx/constraintlayout/motion/widget/i;->m:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 24
    :cond_3
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/i;->g:Ljava/lang/String;

    invoke-static {v2}, La/c/a/a/c;->c(Ljava/lang/String;)La/c/a/a/c;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    .line 25
    iget v1, v1, Landroidx/constraintlayout/motion/widget/i;->h:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->j:I

    return-void
.end method

.method n(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 2
    iput p2, p0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 3
    iput p3, p0, Landroidx/constraintlayout/motion/widget/p;->g:F

    .line 4
    iput p4, p0, Landroidx/constraintlayout/motion/widget/p;->h:F

    return-void
.end method

.method o(FF[F[I[D[D)V
    .locals 12

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    :goto_0
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v3, v8, :cond_4

    .line 2
    aget-wide v10, p5, v3

    double-to-float v8, v10

    .line 3
    aget-wide v10, p6, v3

    .line 4
    aget v10, v0, v3

    if-eq v10, v9, :cond_3

    const/4 v9, 0x2

    if-eq v10, v9, :cond_2

    const/4 v9, 0x3

    if-eq v10, v9, :cond_1

    const/4 v9, 0x4

    if-eq v10, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    mul-float v0, v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float v0, v2, v7

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v5, v0

    mul-float v7, v7, v0

    add-float/2addr v5, v4

    add-float/2addr v7, v6

    sub-float v3, v0, p1

    mul-float v4, v4, v3

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 5
    aput v4, p3, v1

    sub-float/2addr v0, p2

    mul-float v6, v6, v0

    mul-float v7, v7, p2

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 6
    aput v6, p3, v9

    return-void
.end method

.method p(Landroid/view/View;[I[D[D[D)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    .line 2
    iget v4, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    .line 3
    iget v5, v0, Landroidx/constraintlayout/motion/widget/p;->g:F

    .line 4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/p;->h:F

    .line 5
    array-length v7, v2

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    array-length v7, v7

    array-length v9, v2

    sub-int/2addr v9, v8

    aget v9, v2, v9

    if-gt v7, v9, :cond_0

    .line 6
    array-length v7, v2

    sub-int/2addr v7, v8

    aget v7, v2, v7

    add-int/2addr v7, v8

    .line 7
    new-array v9, v7, [D

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    .line 8
    new-array v7, v7, [D

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/p;->n:[D

    .line 9
    :cond_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v9, 0x0

    .line 10
    :goto_0
    array-length v10, v2

    if-ge v9, v10, :cond_1

    .line 11
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    aget v11, v2, v9

    aget-wide v12, p3, v9

    aput-wide v12, v10, v11

    .line 12
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/p;->n:[D

    aget v11, v2, v9

    aget-wide v12, p4, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    const/high16 v11, 0x7fc00000    # Float.NaN

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 13
    :goto_1
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    array-length v9, v7

    if-ge v10, v9, :cond_b

    .line 14
    aget-wide v17, v7, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    const-wide/16 v17, 0x0

    if-eqz v7, :cond_3

    if-eqz p5, :cond_2

    aget-wide v19, p5, v10

    cmpl-double v7, v19, v17

    if-nez v7, :cond_3

    :cond_2
    move/from16 p4, v3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    if-eqz p5, :cond_4

    .line 15
    aget-wide v17, p5, v10

    .line 16
    :cond_4
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    aget-wide v19, v7, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/p;->m:[D

    aget-wide v19, v7, v10

    add-double v17, v19, v17

    :goto_2
    move/from16 p4, v3

    move-wide/from16 v2, v17

    double-to-float v2, v2

    .line 17
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/p;->n:[D

    aget-wide v8, v3, v10

    double-to-float v3, v8

    const/4 v7, 0x1

    if-eq v10, v7, :cond_a

    const/4 v8, 0x2

    if-eq v10, v8, :cond_9

    const/4 v8, 0x3

    if-eq v10, v8, :cond_8

    const/4 v8, 0x4

    if-eq v10, v8, :cond_7

    const/4 v3, 0x5

    if-eq v10, v3, :cond_6

    :goto_3
    move/from16 v3, p4

    goto :goto_4

    :cond_6
    move/from16 v3, p4

    move v11, v2

    goto :goto_4

    :cond_7
    move v6, v2

    move v15, v3

    goto :goto_3

    :cond_8
    move v5, v2

    move v13, v3

    goto :goto_3

    :cond_9
    move v4, v2

    move v14, v3

    goto :goto_3

    :cond_a
    move v12, v3

    move v3, v2

    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_b
    move/from16 p4, v3

    const/4 v7, 0x1

    .line 18
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 19
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_e

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_5

    :cond_c
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 21
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v2, 0x0

    :cond_d
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v13, v3

    add-float/2addr v12, v13

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    float-to-double v2, v2

    float-to-double v8, v11

    float-to-double v10, v14

    float-to-double v12, v12

    .line 22
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-double/2addr v2, v8

    double-to-float v2, v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :cond_e
    :goto_5
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, p4, v2

    float-to-int v8, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v5, v3, v8

    sub-int v6, v4, v2

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ne v5, v9, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eq v6, v9, :cond_f

    goto :goto_6

    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/16 v16, 0x1

    :goto_7
    if-eqz v16, :cond_11

    const/high16 v7, 0x40000000    # 2.0f

    .line 25
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 26
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 27
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 28
    :cond_11
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
