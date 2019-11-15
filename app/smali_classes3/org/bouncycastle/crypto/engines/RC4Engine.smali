.class public Lorg/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_LENGTH:I = 0x100


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private setKey([B)V
    .locals 7

    const/16 v6, 0x100

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    if-nez v1, :cond_0

    new-array v1, v6, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    :goto_1
    if-ge v0, v6, :cond_2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aput-byte v3, v4, v1

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    rem-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC4"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v1, v2, v3

    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void
.end method

.method public returnByte(B)B
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
