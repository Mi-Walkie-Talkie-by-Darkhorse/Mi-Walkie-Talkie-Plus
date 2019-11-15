.class public abstract Lorg/bouncycastle/crypto/tls/TlsProtocol;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;
    }
.end annotation


# static fields
.field protected static final CS_CERTIFICATE_REQUEST:S = 0x7s

.field protected static final CS_CERTIFICATE_STATUS:S = 0x5s

.field protected static final CS_CERTIFICATE_VERIFY:S = 0xcs

.field protected static final CS_CLIENT_CERTIFICATE:S = 0xas

.field protected static final CS_CLIENT_FINISHED:S = 0xds

.field protected static final CS_CLIENT_HELLO:S = 0x1s

.field protected static final CS_CLIENT_KEY_EXCHANGE:S = 0xbs

.field protected static final CS_CLIENT_SUPPLEMENTAL_DATA:S = 0x9s

.field protected static final CS_END:S = 0x10s

.field protected static final CS_SERVER_CERTIFICATE:S = 0x4s

.field protected static final CS_SERVER_FINISHED:S = 0xfs

.field protected static final CS_SERVER_HELLO:S = 0x2s

.field protected static final CS_SERVER_HELLO_DONE:S = 0x8s

.field protected static final CS_SERVER_KEY_EXCHANGE:S = 0x6s

.field protected static final CS_SERVER_SESSION_TICKET:S = 0xes

.field protected static final CS_SERVER_SUPPLEMENTAL_DATA:S = 0x3s

.field protected static final CS_START:S = 0x0s

.field protected static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field protected static final EXT_SessionTicket:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"


# instance fields
.field private alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected allowCertificateStatus:Z

.field private volatile appDataReady:Z

.field private applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected blocking:Z

.field protected clientExtensions:Ljava/util/Hashtable;

.field private volatile closed:Z

.field protected connection_state:S

.field protected expectSessionTicket:Z

