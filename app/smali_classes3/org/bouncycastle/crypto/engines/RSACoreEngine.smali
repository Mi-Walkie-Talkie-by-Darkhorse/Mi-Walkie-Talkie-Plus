.class Lorg/bouncycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;


# instance fields
.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p3, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for RSA cipher."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for RSA cipher."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    array-length v0, p1

    if-eq p3, v0, :cond_3

    :cond_2
    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for RSA cipher."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v0
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    array-length v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    if-le v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    array-length v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    aget-byte v0, v1, v4

    if-nez v0, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getInputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_0
.end method

.method public processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RSACoreEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method
