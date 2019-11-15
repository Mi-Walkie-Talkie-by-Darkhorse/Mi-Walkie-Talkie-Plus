.class public Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

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

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    const/16 v9, 0x18

    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    const/16 v9, 0x18

    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v10, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v6, v10

    :goto_1
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v4, v10

    :goto_2
    const/16 v10, 0xc

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    invoke-static {v4, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    const/16 v6, 0xc

    invoke-static {v6}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    const/16 v5, 0xc

    invoke-static {v5, v10}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v2, 0xc

    invoke-static {v2, v6}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    iget-object v10, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v10, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v9, v5, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    iget-object v5, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    move-object v5, v9

    move-object v6, v11

    goto :goto_1

    :cond_4
    iget-object v10, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v10, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v2, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    iget-object v2, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v2, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v2, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    move-object v2, v12

    move-object v4, v13

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    invoke-static {v10, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v9, v10, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    invoke-static {v9, v4, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    move-object/from16 v0, v16

    invoke-static {v2, v0, v13}, Lorg/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    const/16 v2, 0xc

    move-object/from16 v0, v16

    invoke-static {v2, v9, v9, v0}, Lorg/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v4, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v2, v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    iget-object v2, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v12, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v9, v2, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    iget-object v2, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v6, v11}, Lorg/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    invoke-static {v13, v11, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    iget-object v2, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v6, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v7, v7, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v9, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v7, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v6, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v7, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    :cond_8
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0xc

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v12

    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v7

    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v9

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    if-nez v9, :cond_2

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    move-object v3, v5

    :cond_2
    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v10, v3, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v10, v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    invoke-static {v5, v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    invoke-static {v11, v5, v5, v5}, Lorg/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v3

    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    const/4 v2, 0x2

    invoke-static {v11, v7, v2, v12}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    invoke-static {v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    const/4 v2, 0x3

    invoke-static {v11, v8, v2, v12, v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v2

    invoke-static {v2, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v10, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    iget-object v7, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v5, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    iget-object v7, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v6, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v6, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    if-nez v9, :cond_3

    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v4, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    :cond_3
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v6, v4, v12

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto/16 :goto_0
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    if-ne p0, p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0
.end method