.field private expected_verify_data:[B

.field private volatile failedWithError:Z

.field private handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field protected inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

.field protected offeredCipherSuites:[I

.field protected offeredCompressionMethods:[S

.field protected outputBuffer:Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;

.field protected peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field protected receivedChangeCipherSpec:Z

.field recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

.field protected resumedSession:Z

.field protected secureRandom:Ljava/security/SecureRandom;

.field protected secure_renegotiation:Z

.field protected securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

.field protected serverExtensions:Ljava/util/Hashtable;

.field protected sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

.field private volatile splitApplicationDataRecords:Z

.field private tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

.field protected tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xff01

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    const/16 v0, 0x23

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;

    invoke-direct {v0, p0, v1, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method protected static assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method protected static createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeGMTUnixTime([BI)V

    :cond_0
    return-object v0
.end method

.method protected static createRenegotiationInfo([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;[B)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_1
    throw v0
.end method

.method protected static getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->forkPRFHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v1
.end method

.method protected static getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x2f

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v3

    sparse-switch p1, :sswitch_data_0

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    if-nez v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_1
    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_2
    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

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
        0x9d -> :sswitch_1
        0x9e -> :sswitch_0
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xab -> :sswitch_1
        0xac -> :sswitch_0
        0xad -> :sswitch_1
        0xaf -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb7 -> :sswitch_2
        0xb9 -> :sswitch_2
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
        0xc024 -> :sswitch_1
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_1
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_1
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_1
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_1
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_1
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_1
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_1
        0xc038 -> :sswitch_2
        0xc03b -> :sswitch_2
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_1
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_1
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_1
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_1
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_1
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_1
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_1
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_1
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_1
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_1
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_1
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_1
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_1
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_1
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_1
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_1
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_1
        0xc095 -> :sswitch_2
        0xc097 -> :sswitch_2
        0xc099 -> :sswitch_2
        0xc09b -> :sswitch_2
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

.method private processAlert()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    if-lt v0, v5, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, v5, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v0

    aget-byte v1, v0, v3

    int-to-short v1, v1

    aget-byte v0, v0, v4

    int-to-short v0, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->safeClose()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processApplicationData()V
    .locals 0

    return-void
.end method

.method private processChangeCipherSpec([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, p2, v0

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->receivedReadCipherSpec()V

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleChangeCipherSpecMessage()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private processHandshake()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    if-lt v0, v8, :cond_5

    new-array v3, v8, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, v3, v1, v8, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v4

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    add-int/lit8 v6, v5, 0x4

    if-lt v0, v6, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, v5, v8}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v6

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 v7, 0x10

    if-eq v0, v7, :cond_1

    const/16 v0, 0x14

    if-ne v4, v0, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->checkReceivedChangeCipherSpec(Z)V

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v3, v1, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v6, v1, v5}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    :sswitch_0
    invoke-virtual {p0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleHandshakeMessage(S[B)V

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-nez v7, :cond_2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected static readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque24(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;-><init>(I[B)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void
.end method

.method protected static writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->getDataType()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SupplementalDataEntry;->getData()[B

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected applicationDataAvailable()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    return v0
.end method

.method protected applyMaxFragmentLengthExtension()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/MaxFragmentLength;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-short v1, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    :cond_1
    return-void
.end method

.method protected blockForHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->connection_state:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected checkReceivedChangeCipherSpec(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    if-eq p1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method protected cleanupHandshake()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clear()V

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCipherSuites:[I

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->offeredCompressionMethods:[S

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->clientExtensions:Ljava/util/Hashtable;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->receivedChangeCipherSpec:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->secure_renegotiation:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->allowCertificateStatus:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expectSessionTicket:Z

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleClose(Z)V

    return-void
.end method

.method protected completeHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->finaliseHandshake()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsInputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCompressionAlgorithm()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPSKIdentity()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPSKIdentity([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSRPIdentity()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setSRPIdentity([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setResumableSession(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyHandshakeComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    throw v0
.end method

.method protected createVerifyData(Z)[B
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "server finished"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "client finished"

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    goto :goto_1
.end method

.method protected failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->invalidateSession()V

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->safeClose()V

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->flush()V

    return-void
.end method

.method public getAvailableInputBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use getAvailableInputBytes() in blocking mode! Use getInputStream().available() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataAvailable()I

    move-result v0

    return v0
.end method

.method public getAvailableOutputBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use getAvailableOutputBytes() in blocking mode! Use getOutputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/crypto/tls/ByteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    return v0
.end method

.method protected abstract getContext()Lorg/bouncycastle/crypto/tls/TlsContext;
.end method

.method abstract getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use InputStream in non-blocking mode! Use offerInput() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsInputStream:Lorg/bouncycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use OutputStream in non-blocking mode! Use offerOutput() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsOutputStream:Lorg/bouncycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method protected abstract getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
.end method

.method protected handleChangeCipherSpecMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected handleClose(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Connection closed"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected abstract handleHandshakeMessage(S[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleWarningMessage(S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected invalidateSession()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->clear()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    return v0
.end method

.method public offerInput([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use offerInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection is closed, cannot accept any more input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;->addBytes([B)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;->available()I

    move-result v0

    if-lt v0, v2, :cond_2

    new-array v0, v2, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;->peek([B)I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->inputBuffers:Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueueInputStream;->available()I

    move-result v1

    if-ge v1, v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    goto :goto_0
.end method

.method public offerOutput([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use offerOutput() in blocking mode! Use getOutputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Application data cannot be sent until the handshake is complete!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeData([BII)V

    return-void
.end method

.method protected processFinishedMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->expected_verify_data:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    return-void
.end method

.method protected processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/MaxFragmentLength;->isValid(S)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->resumedSession:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    return v0
.end method

.method protected processRecord(S[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xa

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->alertQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processAlert()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processApplicationData()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processChangeCipherSpec([BII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handshakeQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processHandshake()V

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->appDataReady:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v4, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    return-void
.end method

.method protected raiseWarning(SLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected readApplicationData([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeReadRecord()V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    move v0, v1

    goto :goto_0
.end method

.method public readInput([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use readInput() in blocking mode! Use getInputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->applicationDataAvailable()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readApplicationData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readOutput([BII)I
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->blocking:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use readOutput() in blocking mode! Use getOutputStream() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getAvailableOutputBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->outputBuffer:Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->getBuffer()Lorg/bouncycastle/crypto/tls/ByteQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    return v0
.end method

.method protected refuseRenegotiation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    const-string v1, "Renegotiation not supported"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    return-void
.end method

.method protected safeReadRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    const/4 v3, 0x2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->readRecord()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    const-string v2, "Failed to read record"

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_1

    const-string v1, "Failed to read record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_2

    const-string v1, "Failed to read record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method protected safeWriteRecord(S[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    const/4 v3, 0x2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->writeRecord(S[BII)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    const-string v2, "Failed to write record"

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_1

    const-string v1, "Failed to write record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-nez v1, :cond_2

    const-string v1, "Failed to write record"

    invoke-virtual {p0, v3, v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failWithError(SSLjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    throw v0
.end method

.method protected sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " client didn\'t provide credentials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->raiseWarning(SLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    goto :goto_0
.end method

.method protected sendChangeCipherSpecMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [B

    aput-byte v1, v0, v3

    const/16 v1, 0x14

    array-length v2, v0

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->sentWriteCipherSpec()V

    return-void
.end method

.method protected sendFinishedMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createVerifyData(Z)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v2, 0x14

    array-length v3, v0

    invoke-direct {v1, p0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;SI)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendSupplementalDataMessage(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected writeData([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x17

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->closed:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->failedWithError:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->splitApplicationDataRecords:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v3, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v3, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move v0, p3

    move v1, p2

    goto :goto_0
.end method

.method protected writeHandshakeMessage([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getPlaintextLimit()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->safeWriteRecord(S[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method
