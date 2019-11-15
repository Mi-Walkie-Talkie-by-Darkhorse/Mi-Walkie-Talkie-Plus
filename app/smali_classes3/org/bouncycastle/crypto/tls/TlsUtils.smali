.class public Lorg/bouncycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_SHORTS:[S

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    new-array v0, v1, [S

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_SHORTS:[S

    new-array v0, v1, [I

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_INTS:[I

    new-array v0, v1, [J

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_LONGS:[J

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsUtils;->genSSL3Const()[[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PRF available for SSLv3 session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0, v1, p4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    new-array v0, p4, [B

    invoke-static {v2, p1, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    goto :goto_0
.end method

.method public static PRF_legacy([BLjava/lang/String;[BI)[B
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static PRF_legacy([B[B[BI)[B
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    new-array v3, v1, [B

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, p3, [B

    new-array v4, p3, [B

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    invoke-static {v5, v2, p2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-static {v2, v3, p2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v2, v1, v0

    aget-byte v3, v4, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock_SSL([B[BI)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "key expansion"

    invoke-static {p0, v1, v2, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method static calculateKeyBlock_SSL([B[BI)[B
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v6, v0, [B

    add-int v0, p2, v5

    new-array v7, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v8, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v8, v8, v2

    array-length v9, v8

    invoke-interface {v4, v8, v1, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p0

    invoke-interface {v4, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p1

    invoke-interface {v4, p1, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v8, p0

    invoke-interface {v3, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, v6

    invoke-interface {v3, v6, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v7, v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static calculateMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B
    .locals 3

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iget-boolean v0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateMasterSecret_SSL([B[B)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    if-eqz v1, :cond_2

    const-string v1, "extended master secret"

    :goto_2
    const/16 v2, 0x30

    invoke-static {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "master secret"

    goto :goto_2
.end method

.method static calculateMasterSecret_SSL([B[B)[B
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v6, v0, [B

    mul-int/lit8 v0, v5, 0x3

    new-array v7, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    sget-object v8, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v8, v8, v0

    array-length v9, v8

    invoke-interface {v4, v8, v1, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p0

    invoke-interface {v4, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, p1

    invoke-interface {v4, p1, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v8, p0

    invoke-interface {v3, p0, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v8, v6

    invoke-interface {v3, v6, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method static calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v0

    invoke-static {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->PRF(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p2

    goto :goto_0
.end method

.method public static checkUint16(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint16(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint16(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint24(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint24(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint24(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint24(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint32(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint32(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint48(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint48(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint64(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint64(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint8(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint8(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkUint8(S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public static cloneHash(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA224Digest;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA384Digest;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static clonePRFHash(ILorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    check-cast p1, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>(Lorg/bouncycastle/crypto/tls/CombinedHash;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static concat([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static createHash(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0
.end method

.method public static createHash(S)Lorg/bouncycastle/crypto/Digest;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static createPRFHash(I)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsDSSSigner;-><init>()V

    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public static encodeOpaque8([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static encodeUint16ArrayWithUint16Length([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([I[BI)V

    return-object v0
.end method

.method public static encodeUint8ArrayWithUint8Length([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([S[BI)V

    return-object v0
.end method

.method private static genSSL3Const()[[B
    .locals 5

    const/16 v1, 0xa

    new-array v2, v1, [[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    add-int/lit8 v4, v0, 0x41

    int-to-byte v4, v4

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getCipherType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method static getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2b

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    instance-of v2, v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v2, :cond_2

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v2, :cond_3

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    instance-of v1, v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v1, :cond_4

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    const/16 v0, 0x40

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .locals 2

    const/4 v1, 0x2

    new-instance v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v3, v0, [S

    fill-array-data v3, :array_0

    const/4 v0, 0x3

    new-array v4, v0, [S

    fill-array-data v4, :array_1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_0

    new-instance v6, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    aget-short v7, v3, v2

    aget-short v8, v4, v0

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    nop

    :array_0
    .array-data 2
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method public static getEncryptionAlgorithm(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v4, 0x2

    const/16 v2, 0xd

    const/16 v1, 0x9

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    const/4 v0, 0x7

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    const/16 v0, 0x66

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :sswitch_7
    move v0, v1

    goto :goto_0

    :sswitch_8
    move v0, v1

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_f
    move v0, v2

    goto :goto_0

    :sswitch_10
    move v0, v2

    goto :goto_0

    :sswitch_11
    move v0, v2

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x64

    goto :goto_0

    :sswitch_14
    move v0, v3

    goto :goto_0

    :sswitch_15
    move v0, v3

    goto :goto_0

    :sswitch_16
    move v0, v3

    goto :goto_0

    :sswitch_17
    move v0, v3

    goto :goto_0

    :sswitch_18
    move v0, v4

    goto :goto_0

    :sswitch_19
    move v0, v4

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0xe

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_15
        0x4 -> :sswitch_18
        0x5 -> :sswitch_19
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_18
        0x2c -> :sswitch_15
        0x2d -> :sswitch_15
        0x2e -> :sswitch_15
        0x2f -> :sswitch_1
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3b -> :sswitch_16
        0x3c -> :sswitch_1
        0x3d -> :sswitch_7
        0x3e -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_1
        0x41 -> :sswitch_c
        0x42 -> :sswitch_c
        0x43 -> :sswitch_c
        0x44 -> :sswitch_c
        0x45 -> :sswitch_c
        0x67 -> :sswitch_1
        0x68 -> :sswitch_7
        0x69 -> :sswitch_7
        0x6a -> :sswitch_7
        0x6b -> :sswitch_7
        0x84 -> :sswitch_f
        0x85 -> :sswitch_f
        0x86 -> :sswitch_f
        0x87 -> :sswitch_f
        0x88 -> :sswitch_f
        0x8a -> :sswitch_19
        0x8b -> :sswitch_0
        0x8c -> :sswitch_1
        0x8d -> :sswitch_6
        0x8e -> :sswitch_19
        0x8f -> :sswitch_0
        0x90 -> :sswitch_1
        0x91 -> :sswitch_6
        0x92 -> :sswitch_19
        0x93 -> :sswitch_0
        0x94 -> :sswitch_1
        0x95 -> :sswitch_6
        0x96 -> :sswitch_1b
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_1b
        0x99 -> :sswitch_1b
        0x9a -> :sswitch_1b
        0x9c -> :sswitch_5
        0x9d -> :sswitch_b
        0x9e -> :sswitch_5
        0x9f -> :sswitch_b
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_b
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_b
        0xa4 -> :sswitch_5
        0xa5 -> :sswitch_b
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_b
        0xaa -> :sswitch_5
        0xab -> :sswitch_b
        0xac -> :sswitch_5
        0xad -> :sswitch_b
        0xae -> :sswitch_1
        0xaf -> :sswitch_8
        0xb0 -> :sswitch_16
        0xb1 -> :sswitch_17
        0xb2 -> :sswitch_1
        0xb3 -> :sswitch_8
        0xb4 -> :sswitch_16
        0xb5 -> :sswitch_17
        0xb6 -> :sswitch_1
        0xb7 -> :sswitch_8
        0xb8 -> :sswitch_16
        0xb9 -> :sswitch_17
        0xba -> :sswitch_d
        0xbb -> :sswitch_d
        0xbc -> :sswitch_d
        0xbd -> :sswitch_d
        0xbe -> :sswitch_d
        0xc0 -> :sswitch_10
        0xc1 -> :sswitch_10
        0xc2 -> :sswitch_10
        0xc3 -> :sswitch_10
        0xc4 -> :sswitch_10
        0xc001 -> :sswitch_15
        0xc002 -> :sswitch_19
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_1
        0xc005 -> :sswitch_6
        0xc006 -> :sswitch_15
        0xc007 -> :sswitch_19
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_1
        0xc00a -> :sswitch_6
        0xc00b -> :sswitch_15
        0xc00c -> :sswitch_19
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_6
        0xc010 -> :sswitch_15
        0xc011 -> :sswitch_19
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_1
        0xc014 -> :sswitch_6
        0xc016 -> :sswitch_19
        0xc01a -> :sswitch_0
        0xc01b -> :sswitch_0
        0xc01c -> :sswitch_0
        0xc01d -> :sswitch_1
        0xc01e -> :sswitch_1
        0xc01f -> :sswitch_1
        0xc020 -> :sswitch_6
        0xc021 -> :sswitch_6
        0xc022 -> :sswitch_6
        0xc023 -> :sswitch_1
        0xc024 -> :sswitch_8
        0xc025 -> :sswitch_1
        0xc026 -> :sswitch_8
        0xc027 -> :sswitch_1
        0xc028 -> :sswitch_8
        0xc029 -> :sswitch_1
        0xc02a -> :sswitch_8
        0xc02b -> :sswitch_5
        0xc02c -> :sswitch_b
        0xc02d -> :sswitch_5
        0xc02e -> :sswitch_b
        0xc02f -> :sswitch_5
        0xc030 -> :sswitch_b
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_b
        0xc033 -> :sswitch_19
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_1
        0xc036 -> :sswitch_6
        0xc037 -> :sswitch_1
        0xc038 -> :sswitch_8
        0xc039 -> :sswitch_15
        0xc03a -> :sswitch_16
        0xc03b -> :sswitch_17
        0xc072 -> :sswitch_d
        0xc073 -> :sswitch_11
        0xc074 -> :sswitch_d
        0xc075 -> :sswitch_11
        0xc076 -> :sswitch_d
        0xc077 -> :sswitch_11
        0xc078 -> :sswitch_d
        0xc079 -> :sswitch_11
        0xc07a -> :sswitch_e
        0xc07b -> :sswitch_12
        0xc07c -> :sswitch_e
        0xc07d -> :sswitch_12
        0xc07e -> :sswitch_e
        0xc07f -> :sswitch_12
        0xc080 -> :sswitch_e
        0xc081 -> :sswitch_12
        0xc082 -> :sswitch_e
        0xc083 -> :sswitch_12
        0xc086 -> :sswitch_e
        0xc087 -> :sswitch_12
        0xc088 -> :sswitch_e
        0xc089 -> :sswitch_12
        0xc08a -> :sswitch_e
        0xc08b -> :sswitch_12
        0xc08c -> :sswitch_e
        0xc08d -> :sswitch_12
        0xc08e -> :sswitch_e
        0xc08f -> :sswitch_12
        0xc090 -> :sswitch_e
        0xc091 -> :sswitch_12
        0xc092 -> :sswitch_e
        0xc093 -> :sswitch_12
        0xc094 -> :sswitch_d
        0xc095 -> :sswitch_11
        0xc096 -> :sswitch_d
        0xc097 -> :sswitch_11
        0xc098 -> :sswitch_d
        0xc099 -> :sswitch_11
        0xc09a -> :sswitch_d
        0xc09b -> :sswitch_11
        0xc09c -> :sswitch_3
        0xc09d -> :sswitch_9
        0xc09e -> :sswitch_3
        0xc09f -> :sswitch_9
        0xc0a0 -> :sswitch_4
        0xc0a1 -> :sswitch_a
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_a
        0xc0a4 -> :sswitch_3
        0xc0a5 -> :sswitch_9
        0xc0a6 -> :sswitch_3
        0xc0a7 -> :sswitch_9
        0xc0a8 -> :sswitch_4
        0xc0a9 -> :sswitch_a
        0xc0aa -> :sswitch_4
        0xc0ab -> :sswitch_a
        0xc0ac -> :sswitch_3
        0xc0ad -> :sswitch_9
        0xc0ae -> :sswitch_4
        0xc0af -> :sswitch_a
        0xcc13 -> :sswitch_2
        0xcc14 -> :sswitch_2
        0xcc15 -> :sswitch_2
        0xe410 -> :sswitch_13
        0xe411 -> :sswitch_1a
        0xe412 -> :sswitch_13
        0xe413 -> :sswitch_1a
        0xe414 -> :sswitch_13
        0xe415 -> :sswitch_1a
        0xe416 -> :sswitch_13
        0xe417 -> :sswitch_1a
        0xe418 -> :sswitch_13
        0xe419 -> :sswitch_1a
        0xe41a -> :sswitch_13
        0xe41b -> :sswitch_1a
        0xe41c -> :sswitch_13
        0xe41d -> :sswitch_1a
        0xe41e -> :sswitch_13
        0xe41f -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public static getHashAlgorithmForPRFAlgorithm(I)S
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown PRFAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "legacy PRF not a valid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getKeyExchangeAlgorithm(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    const/4 v0, 0x7

    :goto_0
    return v0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_b
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x17

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x4 -> :sswitch_b
        0x5 -> :sswitch_b
        0xa -> :sswitch_b
        0xd -> :sswitch_0
        0x10 -> :sswitch_1
        0x13 -> :sswitch_2
        0x16 -> :sswitch_4
        0x2c -> :sswitch_a
        0x2d -> :sswitch_3
        0x2e -> :sswitch_c
        0x2f -> :sswitch_b
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_4
        0x35 -> :sswitch_b
        0x36 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x39 -> :sswitch_4
        0x3b -> :sswitch_b
        0x3c -> :sswitch_b
        0x3d -> :sswitch_b
        0x3e -> :sswitch_0
        0x3f -> :sswitch_1
        0x40 -> :sswitch_2
        0x41 -> :sswitch_b
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x45 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_4
        0x84 -> :sswitch_b
        0x85 -> :sswitch_0
        0x86 -> :sswitch_1
        0x87 -> :sswitch_2
        0x88 -> :sswitch_4
        0x8a -> :sswitch_a
        0x8b -> :sswitch_a
        0x8c -> :sswitch_a
        0x8d -> :sswitch_a
        0x8e -> :sswitch_3
        0x8f -> :sswitch_3
        0x90 -> :sswitch_3
        0x91 -> :sswitch_3
        0x92 -> :sswitch_c
        0x93 -> :sswitch_c
        0x94 -> :sswitch_c
        0x95 -> :sswitch_c
        0x96 -> :sswitch_b
        0x97 -> :sswitch_0
        0x98 -> :sswitch_1
        0x99 -> :sswitch_2
        0x9a -> :sswitch_4
        0x9c -> :sswitch_b
        0x9d -> :sswitch_b
        0x9e -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa8 -> :sswitch_a
        0xa9 -> :sswitch_a
        0xaa -> :sswitch_3
        0xab -> :sswitch_3
        0xac -> :sswitch_c
        0xad -> :sswitch_c
        0xae -> :sswitch_a
        0xaf -> :sswitch_a
        0xb0 -> :sswitch_a
        0xb1 -> :sswitch_a
        0xb2 -> :sswitch_3
        0xb3 -> :sswitch_3
        0xb4 -> :sswitch_3
        0xb5 -> :sswitch_3
        0xb6 -> :sswitch_c
        0xb7 -> :sswitch_c
        0xb8 -> :sswitch_c
        0xb9 -> :sswitch_c
        0xba -> :sswitch_b
        0xbb -> :sswitch_0
        0xbc -> :sswitch_1
        0xbd -> :sswitch_2
        0xbe -> :sswitch_4
        0xc0 -> :sswitch_b
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_4
        0xc001 -> :sswitch_5
        0xc002 -> :sswitch_5
        0xc003 -> :sswitch_5
        0xc004 -> :sswitch_5
        0xc005 -> :sswitch_5
        0xc006 -> :sswitch_7
        0xc007 -> :sswitch_7
        0xc008 -> :sswitch_7
        0xc009 -> :sswitch_7
        0xc00a -> :sswitch_7
        0xc00b -> :sswitch_6
        0xc00c -> :sswitch_6
        0xc00d -> :sswitch_6
        0xc00e -> :sswitch_6
        0xc00f -> :sswitch_6
        0xc010 -> :sswitch_9
        0xc011 -> :sswitch_9
        0xc012 -> :sswitch_9
        0xc013 -> :sswitch_9
        0xc014 -> :sswitch_9
        0xc01a -> :sswitch_d
        0xc01b -> :sswitch_f
        0xc01c -> :sswitch_e
        0xc01d -> :sswitch_d
        0xc01e -> :sswitch_f
        0xc01f -> :sswitch_e
        0xc020 -> :sswitch_d
        0xc021 -> :sswitch_f
        0xc022 -> :sswitch_e
        0xc023 -> :sswitch_7
        0xc024 -> :sswitch_7
        0xc025 -> :sswitch_5
        0xc026 -> :sswitch_5
        0xc027 -> :sswitch_9
        0xc028 -> :sswitch_9
        0xc029 -> :sswitch_6
        0xc02a -> :sswitch_6
        0xc02b -> :sswitch_7
        0xc02c -> :sswitch_7
        0xc02d -> :sswitch_5
        0xc02e -> :sswitch_5
        0xc02f -> :sswitch_9
        0xc030 -> :sswitch_9
        0xc031 -> :sswitch_6
        0xc032 -> :sswitch_6
        0xc033 -> :sswitch_8
        0xc034 -> :sswitch_8
        0xc035 -> :sswitch_8
        0xc036 -> :sswitch_8
        0xc037 -> :sswitch_8
        0xc038 -> :sswitch_8
        0xc039 -> :sswitch_8
        0xc03a -> :sswitch_8
        0xc03b -> :sswitch_8
        0xc072 -> :sswitch_7
        0xc073 -> :sswitch_7
        0xc074 -> :sswitch_5
        0xc075 -> :sswitch_5
        0xc076 -> :sswitch_9
        0xc077 -> :sswitch_9
        0xc078 -> :sswitch_6
        0xc079 -> :sswitch_6
        0xc07a -> :sswitch_b
        0xc07b -> :sswitch_b
        0xc07c -> :sswitch_4
        0xc07d -> :sswitch_4
        0xc07e -> :sswitch_1
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_2
        0xc081 -> :sswitch_2
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc086 -> :sswitch_7
        0xc087 -> :sswitch_7
        0xc088 -> :sswitch_5
        0xc089 -> :sswitch_5
        0xc08a -> :sswitch_9
        0xc08b -> :sswitch_9
        0xc08c -> :sswitch_6
        0xc08d -> :sswitch_6
        0xc08e -> :sswitch_a
        0xc08f -> :sswitch_a
        0xc090 -> :sswitch_3
        0xc091 -> :sswitch_3
        0xc092 -> :sswitch_c
        0xc093 -> :sswitch_c
        0xc094 -> :sswitch_a
        0xc095 -> :sswitch_a
        0xc096 -> :sswitch_3
        0xc097 -> :sswitch_3
        0xc098 -> :sswitch_c
        0xc099 -> :sswitch_c
        0xc09a -> :sswitch_8
        0xc09b -> :sswitch_8
        0xc09c -> :sswitch_b
        0xc09d -> :sswitch_b
        0xc09e -> :sswitch_4
        0xc09f -> :sswitch_4
        0xc0a0 -> :sswitch_b
        0xc0a1 -> :sswitch_b
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_4
        0xc0a4 -> :sswitch_a
        0xc0a5 -> :sswitch_a
        0xc0a6 -> :sswitch_3
        0xc0a7 -> :sswitch_3
        0xc0a8 -> :sswitch_a
        0xc0a9 -> :sswitch_a
        0xc0aa -> :sswitch_3
        0xc0ab -> :sswitch_3
        0xc0ac -> :sswitch_7
        0xc0ad -> :sswitch_7
        0xc0ae -> :sswitch_7
        0xc0af -> :sswitch_7
        0xcc13 -> :sswitch_9
        0xcc14 -> :sswitch_7
        0xcc15 -> :sswitch_4
        0xe410 -> :sswitch_b
        0xe411 -> :sswitch_b
        0xe412 -> :sswitch_9
        0xe413 -> :sswitch_9
        0xe414 -> :sswitch_7
        0xe415 -> :sswitch_7
        0xe416 -> :sswitch_a
        0xe417 -> :sswitch_a
        0xe418 -> :sswitch_8
        0xe419 -> :sswitch_8
        0xe41a -> :sswitch_c
        0xe41b -> :sswitch_c
        0xe41c -> :sswitch_3
        0xe41d -> :sswitch_3
        0xe41e -> :sswitch_4
        0xe41f -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMACAlgorithm(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x10 -> :sswitch_2
        0x13 -> :sswitch_2
        0x16 -> :sswitch_2
        0x2c -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_2
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3b -> :sswitch_3
        0x3c -> :sswitch_3
        0x3d -> :sswitch_3
        0x3e -> :sswitch_3
        0x3f -> :sswitch_3
        0x40 -> :sswitch_3
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
        0x69 -> :sswitch_3
        0x6a -> :sswitch_3
        0x6b -> :sswitch_3
        0x84 -> :sswitch_2
        0x85 -> :sswitch_2
        0x86 -> :sswitch_2
        0x87 -> :sswitch_2
        0x88 -> :sswitch_2
        0x8a -> :sswitch_2
        0x8b -> :sswitch_2
        0x8c -> :sswitch_2
        0x8d -> :sswitch_2
        0x8e -> :sswitch_2
        0x8f -> :sswitch_2
        0x90 -> :sswitch_2
        0x91 -> :sswitch_2
        0x92 -> :sswitch_2
        0x93 -> :sswitch_2
        0x94 -> :sswitch_2
        0x95 -> :sswitch_2
        0x96 -> :sswitch_2
        0x97 -> :sswitch_2
        0x98 -> :sswitch_2
        0x99 -> :sswitch_2
        0x9a -> :sswitch_2
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_3
        0xaf -> :sswitch_4
        0xb0 -> :sswitch_3
        0xb1 -> :sswitch_4
        0xb2 -> :sswitch_3
        0xb3 -> :sswitch_4
        0xb4 -> :sswitch_3
        0xb5 -> :sswitch_4
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xb9 -> :sswitch_4
        0xba -> :sswitch_3
        0xbb -> :sswitch_3
        0xbc -> :sswitch_3
        0xbd -> :sswitch_3
        0xbe -> :sswitch_3
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_3
        0xc001 -> :sswitch_2
        0xc002 -> :sswitch_2
        0xc003 -> :sswitch_2
        0xc004 -> :sswitch_2
        0xc005 -> :sswitch_2
        0xc006 -> :sswitch_2
        0xc007 -> :sswitch_2
        0xc008 -> :sswitch_2
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_2
        0xc00b -> :sswitch_2
        0xc00c -> :sswitch_2
        0xc00d -> :sswitch_2
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_2
        0xc010 -> :sswitch_2
        0xc011 -> :sswitch_2
        0xc012 -> :sswitch_2
        0xc013 -> :sswitch_2
        0xc014 -> :sswitch_2
        0xc01a -> :sswitch_2
        0xc01b -> :sswitch_2
        0xc01c -> :sswitch_2
        0xc01d -> :sswitch_2
        0xc01e -> :sswitch_2
        0xc01f -> :sswitch_2
        0xc020 -> :sswitch_2
        0xc021 -> :sswitch_2
        0xc022 -> :sswitch_2
        0xc023 -> :sswitch_3
        0xc024 -> :sswitch_4
        0xc025 -> :sswitch_3
        0xc026 -> :sswitch_4
        0xc027 -> :sswitch_3
        0xc028 -> :sswitch_4
        0xc029 -> :sswitch_3
        0xc02a -> :sswitch_4
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc033 -> :sswitch_2
        0xc034 -> :sswitch_2
        0xc035 -> :sswitch_2
        0xc036 -> :sswitch_2
        0xc037 -> :sswitch_3
        0xc038 -> :sswitch_4
        0xc039 -> :sswitch_2
        0xc03a -> :sswitch_3
        0xc03b -> :sswitch_4
        0xc072 -> :sswitch_3
        0xc073 -> :sswitch_4
        0xc074 -> :sswitch_3
        0xc075 -> :sswitch_4
        0xc076 -> :sswitch_3
        0xc077 -> :sswitch_4
        0xc078 -> :sswitch_3
        0xc079 -> :sswitch_4
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xc094 -> :sswitch_3
        0xc095 -> :sswitch_4
        0xc096 -> :sswitch_3
        0xc097 -> :sswitch_4
        0xc098 -> :sswitch_3
        0xc099 -> :sswitch_4
        0xc09a -> :sswitch_3
        0xc09b -> :sswitch_4
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xc0ac -> :sswitch_0
        0xc0ad -> :sswitch_0
        0xc0ae -> :sswitch_0
        0xc0af -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xcc15 -> :sswitch_0
        0xe410 -> :sswitch_2
        0xe411 -> :sswitch_2
        0xe412 -> :sswitch_2
        0xe413 -> :sswitch_2
        0xe414 -> :sswitch_2
        0xe415 -> :sswitch_2
        0xe416 -> :sswitch_2
        0xe417 -> :sswitch_2
        0xe418 -> :sswitch_2
        0xe419 -> :sswitch_2
        0xe41a -> :sswitch_2
        0xe41b -> :sswitch_2
        0xe41c -> :sswitch_2
        0xe41d -> :sswitch_2
        0xe41e -> :sswitch_2
        0xe41f -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinimumVersion(I)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xc0ac -> :sswitch_0
        0xc0ad -> :sswitch_0
        0xc0ae -> :sswitch_0
        0xc0af -> :sswitch_0
        0xcc13 -> :sswitch_0
        0xcc14 -> :sswitch_0
        0xcc15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getOIDForHashAlgorithm(S)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasSigningCapability(S)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static hmac_hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)V
    .locals 10

    const/4 v1, 0x0

    new-instance v4, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v4, p0}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    array-length v0, p3

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    div-int v6, v0, v5

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v7, v0, [B

    move v0, v1

    move-object v2, p2

    :goto_0
    if-ge v0, v6, :cond_0

    array-length v8, v2

    invoke-virtual {v4, v2, v1, v8}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v4, v3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    array-length v2, v3

    invoke-virtual {v4, v3, v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    array-length v2, p2

    invoke-virtual {v4, p2, v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    invoke-virtual {v4, v7, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    mul-int v2, v5, v0

    array-length v8, p3

    mul-int v9, v5, v0

    sub-int/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v1, p3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static importSession([BLorg/bouncycastle/crypto/tls/SessionParameters;)Lorg/bouncycastle/crypto/tls/TlsSession;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    return-object v0
.end method

.method public static isAEADCipherSuite(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlockCipherSuite(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    return v0
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isStreamCipherSuite(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTLSv11(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv11(Lorg/bouncycastle/crypto/tls/TlsContext;)Z
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv12(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getMinimumVersion(I)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidUint16(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint16(J)Z
    .locals 2

    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint24(I)Z
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint24(J)Z
    .locals 2

    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint32(J)Z
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint48(J)Z
    .locals 2

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint64(J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isValidUint8(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(J)Z
    .locals 2

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(S)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    if-nez p0, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x32

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    return-object v1
.end method

.method public static readAllOrNothing(ILjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v0, p0, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eq v1, p0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readASN1Object([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static readFully([BLjava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p1, p0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_0
    return-object v0

    :cond_1
    new-array v0, p0, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq p0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readSignatureAlgorithmsExtension([B)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object v1
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint16([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public static readUint24([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint32([BI)J
    .locals 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint48(Ljava/io/InputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v4, 0xffffffffL

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v1

    int-to-long v2, v0

    and-long/2addr v2, v4

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    int-to-long v0, v1

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint48([BI)J
    .locals 6

    const-wide v4, 0xffffffffL

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v1

    int-to-long v2, v0

    and-long/2addr v2, v4

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    int-to-long v0, v1

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method public static readUint8([BI)S
    .locals 1

    aget-byte v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p0, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static readVersion([BI)Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static readVersionRaw(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static readVersionRaw([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->trackHashAlgorithm(S)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method private static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signatureAlgorithm\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-ne v0, v2, :cond_3

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public static writeGMTUnixTime([BI)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    ushr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, p1, 0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint16(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method public static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint16Array([I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([I[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 v0, p2, 0x2

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16Array([I[BI)V

    return-void
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v0, p0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint24(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint32(J[BI)V
    .locals 4

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static writeUint48(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint48(J[BI)V
    .locals 4

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint64(J[BI)V
    .locals 4

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static writeUint8(ILjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(S[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint8Array([S[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([S[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8Array([S[BI)V

    return-void
.end method

.method public static writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method
