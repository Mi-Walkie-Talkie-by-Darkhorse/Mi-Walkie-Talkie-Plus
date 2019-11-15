.class public Lorg/bouncycastle/crypto/tls/TlsStreamCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

.field protected encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

.field protected readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

.field protected usesNonce:Z

.field protected writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/StreamCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v11

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    move/from16 v0, p7

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    mul-int/lit8 v1, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v12, v1, v2

    invoke-static {p1, v12}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v4

    const/4 v5, 0x0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v9, v5, v2

    new-instance v5, Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    move-object v6, p1

    move-object/from16 v7, p5

    move-object v8, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/tls/TlsMac;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/Digest;[BII)V

    invoke-interface/range {p5 .. p5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int v3, v9, v2

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v2, v4, v3, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v6, v3, p6

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    move/from16 v0, p6

    invoke-direct {v3, v4, v6, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v4, v6, p6

    if-eq v4, v12, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_0
    if-eqz v11, :cond_1

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, v3

    :goto_0
    if-eqz p7, :cond_2

    const/16 v3, 0x8

    new-array v4, v3, [B

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v2, v3

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_1
.end method


# virtual methods
.method protected checkMAC(JS[BII[BII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4, p5, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v2, p1

    move v4, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->updateIV(Lorg/bouncycastle/crypto/StreamCipher;ZJ)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->readMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v1

    move/from16 v0, p6

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_1
    sub-int v11, p6, v1

    move/from16 v0, p6

    new-array v5, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->decryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move v6, v11

    move/from16 v7, p6

    move-object v8, v5

    move v10, v11

    invoke-virtual/range {v1 .. v10}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->checkMAC(JS[BII[BII)V

    const/4 v1, 0x0

    invoke-static {v5, v1, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 13

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->usesNonce:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->updateIV(Lorg/bouncycastle/crypto/StreamCipher;ZJ)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    add-int v0, v0, p6

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    move-wide v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->encryptCipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    array-length v3, v1

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-object v4
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsStreamCipher;->writeMac:Lorg/bouncycastle/crypto/tls/TlsMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsMac;->getSize()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected updateIV(Lorg/bouncycastle/crypto/StreamCipher;ZJ)V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method
