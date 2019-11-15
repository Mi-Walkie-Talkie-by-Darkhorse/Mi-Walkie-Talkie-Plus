.class public Lorg/bouncycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;


# instance fields
.field private IV:[B

.field V:[B

.field agree:Lorg/bouncycastle/crypto/BasicAgreement;

.field cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

.field private keyParser:Lorg/bouncycastle/crypto/KeyParser;

.field mac:Lorg/bouncycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/bouncycastle/crypto/params/IESParameters;

.field privParam:Lorg/bouncycastle/crypto/CipherParameters;

.field pubParam:Lorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->macBuf:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method private decryptBlock([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Length of input must be greater than the MAC and V combined"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v4, v0

    invoke-interface {v3, v0, v5, v4}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    if-eqz v3, :cond_1

    array-length v3, v1

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v1

    array-length v4, v2

    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v0, v2

    new-array v4, v0, [B

    move v0, v5

    :goto_1
    array-length v3, v2

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    add-int/2addr v3, p2

    add-int/2addr v3, v0

    aget-byte v3, p1, v3

    aget-byte v6, v2, v0

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v3, v2

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    array-length v4, v1

    invoke-static {v0, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    array-length v0, v2

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v3

    const/4 v2, 0x0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v6, v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/engines/IESEngine;->getLengthTag([B)[B

    move-result-object v2

    :cond_3
    add-int v6, p2, p3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {p1, v7, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [B

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v8, v9}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v8, v8

    add-int/2addr v8, p2

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v9, v9

    sub-int v9, p3, v9

    array-length v10, v7

    sub-int/2addr v9, v10

    invoke-interface {v1, p1, v8, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    if-eqz v3, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v8, v3

    invoke-interface {v1, v3, v5, v8}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v3, v2

    invoke-interface {v1, v2, v5, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v7, v5}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid MAC."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v6, v1, [B

    array-length v1, v0

    array-length v2, v6

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    array-length v2, v0

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    array-length v3, v6

    invoke-static {v1, v2, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, v5, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    sub-int v1, p3, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    add-int v2, p2, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    sub-int v1, p3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int v3, v1, v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, v6

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v5, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_3

    :cond_8
    invoke-static {v4, v5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private encryptBlock([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-nez v0, :cond_1

    new-array v2, p3, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v1, v2

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v4, v1

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    array-length v3, v0

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    array-length v4, v2

    invoke-static {v1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-array v4, p3, [B

    move v1, v5

    :goto_1
    if-eq v1, p3, :cond_2

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    aget-byte v6, v2, v1

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v3, v2

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    invoke-static {v1, p3, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v6, v1, [B

    array-length v1, v0

    array-length v2, v6

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    array-length v2, v0

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    array-length v3, v6

    invoke-static {v1, v2, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int p3, v0, v1

    move-object v0, v6

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v2

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/IESEngine;->getLengthTag([B)[B

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v6, v4

    invoke-interface {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v6, v2

    invoke-interface {v0, v2, v5, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, v1

    invoke-interface {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, v3, v5}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    add-int/2addr v0, p3

    array-length v1, v3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    invoke-static {v4, v5, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v1, v1

    add-int/2addr v1, p3

    array-length v2, v3

    invoke-static {v3, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_2
.end method

.method private extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->IV:[B

    check-cast p1, Lorg/bouncycastle/crypto/params/IESParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    goto :goto_0
.end method


# virtual methods
.method public getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-object v0
.end method

.method protected getLengthTag([B)[B
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    array-length v1, p1

    int-to-long v2, v1

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->mac:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/KeyParser;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p3, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/engines/IESEngine;->extractParams(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyPairGenerator:Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->privParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->agree:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move-object v1, v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/params/KDFParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->param:Lorg/bouncycastle/crypto/params/IESParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;->encryptBlock([BII)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_1
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->keyParser:Lorg/bouncycastle/crypto/KeyParser;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/KeyParser;->readKey(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->pubParam:Lorg/bouncycastle/crypto/CipherParameters;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, p3, v0

    add-int/2addr v0, p2

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IESEngine;->V:[B

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to recover ephemeral public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/IESEngine;->decryptBlock([BII)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    throw v0
.end method
