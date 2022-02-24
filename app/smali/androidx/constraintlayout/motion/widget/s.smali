.class public abstract Landroidx/constraintlayout/motion/widget/s;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/s$k;,
        Landroidx/constraintlayout/motion/widget/s$e;,
        Landroidx/constraintlayout/motion/widget/s$b;,
        Landroidx/constraintlayout/motion/widget/s$n;,
        Landroidx/constraintlayout/motion/widget/s$m;,
        Landroidx/constraintlayout/motion/widget/s$l;,
        Landroidx/constraintlayout/motion/widget/s$j;,
        Landroidx/constraintlayout/motion/widget/s$i;,
        Landroidx/constraintlayout/motion/widget/s$d;,
        Landroidx/constraintlayout/motion/widget/s$h;,
        Landroidx/constraintlayout/motion/widget/s$g;,
        Landroidx/constraintlayout/motion/widget/s$f;,
        Landroidx/constraintlayout/motion/widget/s$a;,
        Landroidx/constraintlayout/motion/widget/s$c;
    }
.end annotation


# static fields
.field private static k:F = 6.2831855f


# instance fields
.field protected a:La/c/a/a/b;

.field protected b:I

.field protected c:[I

.field protected d:[[F

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[F

.field protected h:Z

.field i:J

.field j:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_0

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->d:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 5
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->g:[F

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/s;->h:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/s;->j:F

    return-void

    :array_0
    .array-data 4
        0xa
        0x3
    .end array-data
.end method

.method static a(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/s;
    .locals 1

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :pswitch_0
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$e;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$e;-><init>()V

    goto :goto_2

    .line 27
    :pswitch_1
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$n;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$n;-><init>()V

    goto :goto_2

    .line 28
    :pswitch_2
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$m;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$m;-><init>()V

    goto :goto_2

    .line 29
    :pswitch_3
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$l;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$l;-><init>()V

    goto :goto_2

    .line 30
    :pswitch_4
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$j;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$j;-><init>()V

    goto :goto_2

    .line 31
    :pswitch_5
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$i;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$i;-><init>()V

    goto :goto_2

    .line 32
    :pswitch_6
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$d;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$d;-><init>()V

    goto :goto_2

    .line 33
    :pswitch_7
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$h;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$h;-><init>()V

    goto :goto_2

    .line 34
    :pswitch_8
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$g;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$g;-><init>()V

    goto :goto_2

    .line 35
    :pswitch_9
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$f;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$f;-><init>()V

    goto :goto_2

    .line 36
    :pswitch_a
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$c;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$c;-><init>()V

    goto :goto_2

    .line 37
    :pswitch_b
    new-instance p0, Landroidx/constraintlayout/motion/widget/s$a;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/s$a;-><init>()V

    .line 38
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/s;->a(J)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/widget/s;"
        }
    .end annotation

    .line 24
    new-instance v0, Landroidx/constraintlayout/motion/widget/s$b;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/s$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method


# virtual methods
.method protected a(F)F
    .locals 3

    .line 18
    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    .line 19
    sget v0, Landroidx/constraintlayout/motion/widget/s;->k:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    .line 20
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v2, p1

    mul-float p1, p1, p1

    :goto_0
    sub-float/2addr v2, p1

    return v2

    .line 21
    :pswitch_1
    sget v0, Landroidx/constraintlayout/motion/widget/s;->k:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    goto :goto_0

    :pswitch_3
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    sub-float/2addr p1, v2

    return p1

    .line 22
    :pswitch_4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    .line 23
    :pswitch_5
    sget v0, Landroidx/constraintlayout/motion/widget/s;->k:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/e;)F
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->a:La/c/a/a/b;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/s;->g:[F

    invoke-virtual {v5, v6, v7, v8}, La/c/a/a/b;->a(D[F)V

    .line 3
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->g:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v7, v9

    if-nez v11, :cond_0

    .line 4
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/s;->h:Z

    .line 5
    aget v1, v5, v8

    return v1

    .line 6
    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->j:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/s;->f:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v10}, Landroidx/constraintlayout/motion/widget/e;->a(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/s;->j:F

    .line 8
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    iput v9, v0, Landroidx/constraintlayout/motion/widget/s;->j:F

    .line 10
    :cond_1
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/s;->i:J

    sub-long v12, v1, v12

    .line 11
    iget v5, v0, Landroidx/constraintlayout/motion/widget/s;->j:F

    float-to-double v14, v5

    long-to-double v12, v12

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v12, v12, v16

    float-to-double v6, v7

    mul-double v12, v12, v6

    add-double/2addr v14, v12

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v14, v5

    double-to-float v5, v14

    iput v5, v0, Landroidx/constraintlayout/motion/widget/s;->j:F

    .line 12
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/s;->f:Ljava/lang/String;

    invoke-virtual {v4, v3, v6, v10, v5}, Landroidx/constraintlayout/motion/widget/e;->a(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 13
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/s;->i:J

    .line 14
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/s;->g:[F

    aget v1, v1, v10

    .line 15
    iget v2, v0, Landroidx/constraintlayout/motion/widget/s;->j:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/s;->a(F)F

    move-result v2

    .line 16
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/s;->g:[F

    aget v3, v3, v8

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    cmpl-float v1, v1, v9

    if-nez v1, :cond_3

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    .line 17
    :goto_1
    iput-boolean v6, v0, Landroidx/constraintlayout/motion/widget/s;->h:Z

    return v2
.end method

.method public a(I)V
    .locals 11

    .line 46
    iget v0, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    if-nez v0, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error no points added to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplineSet"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->d:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/motion/widget/s$k;->a([I[[FII)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 50
    aget v5, v2, v0

    add-int/lit8 v6, v0, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 51
    :cond_3
    new-array v0, v1, [D

    const/4 v2, 0x3

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v3

    aput v1, v6, v4

    .line 52
    const-class v1, D

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 53
    :goto_1
    iget v7, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    if-ge v2, v7, :cond_5

    if-lez v2, :cond_4

    .line 54
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    aget v8, v7, v2

    add-int/lit8 v9, v2, -0x1

    aget v7, v7, v9

    if-ne v8, v7, :cond_4

    goto :goto_2

    .line 55
    :cond_4
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    aget v7, v7, v2

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    aput-wide v7, v0, v6

    .line 56
    aget-object v7, v1, v6

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/s;->d:[[F

    aget-object v9, v8, v2

    aget v9, v9, v4

    float-to-double v9, v9

    aput-wide v9, v7, v4

    .line 57
    aget-object v7, v1, v6

    aget-object v9, v8, v2

    aget v9, v9, v3

    float-to-double v9, v9

    aput-wide v9, v7, v3

    .line 58
    aget-object v7, v1, v6

    aget-object v8, v8, v2

    aget v8, v8, v5

    float-to-double v8, v8

    aput-wide v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_5
    invoke-static {p1, v0, v1}, La/c/a/a/b;->a(I[D[[D)La/c/a/a/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/s;->a:La/c/a/a/b;

    return-void
.end method

.method public a(IFFIF)V
    .locals 3

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    aput p1, v0, v1

    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/s;->d:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x0

    aput p2, v0, v2

    .line 42
    aget-object p2, p1, v1

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 43
    aget-object p1, p1, v1

    const/4 p2, 0x2

    aput p5, p1, p2

    .line 44
    iget p1, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->b:I

    .line 45
    iget p1, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    return-void
.end method

.method protected a(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/s;->i:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/s;->f:Ljava/lang/String;

    return-void
.end method

.method public abstract a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/e;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->f:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/s;->e:I

    if-ge v2, v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->c:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/s;->d:[[F

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
