.class public Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
.super Ljava/lang/Object;


# instance fields
.field protected hash:S

.field protected signature:S


# direct methods
.method public constructor <init>(SS)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signature\' should be a uint8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signature\' MUST NOT be \"anonymous\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    new-instance v2, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    return-object v2
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHash()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->hash:S

    return v0
.end method

.method public getSignature()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->signature:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
