.class public abstract Lorg/bouncycastle/math/field/FiniteFields;
.super Ljava/lang/Object;


# static fields
.field static final GF_2:Lorg/bouncycastle/math/field/FiniteField;

.field static final GF_3:Lorg/bouncycastle/math/field/FiniteField;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/field/PrimeField;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/bouncycastle/math/field/FiniteFields;->GF_2:Lorg/bouncycastle/math/field/FiniteField;

    new-instance v0, Lorg/bouncycastle/math/field/PrimeField;

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lorg/bouncycastle/math/field/FiniteFields;->GF_3:Lorg/bouncycastle/math/field/FiniteField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinaryExtensionField([I)Lorg/bouncycastle/math/field/PolynomialExtensionField;
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Irreducible polynomials in GF(2) must have constant term"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-gt v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polynomial exponents must be montonically increasing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;

    sget-object v1, Lorg/bouncycastle/math/field/FiniteFields;->GF_2:Lorg/bouncycastle/math/field/FiniteField;

    new-instance v2, Lorg/bouncycastle/math/field/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/bouncycastle/math/field/GF2Polynomial;-><init>([I)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;-><init>(Lorg/bouncycastle/math/field/FiniteField;Lorg/bouncycastle/math/field/Polynomial;)V

    return-object v0
.end method

.method public static getPrimeField(Ljava/math/BigInteger;)Lorg/bouncycastle/math/field/FiniteField;
    .locals 2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'characteristic\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/math/field/PrimeField;

    invoke-direct {v0, p0}, Lorg/bouncycastle/math/field/PrimeField;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/math/field/FiniteFields;->GF_2:Lorg/bouncycastle/math/field/FiniteField;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/math/field/FiniteFields;->GF_3:Lorg/bouncycastle/math/field/FiniteField;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
