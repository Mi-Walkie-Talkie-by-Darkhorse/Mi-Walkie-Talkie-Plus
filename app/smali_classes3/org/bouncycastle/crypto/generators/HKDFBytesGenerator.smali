.class public Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private currentT:[B

.field private generatedBytes:I

.field private hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

.field private hashLen:I

.field private info:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    return-void
.end method

.method private expandNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    iget v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void
.end method

.method private extract([B[B)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p2

    invoke-virtual {v0, p2, v3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    mul-int/lit16 v1, v1, 0xff

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    sub-int v0, p3, v1

    add-int/2addr v1, p2

    :goto_0
    if-lez v0, :cond_2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return p3
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getUnderlyingDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtract()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getInfo()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extract([B[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method
