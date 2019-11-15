.class public Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;
.super Lorg/bouncycastle/crypto/tls/DTLSProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected static patchClientHelloWithCookie([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    add-int/lit8 v0, v0, 0x23

    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    array-length v3, p1

    invoke-static {v3, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    array-length v0, p1

    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/2addr v0, v1

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected clientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0xb

    const/4 v7, 0x1

    const/16 v9, 0xa

    const/16 v8, 0x14

    const/4 v2, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-direct {v5, v0, p2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateClientHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/TlsClient;)[B

    move-result-object v1

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {v5, v7, v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {p2, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processHelloVerifyRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->patchClientHelloWithCookie([B[B)[B

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetHandshakeMessagesDigest()V

    invoke-virtual {v5, v7, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {p2, v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    iget-short v0, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->applyMaxFragmentLengthExtension(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;S)V

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const-string v1, "server finished"

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v5, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const-string v1, "client finished"

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->setResumableSession(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v0, v0

    if-lez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/bouncycastle/crypto/tls/SessionParameters;)V

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_4
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/16 v3, 0x17

    if-ne v1, v3, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    :goto_2
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v1, v3}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    if-ne v1, v10, :cond_a

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerCertificate(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/16 v6, 0x16

    if-ne v1, v6, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processCertificateStatus(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/16 v6, 0xc

    if-ne v1, v6, :cond_b

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processServerKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/16 v6, 0xd

    if-ne v1, v6, :cond_8

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/16 v6, 0xe

    if-ne v1, v6, :cond_c

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_d

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_9
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_2

    :cond_a
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v3, v2

    goto :goto_3

    :cond_b
    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    goto :goto_4

    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_d
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v5, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_e
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/bouncycastle/crypto/tls/CertificateRequest;)Lorg/bouncycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_f

    sget-object v0, Lorg/bouncycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/bouncycastle/crypto/tls/Certificate;

    :cond_f
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)[B

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_10
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V

    :goto_6
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v5, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    iput-object v0, v4, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsKeyExchange;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    instance-of v0, v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/bouncycastle/crypto/tls/TlsCredentials;

    check-cast v0, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v6, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    if-nez v6, :cond_15

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v1

    :goto_7
    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v1, v6, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->generateCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DigitallySigned;)[B

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v5, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    :cond_11
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const-string v1, "client finished"

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_16

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    :cond_12
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const-string v1, "server finished"

    iget-object v6, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {v5, v8}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_13

    new-instance v0, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCompressionAlgorithm()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getPSKIdentity()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setPSKIdentity([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getSRPIdentity()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setSRPIdentity([B)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->setServerExtensions(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->importSession([BLorg/bouncycastle/crypto/tls/SessionParameters;)Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->setResumableSession(Lorg/bouncycastle/crypto/tls/TlsSession;)V

    :cond_13
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSTransport;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/DTLSTransport;-><init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v7

    invoke-interface {v1, v7}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v1

    goto/16 :goto_7

    :cond_16
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_17
    move-object v0, v2

    goto/16 :goto_5
.end method

.method public connect(Lorg/bouncycastle/crypto/tls/TlsClient;Lorg/bouncycastle/crypto/tls/DatagramTransport;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x50

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'client\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'transport\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;-><init>()V

    iput-object p1, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRandomBlock(ZLorg/bouncycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    const/16 v3, 0x16

    invoke-direct {v0, p2, v2, p1, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/bouncycastle/crypto/tls/SessionParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v2, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v3, v1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->clientHandshake(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)Lorg/bouncycastle/crypto/tls/DTLSTransport;
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v1

    :catch_2
    move-exception v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method protected generateCertificateVerify(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/DigitallySigned;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected generateClientHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/TlsClient;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x5600

    const/16 v6, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->setClientVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v3, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v5, 0x20

    if-le v3, v5, :cond_2

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_2
    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v5

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-interface {p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v3, v6}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    :cond_3
    if-eqz v5, :cond_4

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    :cond_4
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    new-array v0, v1, [S

    aput-short v2, v0, v2

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_1
.end method

.method protected generateClientKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected invalidateSession(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->clear()V

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsSession;->invalidate()V

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method protected processCertificateRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateRequest;

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/bouncycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V

    return-void
.end method

.method protected processCertificateStatus(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateStatus;

    move-result-object v1

    iput-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/bouncycastle/crypto/tls/CertificateStatus;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processHelloVerifyRequest(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2f

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, v2

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    return-object v2
.end method

.method protected processNewSessionTicket(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/NewSessionTicket;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected processServerCertificate(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/bouncycastle/crypto/tls/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/bouncycastle/crypto/tls/TlsAuthentication;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-object v1
.end method

.method protected processServerHello(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v8, 0x2f

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v5

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v0, v0

    if-le v0, v4, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    iget-object v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/bouncycastle/crypto/tls/TlsSession;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v4

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v4

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/bouncycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->validateSelectedCipherSuite(IS)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v6

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Arrays;->contains([SS)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_4
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v7, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v0, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v7, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_6
    iget-boolean v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    iput-boolean v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_8
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    iget-boolean v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object v3, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v7, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-eqz v7, :cond_b

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v0

    if-ne v4, v0, :cond_9

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v0

    if-eq v6, v0, :cond_a

    :cond_9
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_a
    const/4 v3, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/bouncycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v0

    :cond_b
    iput v4, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iput-short v6, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v0, :cond_d

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_c
    iput-boolean v4, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    iget-boolean v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    invoke-static {v4, v3, v0, v8}, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol;->evaluateMaxFragmentLengthExtension(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v4

    iput-short v4, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iget-boolean v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-nez v4, :cond_f

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v0, v4, v8}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v1

    :goto_2
    iput-boolean v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    iget-boolean v4, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->resumedSession:Z

    if-nez v4, :cond_10

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v0, v4, v8}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_3
    iput-boolean v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    :cond_d
    if-eqz v3, :cond_e

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_e
    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;I)I

    move-result v0

    iput v0, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    const/16 v0, 0xc

    iput v0, v5, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return-void

    :cond_f
    move v4, v2

    goto :goto_2

    :cond_10
    move v1, v2

    goto :goto_3
.end method

.method protected processServerKeyExchange(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processServerSupplementalData(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method protected reportServerVersion(Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsClientContextImpl;->setServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/bouncycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1, p2}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
