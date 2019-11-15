.class public Lorg/bouncycastle/crypto/tls/TlsNullCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v11, 0x50

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v10, v0, v1

    invoke-static {p1, v10}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int v8, v4, v1

    new-instance v4, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    move-object v5, p1

    move-object v6, p3

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v1, v8

    if-eq v1, v10, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    move-object v4, v0

    :cond_4
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    :goto_2
    return-void

    :cond_5
    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    goto :goto_2
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_0

    add-int v0, p5, p6

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    if-ge p6, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    sub-int v7, p6, v0

    add-int v0, p5, v7

    add-int v1, p5, p6

    invoke-static {p4, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    add-int v0, p5, v7

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-nez v0, :cond_0

    add-int v0, p5, p6

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    array-length v0, v1

    add-int/2addr v0, p6

    new-array v0, v0, [B

    invoke-static {p4, p5, v0, v8, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    invoke-static {v1, v8, v0, p6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method
