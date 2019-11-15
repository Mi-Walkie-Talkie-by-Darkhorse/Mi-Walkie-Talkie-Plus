.class public Lorg/bouncycastle/crypto/tls/TlsServerProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;


# instance fields
.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected clientCertificateType:S

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

.field protected tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

.field tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method


# virtual methods
.method public accept(Lorg/bouncycastle/crypto/tls/TlsServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'tlsServer\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'accept\' can only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->shouldUseGMTUnixTime()Z

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->init(Lorg/bouncycastle/crypto/tls/TlsServerContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->blockForHandshake()V

    return-void
.end method

.method protected cleanupHandshake()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method protected expectCertificateVerifyMessage()Z
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    if-ltz v0, :cond_0

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/bouncycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v5, 0xa

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    sparse-switch v4, :sswitch_data_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_1
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerHelloMessage()V

    const/4 v3, 0x2

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_0
    const/4 v3, 0x3

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    :goto_0
    const/4 v3, 0x4

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateStatusMessage(Lorg/bouncycastle/crypto/tls/CertificateStatus;)V

    :cond_3
    const/4 v0, 0x5

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    :cond_4
    const/4 v0, 0x6

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-eq v3, v0, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    :cond_8
    const/4 v0, 0x7

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    const/16 v0, 0x8

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    :goto_2
    return-void

    :sswitch_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->refuseRenegotiation()V

    goto :goto_2

    :sswitch_3
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    const/16 v0, 0x9

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_2

    :sswitch_4
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :pswitch_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_9

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_9
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_2

    :sswitch_5
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    :pswitch_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    :cond_a
    :goto_3
    :pswitch_5
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xb

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-nez v0, :cond_a

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_d
    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_3

    :sswitch_6
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_6
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_e
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xc

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_2

    :sswitch_7
    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch v0, :pswitch_data_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_7
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_f
    :pswitch_8
    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xd

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    :cond_10
    const/16 v0, 0xe

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendFinishedMessage()V

    const/16 v0, 0xf

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    const/16 v0, 0x10

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->completeHandshake()V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_4
        0xf -> :sswitch_6
        0x10 -> :sswitch_5
        0x14 -> :sswitch_7
        0x17 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected handleWarningMessage(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method protected notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/bouncycastle/crypto/tls/Certificate;Lorg/bouncycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_0
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x33

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iget-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/bouncycastle/crypto/tls/TlsSigner;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v1

    invoke-interface {v4, v2, v1, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B
    :try_end_1
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v6, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x20

    const/16 v5, 0x2f

    const/4 v4, 0x1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    if-ge v2, v4, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v3

    iput-boolean v3, v2, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v3, 0x5600

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyFallback(Z)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_7
    return-void
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    :cond_0
    return-void
.end method

.method protected sendCertificateRequestMessage(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendCertificateStatusMessage(Lorg/bouncycastle/crypto/tls/CertificateStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendServerHelloDoneMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0xe

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->writeHandshakeMessage([BII)V

    return-void
.end method

.method protected sendServerHelloMessage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v6, 0x50

    new-instance v3, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v0, 0x2

    invoke-direct {v3, p0, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v0, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-static {v5, v4}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-short v4, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/bouncycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0, v4, v5, v6}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v4

    iput-short v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v0, v4, v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0xc

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsServerProtocol;->applyMaxFragmentLengthExtension()V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_2
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xc

    array-length v2, p1

    invoke-direct {v0, p0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;SI)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
