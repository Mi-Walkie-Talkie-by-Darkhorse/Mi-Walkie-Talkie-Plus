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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p4, p5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->secret:[B

    instance-of p3, p2, Lorg/bouncycastle/crypto/digests/LongDigest;

    if-eqz p3, :cond_0

    const/16 p3, 0x80

    iput p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    const/16 p3, 0x10

    goto :goto_0

    :cond_0
    const/16 p3, 0x40

    iput p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    const/16 p3, 0x8

    :goto_0
    iput p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lorg/bouncycastle/crypto/tls/SSL3Mac;

    invoke-direct {p3, p2}, Lorg/bouncycastle/crypto/tls/SSL3Mac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    const/16 p3, 0x14

    if-ne p2, p3, :cond_2

    const/4 p2, 0x4

    iput p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    goto :goto_1

    :cond_1
    new-instance p3, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {p3, p2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object p1

    iget-boolean p1, p1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    const/16 p2, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->macLength:I

    :cond_3
    return-void
.end method


# virtual methods
.method public calculateMac(JS[BII)[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v2, 0xb

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    :goto_0
    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 p1, 0x8

    invoke-static {p3, v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    if-nez v1, :cond_1

    const/16 p1, 0x9

    invoke-static {v0, v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    :cond_1
    add-int/lit8 p1, v2, -0x2

    invoke-static {p6, v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, v3, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1, p4, p5, p6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2, p1, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsMac;->truncate([B)[B

    move-result-object p1

    return-object p1
.end method

.method public calculateMacConstantTime(JS[BIII[B)[B
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto :goto_0

    :cond_0
    const/16 p2, 0xd

    :goto_0
    add-int/2addr p7, p2

    invoke-virtual {p0, p7}, Lorg/bouncycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result p3

    add-int/2addr p2, p6

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result p2

    sub-int/2addr p3, p2

    :goto_1
    add-int/lit8 p3, p3, -0x1

    const/4 p2, 0x0

    if-ltz p3, :cond_1

    iget-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    iget p5, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    invoke-interface {p4, p8, p2, p5}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    aget-byte p2, p8, p2

    invoke-interface {p3, p2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Mac;->reset()V

    return-object p1
.end method

.method protected getDigestBlockCount(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestOverhead:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsMac;->digestBlockSize:I

    div-int/2addr p1, v0

    return p1
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

    return-object p1

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method
