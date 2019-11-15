.class public Lorg/bouncycastle/math/ec/ECFieldElement$Fp;
.super Lorg/bouncycastle/math/ec/ECFieldElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid in Fp field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-void
.end method

.method static calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSqrt(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 10

    const/4 v5, 0x1

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v9

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v7, p1

    move-object v8, v3

    move-object v0, v1

    move-object v1, v2

    :goto_0
    add-int/lit8 v2, v9, 0x1

    if-lt v6, v2, :cond_1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v4, v7}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_1
    add-int/lit8 v6, v6, -0x1

    move-object v7, v2

    move-object v8, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v5

    :goto_2
    if-gt v0, v9, :cond_2

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v1, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    aput-object v2, v0, v5

    return-object v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "Fp"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected modHalf(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->getFieldSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-static {v0, v2}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    invoke-static {v1, v3}, Lorg/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v4, v2, 0x1

    if-le v0, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    if-nez v3, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_5
    :goto_3
    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_3
.end method

.method protected modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 12

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x2

    const/4 v10, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not done yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, v0, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object p0, v0

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    sget-object v6, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    :cond_7
    new-instance v7, Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    invoke-direct {v7, v8, v6}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_7

    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v8, v1, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v7, v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    aget-object v8, v7, v11

    aget-object v7, v7, v10

    invoke-virtual {p0, v7, v7}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {p0, v7}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p0, v0

    goto/16 :goto_0

    :cond_8
    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move-object p0, v0

    goto/16 :goto_0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public squareMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-object v0
.end method
