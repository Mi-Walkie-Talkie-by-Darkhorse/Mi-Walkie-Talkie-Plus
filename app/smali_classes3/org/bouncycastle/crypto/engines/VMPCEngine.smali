.class public Lorg/bouncycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field protected P:[B

.field protected n:B

.field protected s:B

.field protected workingIV:[B

.field protected workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "VMPC"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length v1, v1

    const/16 v2, 0x300

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method

.method protected initKey([B[B)V
    .locals 8

    const/16 v7, 0x300

    const/16 v4, 0x100

    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v5, v0, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p1

    rem-int v4, v0, v4

    aget-byte v4, p1, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v3, v0, 0xff

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v0, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v5, v0, 0xff

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    array-length v4, p2

    rem-int v4, v0, v4

    aget-byte v4, p2, v4

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v3, v0, 0xff

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v0, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 7

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int v2, v0, p5

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method

.method public returnByte(B)B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v5, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v3, v3, 0xff

    aput-byte v1, v2, v3

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
