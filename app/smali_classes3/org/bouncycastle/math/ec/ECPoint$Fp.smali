.class public Lorg/bouncycastle/math/ec/ECPoint$Fp;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unsupported coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-virtual {v8, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v3, v6, v4, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v9, 0x0

    aget-object v5, v5, v9

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    if-eqz v9, :cond_5

    :goto_1
    if-eqz v10, :cond_6

    :goto_2
    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    if-eqz v9, :cond_7

    :goto_3
    if-eqz v10, :cond_8

    :goto_4
    invoke-virtual {v8, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    if-eqz v9, :cond_c

    move-object v6, v5

    :cond_b
    :goto_5
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7, v2, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v9, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :cond_c
    if-nez v10, :cond_b

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    move-object v6, v5

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v11, v5, v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v12, v5, v6

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    const/4 v9, 0x0

    if-nez v13, :cond_f

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v8, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v6, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object v7, v2

    move-object v2, v9

    :goto_6
    const/4 v6, 0x4

    if-ne v10, v6, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    :goto_7
    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :cond_f
    if-eqz v13, :cond_10

    move-object v5, v7

    move-object v6, v8

    :goto_8
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-eqz v8, :cond_11

    :goto_9
    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    goto :goto_8

    :cond_11
    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v7, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_9

    :cond_12
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14, v15, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    if-nez v13, :cond_17

    invoke-virtual {v7, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_a
    if-nez v8, :cond_14

    invoke-virtual {v2, v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :cond_14
    if-ne v2, v7, :cond_16

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v6

    goto/16 :goto_6

    :cond_15
    const/4 v2, 0x1

    new-array v6, v2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v7, v6, v2

    goto/16 :goto_7

    :cond_16
    move-object v7, v2

    move-object v5, v4

    move-object v2, v9

    move-object v4, v6

    goto/16 :goto_6

    :cond_17
    move-object v2, v7

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected doubleProductFromSquares(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected eight(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v1, v3

    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 14

    const/4 v12, 0x1

    const/4 v7, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'e\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_2
    if-ne p1, v12, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v10

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-ge v0, v12, :cond_5

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_6

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :cond_6
    :goto_2
    :pswitch_2
    move v6, v7

    move-object v8, v0

    move-object v5, v3

    move-object v3, v4

    :goto_3
    if-ge v6, p1, :cond_9

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0, v9}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v4

    :goto_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v8, v0

    move-object v3, v9

    move-object v13, v2

    move-object v2, v5

    move-object v5, v13

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_5

    :cond_9
    packed-switch v10, :pswitch_data_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-array v4, v12, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v4, v7

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-array v4, v12, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v7

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v7

    aput-object v5, v4, v12

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :cond_a
    move-object v2, v5

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v0, v13

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    if-eqz v6, :cond_3

    move-object v4, v5

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    if-eqz v6, :cond_5

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-array v4, v14, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v4, v13

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v0, v13

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v10, 0x3

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v6, :cond_6

    move-object v0, v4

    :goto_4
    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v7, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object v3, v2

    :goto_5
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v8}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->eight(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0, v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-nez v6, :cond_b

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object v5, v0

    :goto_6
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-array v4, v14, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v4, v13

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-eqz v6, :cond_9

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-virtual {v3, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->four(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v11

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v12

    if-ge v11, v12, :cond_a

    invoke-virtual {v10, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_7

    :cond_a
    invoke-virtual {v10, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_7

    :pswitch_4
    invoke-virtual {p0, v14}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move-object v5, v0

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v1, v8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->three(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object v5, v0

    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v6, v1

    :goto_1
    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v4, v8

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object v6, v0

    goto :goto_1
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9

    if-ne p0, p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p0

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    new-instance p1, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-boolean v2, p0, Lorg/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {p1, v1, v3, v0, v2}, Lorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected two(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
