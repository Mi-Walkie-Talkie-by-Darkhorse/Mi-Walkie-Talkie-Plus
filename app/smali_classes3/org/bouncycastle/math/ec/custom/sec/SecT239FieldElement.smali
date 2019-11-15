.class public Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected x:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xef

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecT239FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->fromBigInteger(Ljava/math/BigInteger;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    return-void
.end method

.method protected constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->add([J[J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addOne([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    iget-object v1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->eq64([J[J)Z

    move-result v0

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "SecT239Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public getK1()I
    .locals 1

    const/16 v0, 0x9e

    return v0
.end method

.method public getK2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getK3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getM()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 4

    const v0, 0x16caffe

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([JII)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->invert([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne64([J)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v2, p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p3, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v3, p3, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiplyAddToExt([J[J[J)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiplyAddToExt([J[J[J)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->sqrt([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public squareMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v2, p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareAddToExt([J[J)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiplyAddToExt([J[J[J)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    invoke-static {v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    new-instance p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    goto :goto_0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->toBigInteger64([J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
