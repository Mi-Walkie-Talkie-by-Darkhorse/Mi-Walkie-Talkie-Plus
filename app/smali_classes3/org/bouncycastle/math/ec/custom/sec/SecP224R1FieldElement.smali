.class public Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement;


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void
.end method

.method private static RM([I[I[I[I[I[I[I)V
    .locals 0

    invoke-static {p4, p2, p6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p6, p0, p6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p3, p1, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p5, p6, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    invoke-static {p3, p2, p6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p5, p3}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {p4, p1, p4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p4, p6, p4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    invoke-static {p4, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    invoke-static {p5, p0, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    return-void
.end method

.method private static RP([I[I[I[I[I)V
    .locals 8

    invoke-static {p0, p3}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v7, v0, :cond_1

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {p2, v2}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v0, 0x1

    shl-int/2addr v0, v7

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RM([I[I[I[I[I[I[I)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static RS([I[I[I[I)V
    .locals 3

    invoke-static {p1, p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    invoke-static {p0, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    invoke-static {p2, p3, p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    invoke-static {p2, p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v0

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    return-void
.end method

.method private static isSquare([I)Z
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    invoke-static {p0, v1}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method private static trySqrt([I[I[I)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    invoke-static {p1, v3}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    aput v0, v4, v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    invoke-static {p0, v3, v4, v5, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RP([I[I[I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    move v2, v0

    :goto_0
    const/16 v8, 0x60

    if-ge v2, v8, :cond_1

    invoke-static {v3, v6}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {v4, v7}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {v3, v4, v5, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    invoke-static {v3}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v1, v7, p2}, Lorg/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    invoke-static {p2, v6, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP224R1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v3}, Lorg/bouncycastle/math/raw/Mod;->random([I)[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    invoke-static {v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isSquare([I)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->trySqrt([I[I[I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    goto :goto_1

    :cond_3
    invoke-static {v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    invoke-static {v1, v3}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    goto :goto_0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
