.class Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# static fields
.field private static final MAX_FRAGMENT_LENGTH:I = 0x4000

.field private static final RECORD_HEADER_LENGTH:I = 0xd

.field private static final RETRANSMIT_TIMEOUT:J = 0x3a980L

.field private static final TCP_MSL:J = 0x1d4c0L


# instance fields
.field private volatile closed:Z

.field private final context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field private currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private volatile failed:Z

.field private volatile inHandshake:Z

.field private final peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

.field private pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private volatile plaintextLimit:I

.field private readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private volatile readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field private final recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

.field private retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

.field private retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private retransmitExpiry:J

.field private final transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

.field private writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

.field private volatile writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/DatagramTransport;Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsPeer;S)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    return-void
.end method

.method private closeTransport()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getMacSequenceNumber(IJ)J
    .locals 5

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v4, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, v3, v4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void
.end method

.method private receiveRecord([BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xd

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    if-lt v0, v2, :cond_2

    new-array v0, v4, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/16 v3, 0xb

    invoke-virtual {v2, v0, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->read([BIII)V

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ByteQueue;->available()I

    move-result v2

    add-int/lit8 v0, v0, 0xd

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->receive([BIII)I

    move-result v1

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, p2, 0xb

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    if-le v1, v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/bouncycastle/crypto/tls/ByteQueue;

    add-int v3, p2, v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, p1, v3, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private sendRecord(S[BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    if-le p4, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    if-ge p4, v0, :cond_2

    const/16 v0, 0x17

    if-eq p1, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->allocateSequenceNumber()J

    move-result-wide v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-static {v0, v8, v9}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, 0xd

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v0, 0x5

    invoke-static {v8, v9, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint48(J[BI)V

    array-length v0, v1

    const/16 v3, 0xb

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v0, 0x0

    const/16 v3, 0xd

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    const/4 v1, 0x0

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->send([BII)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    :cond_1
    return-void
.end method

.method fail(S)V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getReceiveLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->getReceiveLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/bouncycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/tls/DatagramTransport;->getSendLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method handshakeSuccessful(Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    return-void
.end method

.method initPendingEpoch(Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    return-void
.end method

.method public receive([BIII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v2

    move/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    if-eqz v7, :cond_1

    array-length v3, v7

    if-ge v3, v2, :cond_2

    :cond_1
    new-array v7, v2, [B

    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    :cond_3
    const/4 v3, 0x0

    move/from16 v0, p4

    invoke-direct {p0, v7, v3, v2, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->receiveRecord([BIII)I

    move-result v2

    if-gez v2, :cond_4

    :goto_1
    return v2

    :cond_4
    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    const/16 v3, 0xb

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x3

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v11

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v4

    if-ne v11, v4, :cond_9

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    move-object v10, v3

    :goto_2
    if-eqz v10, :cond_0

    const/4 v3, 0x5

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint48([BI)J

    move-result-wide v12

    invoke-virtual {v10}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->shouldDiscard(J)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v3, v14}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    invoke-virtual {v10}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v3

    invoke-virtual {v10}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v4

    invoke-static {v4, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v4

    const/16 v8, 0xd

    add-int/lit8 v9, v2, -0xd

    invoke-interface/range {v3 .. v9}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v3

    invoke-virtual {v10}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/bouncycastle/crypto/tls/DTLSReplayWindow;->reportAuthenticated(J)V

    array-length v2, v3

    iget v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-nez v2, :cond_6

    iput-object v14, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    :cond_6
    packed-switch v6, :pswitch_data_1

    :cond_7
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    :cond_8
    const/4 v2, 0x0

    array-length v4, v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x16

    if-ne v6, v4, :cond_d

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v4

    if-ne v11, v4, :cond_d

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    move-object v10, v3

    goto :goto_2

    :pswitch_2
    array-length v2, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    int-to-short v2, v2

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    int-to-short v3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/bouncycastle/crypto/tls/TlsPeer;

    invoke-interface {v4, v2, v3}, Lorg/bouncycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a

    invoke-virtual {p0, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    throw v2

    :cond_a
    if-nez v3, :cond_0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x0

    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_0

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_4

    :pswitch_5
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface {v2, v11, v3, v4, v5}, Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;->receivedHandshakeRecord(I[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_d
    move-object v10, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method resetWriteEpoch()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_0
.end method

.method public send([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x17

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-ne v1, v2, :cond_4

    :cond_0
    const/16 v0, 0x16

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    if-ne v1, v6, :cond_4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    goto :goto_0

    :cond_3
    new-array v2, v5, [B

    aput-byte v5, v2, v4

    array-length v3, v2

    invoke-direct {p0, v6, v2, v4, v3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/bouncycastle/crypto/tls/DTLSEpoch;

    :cond_4
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    return-void
.end method

.method setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method warn(SLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
