.class public Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

.field private label:Ljava/lang/String;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    return-void
.end method

.method private generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le p3, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for Cramer Shoup cipher."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for Cramer Shoup cipher."

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

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for Cramer Shoup cipher."

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

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v0, :cond_1

    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    array-length v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

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

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

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

.method public decryptBlock(Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;)Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getH()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->getU1()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->getU2()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->getE()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v2, v3, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v3, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;

    const-string v1, "Sorry, that ciphertext is not correct"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptBlock(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getH()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    array-length v8, v7

    invoke-interface {v6, v7, v9, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    array-length v8, v7

    invoke-interface {v6, v7, v9, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    array-length v8, v7

    invoke-interface {v6, v7, v9, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v8, v7

    invoke-interface {v6, v7, v9, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_1
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    invoke-interface {v6, v7, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v6, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getC()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/bouncycastle/crypto/engines/CramerShoupCiphertext;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getInputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

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
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    return-void
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_0

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method
