.class public La/c/a/a/f;
.super Ljava/lang/Object;
.source "Oscillator.java"


# instance fields
.field a:[F

.field b:[D

.field c:[D

.field d:I

.field e:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, La/c/a/a/f;->a:[F

    new-array v0, v0, [D

    .line 3
    iput-object v0, p0, La/c/a/a/f;->b:[D

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 4
    iput-wide v0, p0, La/c/a/a/f;->e:D

    return-void
.end method


# virtual methods
.method public a(DF)V
    .locals 4

    .line 1
    iget-object v0, p0, La/c/a/a/f;->a:[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, La/c/a/a/f;->b:[D

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v1

    if-gez v1, :cond_0

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 3
    :cond_0
    iget-object v2, p0, La/c/a/a/f;->b:[D

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v2

    iput-object v2, p0, La/c/a/a/f;->b:[D

    .line 4
    iget-object v2, p0, La/c/a/a/f;->a:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, La/c/a/a/f;->a:[F

    .line 5
    new-array v2, v0, [D

    iput-object v2, p0, La/c/a/a/f;->c:[D

    .line 6
    iget-object v2, p0, La/c/a/a/f;->b:[D

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, La/c/a/a/f;->b:[D

    aput-wide p1, v0, v1

    .line 8
    iget-object p1, p0, La/c/a/a/f;->a:[F

    aput p3, p1, v1

    return-void
.end method

.method b(D)D
    .locals 10

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide p1, 0x3ee4f8b588e368f1L    # 1.0E-5

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    const-wide p1, 0x3feffffde7210be9L    # 0.999999

    .line 1
    :cond_1
    :goto_0
    iget-object v2, p0, La/c/a/a/f;->b:[D

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-lez v2, :cond_2

    return-wide v0

    :cond_2
    if-eqz v2, :cond_3

    neg-int v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, La/c/a/a/f;->a:[F

    aget v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget v4, v1, v3

    sub-float/2addr v2, v4

    float-to-double v4, v2

    iget-object v2, p0, La/c/a/a/f;->b:[D

    aget-wide v6, v2, v0

    aget-wide v8, v2, v3

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    mul-double p1, p1, v4

    .line 3
    aget v0, v1, v3

    float-to-double v0, v0

    aget-wide v6, v2, v3

    mul-double v4, v4, v6

    sub-double/2addr v0, v4

    add-double/2addr v0, p1

    :cond_3
    return-wide v0
.end method

.method c(D)D
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    cmpl-double v4, p1, v0

    if-lez v4, :cond_1

    move-wide p1, v0

    .line 1
    :cond_1
    :goto_0
    iget-object v4, p0, La/c/a/a/f;->b:[D

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    neg-int v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, La/c/a/a/f;->a:[F

    aget v2, v1, v0

    add-int/lit8 v3, v0, -0x1

    aget v4, v1, v3

    sub-float/2addr v2, v4

    float-to-double v4, v2

    iget-object v2, p0, La/c/a/a/f;->b:[D

    aget-wide v6, v2, v0

    aget-wide v8, v2, v3

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 3
    iget-object v0, p0, La/c/a/a/f;->c:[D

    aget-wide v6, v0, v3

    aget v0, v1, v3

    float-to-double v0, v0

    aget-wide v8, v2, v3

    mul-double v8, v8, v4

    sub-double/2addr v0, v8

    aget-wide v8, v2, v3

    sub-double v8, p1, v8

    mul-double v0, v0, v8

    add-double/2addr v6, v0

    mul-double p1, p1, p1

    aget-wide v0, v2, v3

    aget-wide v8, v2, v3

    mul-double v0, v0, v8

    sub-double/2addr p1, v0

    mul-double v4, v4, p1

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    div-double/2addr v4, p1

    add-double v0, v6, v4

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    return-wide v0
.end method

.method public d(D)D
    .locals 9

    .line 1
    iget v0, p0, La/c/a/a/f;->d:I

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-wide v0, p0, La/c/a/a/f;->e:D

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->b(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, La/c/a/a/f;->e:D

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    :goto_0
    mul-double v0, v0, p1

    return-wide v0

    .line 3
    :pswitch_0
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->b(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    add-double/2addr p1, v1

    rem-double/2addr p1, v3

    sub-double/2addr p1, v1

    :goto_1
    mul-double v5, v5, p1

    return-wide v5

    .line 4
    :pswitch_1
    iget-wide v0, p0, La/c/a/a/f;->e:D

    neg-double v0, v0

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->b(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, La/c/a/a/f;->e:D

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->b(D)D

    move-result-wide p1

    neg-double p1, p1

    :goto_2
    mul-double p1, p1, v1

    return-wide p1

    .line 6
    :pswitch_3
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->b(D)D

    move-result-wide p1

    goto :goto_2

    .line 7
    :pswitch_4
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->b(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    add-double/2addr p1, v7

    rem-double/2addr p1, v3

    sub-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->signum(D)D

    move-result-wide p1

    goto :goto_1

    :pswitch_5
    const-wide/16 p1, 0x0

    return-wide p1

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

.method public e(D)D
    .locals 7

    .line 1
    iget v0, p0, La/c/a/a/f;->d:I

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-wide v0, p0, La/c/a/a/f;->e:D

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1

    .line 3
    :pswitch_0
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double p1, p1, v1

    rem-double/2addr p1, v1

    sub-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double p1, v5, p1

    mul-double p1, p1, p1

    :goto_0
    sub-double/2addr v5, p1

    return-wide v5

    .line 4
    :pswitch_1
    iget-wide v0, p0, La/c/a/a/f;->e:D

    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1

    .line 5
    :pswitch_2
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    add-double/2addr p1, v5

    rem-double/2addr p1, v3

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double p1, p1, v3

    add-double/2addr p1, v5

    rem-double/2addr p1, v3

    sub-double/2addr p1, v5

    return-wide p1

    .line 7
    :pswitch_4
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    mul-double p1, p1, v1

    add-double/2addr p1, v5

    rem-double/2addr p1, v1

    sub-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    goto :goto_0

    :pswitch_5
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 8
    invoke-virtual {p0, p1, p2}, La/c/a/a/f;->c(D)D

    move-result-wide p1

    rem-double/2addr p1, v5

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p1

    return-wide p1

    nop

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

.method public f()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget-object v7, v0, La/c/a/a/f;->a:[F

    array-length v8, v7

    if-ge v4, v8, :cond_0

    .line 2
    aget v7, v7, v4

    float-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-wide v8, v2

    const/4 v7, 0x1

    .line 3
    :goto_1
    iget-object v10, v0, La/c/a/a/f;->a:[F

    array-length v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    if-ge v7, v11, :cond_1

    add-int/lit8 v11, v7, -0x1

    .line 4
    aget v13, v10, v11

    aget v10, v10, v7

    add-float/2addr v13, v10

    div-float/2addr v13, v12

    .line 5
    iget-object v10, v0, La/c/a/a/f;->b:[D

    aget-wide v14, v10, v7

    aget-wide v11, v10, v11

    sub-double/2addr v14, v11

    float-to-double v10, v13

    mul-double v14, v14, v10

    add-double/2addr v8, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 6
    :goto_2
    iget-object v10, v0, La/c/a/a/f;->a:[F

    array-length v11, v10

    if-ge v7, v11, :cond_2

    .line 7
    aget v11, v10, v7

    float-to-double v13, v11

    div-double v15, v5, v8

    mul-double v13, v13, v15

    double-to-float v11, v13

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iget-object v5, v0, La/c/a/a/f;->c:[D

    aput-wide v2, v5, v1

    .line 9
    :goto_3
    iget-object v1, v0, La/c/a/a/f;->a:[F

    array-length v2, v1

    if-ge v4, v2, :cond_3

    add-int/lit8 v2, v4, -0x1

    .line 10
    aget v3, v1, v2

    aget v1, v1, v4

    add-float/2addr v3, v1

    div-float/2addr v3, v12

    .line 11
    iget-object v1, v0, La/c/a/a/f;->b:[D

    aget-wide v5, v1, v4

    aget-wide v7, v1, v2

    sub-double/2addr v5, v7

    .line 12
    iget-object v1, v0, La/c/a/a/f;->c:[D

    aget-wide v7, v1, v2

    float-to-double v2, v3

    mul-double v5, v5, v2

    add-double/2addr v7, v5

    aput-wide v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, La/c/a/a/f;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/c/a/a/f;->b:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/c/a/a/f;->a:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
