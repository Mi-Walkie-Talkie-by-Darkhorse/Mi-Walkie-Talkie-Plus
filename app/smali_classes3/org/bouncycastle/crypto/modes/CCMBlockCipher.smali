.class public Lorg/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lorg/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    new-instance v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 8

    const/16 v7, 0x10

    const/4 v0, 0x1

    const/4 v6, 0x0

    new-instance v2, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    new-array v3, v7, [B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-byte v1, v3, v6

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :cond_0
    aget-byte v1, v3, v6

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    div-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    aget-byte v1, v3, v6

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v4, v4

    rsub-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x7

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, p3

    :goto_0
    if-lez v1, :cond_1

    array-length v4, v3

    sub-int/2addr v4, v0

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v3

    invoke-interface {v2, v3, v6, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v1

    const v0, 0xff00

    if-ge v1, v0, :cond_4

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v0, v1

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    const/4 v0, 0x2

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v4, v4

    invoke-interface {v2, v3, v6, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    invoke-interface {v2, v3, v6, v4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_3
    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    :goto_2
    if-eq v0, v7, :cond_5

    invoke-interface {v2, v6}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    const/4 v0, -0x2

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v0, v1, 0x10

    int-to-byte v0, v0

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v0, v1

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    const/4 v0, 0x6

    goto :goto_1

    :cond_5
    invoke-interface {v2, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {v2, p4, v6}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method private getAssociatedTextLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v0, v0

    goto :goto_0
.end method

.method private hasAssociatedText()Z
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v0, v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nonce must have length from 7 to 13 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameters passed to CCM: "

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

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return-void
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CCM cipher unitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v0, v0

    rsub-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x8

    shl-int v1, v3, v1

    if-lt p3, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CCM packet too large for choice of q."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v1, v1, [B

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, v1, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    invoke-static {v0, v7, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v3, v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-direct {v2, v4, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v3, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int v2, p3, v0

    array-length v0, p4

    add-int v1, v2, p5

    if-ge v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v3, v0, v7, v4, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, p5

    move v1, p2

    :goto_0
    add-int v5, p2, p3

    iget v6, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_3

    invoke-interface {v3, p1, v1, p4, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v0, v5

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v1, v5

    goto :goto_0

    :cond_3
    iget v5, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v5, v5, [B

    add-int v6, p3, p2

    sub-int/2addr v6, v1

    invoke-static {p1, v1, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3, v5, v7, v5, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v3, p3, p2

    sub-int v1, v3, v1

    invoke-static {v5, v7, p4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p5, p3

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v4, v7, p4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_1
    return v0

    :cond_4
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge p3, v0, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v2, p3, v0

    array-length v0, p4

    add-int v1, v2, p5

    if-ge v0, v1, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int v0, p2, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {p1, v0, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v3, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v1, v1

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_3
    add-int v4, p2, v2

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_7

    invoke-interface {v3, p1, v1, p4, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v0, v4

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v1, v4

    goto :goto_3

    :cond_7
    iget v4, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v4, v4, [B

    sub-int v5, v1, p2

    sub-int v5, v2, v5

    invoke-static {p1, v1, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3, v4, v7, v4, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr v1, p2

    sub-int v1, v2, v1

    invoke-static {v4, v7, p4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    invoke-direct {p0, p4, p5, v2, v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in CCM failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, p5

    move v1, p2

    goto :goto_3
.end method

.method public processPacket([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v4, v0, [B

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    return-object v4

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge p3, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v4, v0, [B

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    return-void
.end method
