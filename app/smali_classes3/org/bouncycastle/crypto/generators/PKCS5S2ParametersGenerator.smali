.class public Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;


# instance fields
.field private hMac:Lorg/bouncycastle/crypto/Mac;

.field private state:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    return-void
.end method

.method private F([BI[B[BI)V
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, p3

    invoke-interface {v0, p3, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v2

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v4

    invoke-interface {v0, v3, v1, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v0, v3, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v3, v3

    if-eq v0, v3, :cond_2

    add-int v3, p5, v0

    aget-byte v4, p4, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    add-int v0, p1, v7

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v7

    const/4 v0, 0x4

    new-array v3, v0, [B

    mul-int v0, v8, v7

    new-array v4, v0, [B

    const/4 v5, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    if-gt v6, v8, :cond_1

    const/4 v0, 0x3

    :goto_1
    aget-byte v1, v3, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v2, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    add-int/2addr v5, v7

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4

    const/4 v3, 0x0

    div-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v2
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6

    div-int/lit8 v0, p1, 0x8

    div-int/lit8 v1, p2, 0x8

    add-int v2, v0, v1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v3, v4, v2, v0, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v3
.end method
