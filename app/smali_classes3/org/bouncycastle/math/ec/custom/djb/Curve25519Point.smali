.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 p1, p0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v5

    check-cast v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v13

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v10, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v5, v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object v7, v10

    :goto_1
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object v4, v10

    :goto_2
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    invoke-static {v4, v7, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    invoke-static {v2, v5, v11}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    iget-object v10, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v5, v11}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    iget-object v5, v7, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object v5, v9

    move-object v7, v11

    goto :goto_1

    :cond_4
    iget-object v10, v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v12}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v12, v2, v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    iget-object v2, v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v12, v2, v12}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v12, v2, v12}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object v2, v12

    move-object v4, v13

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    invoke-static {v10, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v10, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    invoke-static {v7, v4, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->negate([I[I)V

    move-object/from16 v0, v16

    invoke-static {v2, v0, v13}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    move-object/from16 v0, v16

    invoke-static {v9, v9, v0}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    new-instance v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v4, v12}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v11, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v2, v0, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    new-instance v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v12, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v2, v12}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    iget-object v2, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v11, v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiplyAddToExt([I[I[I)V

    iget-object v2, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    new-instance v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v9, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v2, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v6, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v10, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v6, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v2, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v6, v8, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v8, v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v6, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    :cond_8
    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    move-object v2, v7

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    new-instance v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>()V

    if-nez p2, :cond_1

    iget-object p2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    :cond_1
    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p2, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, v3

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v0

    aput-object v0, v1, v3

    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

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

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object p0

    goto :goto_0
.end method

.method protected twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v2, v10

    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    invoke-static {v6, v6, v6}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v2

    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v6}, Lorg/bouncycastle/math/raw/Nat256;->addTo([I[I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v3

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v1, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    invoke-static {v3, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    invoke-static {v8, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    new-instance v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v3, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v9, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    iget-object v0, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v6, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    iget-object v0, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v1, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v8, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    new-instance v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v6, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v1, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v4, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v0, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v4, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v5, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    iget-object v1, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v4}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    move-object v5, v0

    :goto_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v4, v10

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    :cond_1
    move-object v5, v0

    goto :goto_0
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    if-ne p0, p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0
.end method
