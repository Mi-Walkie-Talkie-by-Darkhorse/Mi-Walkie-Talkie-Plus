.class public Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;


# instance fields
.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/ElGamalParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->x:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
