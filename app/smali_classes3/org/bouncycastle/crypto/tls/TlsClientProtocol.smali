.class public Lorg/bouncycastle/crypto/tls/TlsClientProtocol;
.super Lorg/bouncycastle/crypto/tls/TlsProtocol;


# instance fields
.field protected authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

.field tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'tlsClient\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'connect\' can only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->blockForHandshake()V

    return-void
.end method

.method protected getContext()Lorg/bouncycastle/crypto/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xd

    const/4 v5, 0x2

    const/16 v4, 0x10

    const/4 v1, 0x0

    const/16 v3, 0xa

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v2, :cond_3

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq v1, v5, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xf

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_2
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_3
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    const/4 v0, 0x4

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_0

    :pswitch_4
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_5
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    if-nez v1, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_6
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 v0, 0x5

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_0

    :pswitch_6
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_7
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz v1, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_7
    :pswitch_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xf

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iput-short v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    goto/16 :goto_0

    :pswitch_9
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_a
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->applyMaxFragmentLengthExtension()V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v0, v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    goto/16 :goto_0

    :pswitch_b
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_5

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_c
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_0

    :pswitch_d
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_e
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_f
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_10
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_11
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0x8

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_9
    const/16 v0, 0x9

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object v0, v1

    :goto_1
    iput-short v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    const/16 v2, 0xb

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    iput-object v1, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/bouncycastle/crypto/tls/TlsPeer;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsPeer;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    if-eqz v0, :cond_a

    instance-of v1, v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v1

    :goto_2
    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DigitallySigned;)V

    const/16 v0, 0xc

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    sget-object v2, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/bouncycastle/crypto/tls/Certificate;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-interface {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v1

    goto :goto_2

    :pswitch_12
    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v2, :pswitch_data_7

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_13
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_14
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    :pswitch_15
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 v0, 0x6

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    :pswitch_16
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_8

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_17
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_18
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-nez v1, :cond_e

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_e
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    const/4 v0, 0x7

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    :pswitch_19
    iget-short v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch v1, :pswitch_data_9

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1a
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez v1, :cond_f

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 v0, 0xe

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_0

    :pswitch_1b
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->refuseRenegotiation()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_12
        :pswitch_16
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_17
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xd
        :pswitch_1a
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 v0, 0x3

    iput-short v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v7, 0x2f

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {v4, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v0, v0

    if-le v0, v4, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v0, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v6, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v6, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_9
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v6, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v0

    if-ne v4, v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v0

    if-eq v5, v0, :cond_d

    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_d
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    :cond_e
    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput v4, v6, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-short v5, v6, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v0, :cond_10

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_f
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    iput-boolean v5, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v5

    iput-boolean v5, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0, v3, v0, v7}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v5

    iput-short v5, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v5

    iput-boolean v5, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v4, :cond_12

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v0, v4, v7}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v4, :cond_13

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v0, v4, v7}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_3
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    :cond_10
    if-eqz v3, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/bouncycastle/crypto/tls/TlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0xc

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return-void

    :cond_12
    move v4, v2

    goto :goto_2

    :cond_13
    move v1, v2

    goto :goto_3
.end method

.method protected sendCertificateVerifyMessage(Lorg/bouncycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendClientHelloMessage()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x5600

    const/16 v7, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/bouncycastle/crypto/tls/RecordStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->getContextAdmin()Lorg/bouncycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    const/16 v5, 0x20

    if-le v4, v5, :cond_2

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    array-length v5, v0

    if-lez v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v6

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v6

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_4
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    new-instance v5, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    invoke-direct {v5, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v3, v7}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    :cond_5
    if-eqz v4, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v8}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v8}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v5, v0}, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_7
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;S)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
