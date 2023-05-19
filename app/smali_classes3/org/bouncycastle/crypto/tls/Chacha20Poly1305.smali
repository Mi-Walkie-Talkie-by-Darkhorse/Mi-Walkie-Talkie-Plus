.class public Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

.field protected encryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    const/16 v0, 0x40

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v0, v3, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/4 v3, 0x1

    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v5, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v3, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v4, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method


# virtual methods
.method protected calculateRecordMAC(Lorg/bouncycastle/crypto/params/KeyParameter;[B[BII)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/Poly1305;-><init>()V

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    array-length p1, p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->updateRecordMAC(Lorg/bouncycastle/crypto/Mac;[BII)V

    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->updateRecordMAC(Lorg/bouncycastle/crypto/Mac;[BII)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object p1
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->getPlaintextLimit(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, p6, -0x10

    add-int v1, p5, v0

    add-int/2addr p6, p5

    invoke-static {p4, v1, p6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p6

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->initRecordMAC(Lorg/bouncycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v3

    move-object v1, p0

    move-object v4, p4

    move v5, p5

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/bouncycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object p1

    invoke-static {p1, p6}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/4 v6, 0x0

    move-object v2, p4

    move v3, p5

    move v4, v0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->processBytes([BII[BI)I

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    move-wide/from16 v0, p1

    move/from16 v13, p6

    add-int/lit8 v2, v13, 0x10

    iget-object v3, v6, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->initRecordMAC(Lorg/bouncycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v3

    new-array v14, v2, [B

    iget-object v7, v6, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/4 v12, 0x0

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object v11, v14

    invoke-virtual/range {v7 .. v12}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->processBytes([BII[BI)I

    move/from16 v2, p3

    invoke-virtual {p0, v0, v1, v2, v13}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v3, v14

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/bouncycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v14
.end method

.method protected getAdditionalData(JSI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 p1, 0x8

    invoke-static {p3, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object p1

    const/16 p2, 0x9

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    const/16 p1, 0xb

    invoke-static {p4, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x10

    return p1
.end method

.method protected initRecordMAC(Lorg/bouncycastle/crypto/engines/ChaChaEngine;ZJ)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 p4, 0x0

    invoke-direct {p3, p4, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/16 p2, 0x40

    new-array p2, p2, [B

    const/4 v4, 0x0

    const/16 v5, 0x40

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->processBytes([BII[BI)I

    const/16 p1, 0x20

    const/16 p3, 0x10

    invoke-static {p2, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {p4, p2, p3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {p4}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->clamp([B)V

    return-object p4
.end method

.method protected updateRecordMAC(Lorg/bouncycastle/crypto/Mac;[BII)V
    .locals 2

    invoke-interface {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    int-to-long p2, p4

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
