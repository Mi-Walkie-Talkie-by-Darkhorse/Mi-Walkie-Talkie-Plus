.class public Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 14

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v11

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v8, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object v4, v8

    :goto_1
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v8, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object v2, v8

    :goto_2
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    invoke-static {v2, v4, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    invoke-static {v0, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    invoke-static {v8}, Lorg/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v8, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    move-object v3, v7

    move-object v4, v9

    goto :goto_1

    :cond_4
    iget-object v8, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v0, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    move-object v0, v10

    move-object v2, v11

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    invoke-static {v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    invoke-static {v7, v8, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    invoke-static {v7, v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    invoke-static {v4, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->negate([I[I)V

    invoke-static {v0, v4, v11}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    invoke-static {v7, v7, v4}, Lorg/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v0

    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v2, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v9, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v4, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    iget-object v0, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v9, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiplyAddToExt([I[I[I)V

    iget-object v0, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v11, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    if-nez v12, :cond_7

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    :cond_7
    if-nez v13, :cond_8

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v6, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    :cond_8
    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p1, v0

    goto/16 :goto_0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v11

    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v7

    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v9

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    if-nez v9, :cond_2

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    move-object v3, v5

    :cond_2
    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v3, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v10, v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->add([I[I[I)V

    invoke-static {v5, v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    invoke-static {v5, v5, v5}, Lorg/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v3

    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    const/4 v2, 0x2

    invoke-static {v12, v7, v2, v11}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    invoke-static {v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    const/4 v2, 0x3

    invoke-static {v12, v8, v2, v11, v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v2

    invoke-static {v2, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v2, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v10, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    iget-object v7, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v5, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    iget-object v7, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v7, v6, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->twice([I[I)V

    if-nez v9, :cond_3

    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v4, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    :cond_3
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v4, v11

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto/16 :goto_0
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    if-ne p0, p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0
.end method
