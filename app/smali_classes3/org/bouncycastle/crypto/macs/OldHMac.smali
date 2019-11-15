.class public Lorg/bouncycastle/crypto/macs/OldHMac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40

.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private outputPad:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/OldHMac;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return v0
.end method

.method public getUnderlyingDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/OldHMac;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
