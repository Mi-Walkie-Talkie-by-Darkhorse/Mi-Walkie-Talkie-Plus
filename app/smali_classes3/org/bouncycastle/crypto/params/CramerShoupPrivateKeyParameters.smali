.class public Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;


# instance fields
.field private pk:Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

.field private x1:Ljava/math/BigInteger;

.field private x2:Ljava/math/BigInteger;

.field private y1:Ljava/math/BigInteger;

.field private y2:Ljava/math/BigInteger;

.field private z:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/CramerShoupParameters;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getPk()Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->pk:Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    return-object v0
.end method

.method public getX1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getZ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setPk(Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->pk:Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    return-void
.end method
