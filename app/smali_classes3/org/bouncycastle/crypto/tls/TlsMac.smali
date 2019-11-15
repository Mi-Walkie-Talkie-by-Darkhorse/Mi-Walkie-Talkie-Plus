.class public Lorg/bouncycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected digestBlockSize:I

.field protected digestOverhead:I

.field protected mac:Lorg/bouncycastle/crypto/Mac;

.field protected macLength:I

.field protected secret:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p4, p5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->secret:[B

    instance-of v1, p2, Lorg/bouncycastle/crypto/digests/LongDigest;

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/crypto/tls/SSL3Mac;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/tls/SSL3Mac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x40

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    const/16 v1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    goto :goto_1
.end method


# virtual methods
.method public calculateMac(JS[BII)[B
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    :goto_0
    new-array v0, v0, [B

    invoke-static {p1, p2, v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 v3, 0x8

    invoke-static {p3, v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    if-nez v2, :cond_0

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    invoke-static {p6, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->truncate([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public calculateMacConstantTime(JS[BIII[B)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p6}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    :goto_0
    add-int v2, v0, p7

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result v2

    add-int/2addr v0, p6

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result v0

    sub-int v0, v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    invoke-interface {v2, p8, v4, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    aget-byte v2, p8, v4

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    return-object v1
.end method

.method protected getDigestBlockCount(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getMACSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->secret:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    return v0
.end method

.method protected truncate([B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0
.end method
