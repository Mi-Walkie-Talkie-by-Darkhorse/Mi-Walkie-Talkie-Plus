.class Lorg/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final POW_2_WIDTH:B = 0x10t

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 3

    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int v1, v0, p5

    sub-int v0, p4, v1

    add-int/lit8 v0, v0, -0x2

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sub-int v0, v1, p5

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sub-int/2addr v1, p5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v1, v0, p5}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 7

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    move v2, v3

    move-object v4, v1

    move-object v1, v0

    :goto_1
    if-ge v2, p1, :cond_3

    if-ne p0, v3, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    aput-object v1, v0, v3

    return-object v0
.end method

.method public static getMu(I)B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getMu(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getMu(Lorg/bouncycastle/math/ec/ECFieldElement;)B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPreComp(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6

    if-nez p1, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v1, 0x0

    aput-object p0, v2, v1

    array-length v3, v0

    const/4 v1, 0x3

    :goto_1
    if-ge v1, v3, :cond_1

    ushr-int/lit8 v4, v1, 0x1

    aget-object v5, v0, v1

    invoke-static {p0, v5}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object v2
.end method

.method protected static getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v1

    add-int/lit8 v2, p0, 0x3

    sub-int/2addr v2, p1

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v2

    if-ne v0, v5, :cond_0

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v2, v5

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v3, v2, v5

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    return-object v2
.end method

.method public static getSi(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "si is defined for Koblitz curves only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v3

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    invoke-static {v2, v0, v4}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    if-ne v2, v5, :cond_1

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v4

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v5

    :cond_1
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    return-object v2
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    if-ne p0, v2, :cond_0

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v4}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public static multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    move-object v3, v0

    move v0, v2

    :goto_0
    if-ltz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-byte v5, p1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    if-lez v5, :cond_1

    move-object v0, p0

    :goto_1
    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-object v3, v0

    move v0, v2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method public static multiplyRTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    int-to-byte v2, v2

    const/16 v5, 0xa

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static multiplyTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(Lorg/bouncycastle/math/ec/ECFieldElement;)B

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    if-ne p0, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static norm(BLorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p2, p2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    if-ne p0, v3, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/bouncycastle/math/ec/ZTauElement;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-ne p4, v8, :cond_0

    aget-object v0, p3, v9

    aget-object v1, p3, v8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-static {p4, p1, v8}, Lorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v2, v0, v8

    aget-object v1, p3, v9

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v7

    aget-object v1, p3, v8

    move-object v0, p0

    move v3, p2

    move v4, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-static {v7, v0, p4}, Lorg/bouncycastle/math/ec/Tnaf;->round(Lorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, p3, v8

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, v0, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, p3, v8

    iget-object v3, v0, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v3, p3, v9

    iget-object v0, v0, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    :cond_0
    aget-object v0, p3, v9

    aget-object v1, p3, v8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v6, v0

    goto :goto_0
.end method

.method public static round(Lorg/bouncycastle/math/ec/SimpleBigDecimal;Lorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lorg/bouncycastle/math/ec/ZTauElement;
    .locals 10

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq p2, v4, :cond_1

    if-eq p2, v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v6}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p1, v7}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    invoke-virtual {v1, v1}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    if-ne p2, v4, :cond_4

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    if-ne p2, v4, :cond_5

    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    invoke-virtual {v1, v9}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    :goto_1
    sget-object v8, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_6

    sget-object v8, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_2

    move v4, v3

    move v3, p2

    :cond_2
    :goto_2
    sget-object v8, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_8

    sget-object v0, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_7

    neg-int v0, p2

    int-to-byte v3, v0

    :cond_3
    :goto_3
    int-to-long v0, v4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    :cond_4
    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    invoke-virtual {v1, v9}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lorg/bouncycastle/math/ec/SimpleBigDecimal;)Lorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    goto :goto_1

    :cond_6
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_9

    move v4, v3

    move v3, p2

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3

    :cond_8
    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    neg-int v0, p2

    int-to-byte v3, v0

    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_2
.end method

.method public static tau(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static tauAdicNaf(BLorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-eq p0, v8, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/Tnaf;->norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    :goto_0
    new-array v6, v0, [B

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    move v2, v3

    move v4, v3

    :goto_1
    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v7, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    aget-byte v2, v6, v4

    if-ne v2, v8, :cond_3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    :goto_2
    move-object v5, v1

    move v2, v4

    :goto_3
    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    if-ne p0, v8, :cond_5

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_4
    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x22

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    :cond_4
    aput-byte v3, v6, v4

    move-object v5, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v2, 0x1

    new-array v1, v0, [B

    invoke-static {v6, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/Tnaf;->norm(BLorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    :goto_0
    new-array v7, v0, [B

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v2, p1, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    :goto_1
    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_1
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {v4, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-byte v4, v4

    :goto_2
    aput-byte v4, v7, v0

    if-gez v4, :cond_8

    neg-int v4, v4

    int-to-byte v4, v4

    move v6, v4

    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    aget-object v4, p5, v6

    iget-object v4, v4, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, p5, v6

    iget-object v4, v4, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :goto_4
    move-object v4, v3

    :goto_5
    if-ne p0, v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_6
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p2, 0x22

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-byte v4, v4

    goto :goto_2

    :cond_4
    aget-object v4, p5, v6

    iget-object v4, v4, Lorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, p5, v6

    iget-object v4, v4, Lorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_4

    :cond_5
    aput-byte v1, v7, v0

    move-object v4, v3

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_6

    :cond_7
    return-object v7

    :cond_8
    move v6, v4

    move v4, v5

    goto :goto_3
.end method
