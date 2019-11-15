.class public Lorg/bouncycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final cTAG:B = 0x2t

.field private static final hTAG:B = 0x1t

.field private static final nTAG:B


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

.field private cipherInitialized:Z

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private mac:Lorg/bouncycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-instance v0, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    new-instance v0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    return-void
.end method

.method private calculateMac()V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1, v0}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    aget-byte v4, v1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initCipher()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0
.end method

.method private process(B[BI)I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v2, v2

    if-ne v0, v2, :cond_3

    array-length v0, p2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/2addr v2, p3

    if-ge v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v0, v2, v1, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v2, p2, p3, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :goto_0
    iput v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    iput v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v0, v2, v1, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private reset(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->processAADBytes([BII)V

    :cond_1
    return-void
.end method

.method private verifyMac([BI)Z
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v3, v3, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_1

    array-length v2, p1

    add-int v3, p2, v0

    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v5, v1, v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2, v1, v5, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    add-int v2, p2, v0

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v2, p1

    add-int v3, p2, v0

    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v4, v0, v4

    invoke-interface {v2, v3, v5, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v5, v1, v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    invoke-static {v1, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in EAX failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/EAX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getMac()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    :goto_1
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x1

    aput-byte v4, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v4, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v1, v2

    invoke-interface {v0, v2, v4, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {v0, v1, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {v2, v5, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset()V

    return-void

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to EAX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method public processAADByte(B)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    array-length v1, p1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    :goto_0
    if-eq v0, p3, :cond_1

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-direct {p0, v2, p4, v3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    return-void
.end method
