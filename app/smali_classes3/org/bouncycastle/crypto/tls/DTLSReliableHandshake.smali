.class Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;,
        Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;
    }
.end annotation


# static fields
.field private static final MAX_RECEIVE_AHEAD:I = 0xa


# instance fields
.field private currentInboundFlight:Ljava/util/Hashtable;

.field private handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field private message_seq:I

.field private next_receive_seq:I

.field private outboundFlight:Ljava/util/Vector;

.field private previousInboundFlight:Ljava/util/Hashtable;

.field private final recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

.field private sending:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    iput v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    iput v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    new-instance v0, Lorg/bouncycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    return v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Hashtable;)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    return-void
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)V
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    return-void
.end method

.method private static checkAll(Ljava/util/Hashtable;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkInboundFlight()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private prepareInboundFlight()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    return-void
.end method

.method private resendOutboundFlight()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->resetWriteEpoch()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->writeMessage(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static resetAll(Ljava/util/Hashtable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v2

    invoke-static {v2, v1, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    array-length v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getSeq()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v2, 0x6

    invoke-static {v4, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    array-length v2, v0

    const/16 v3, 0x9

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    :cond_0
    return-object p1
.end method

.method private writeHandshakeFragment(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;

    add-int/lit8 v1, p3, 0xc

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;-><init>(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getSeq()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->write([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->sendToRecordLayer(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V

    return-void
.end method

.method private writeMessage(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v0

    add-int/lit8 v1, v0, -0xc

    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    array-length v2, v0

    const/4 v0, 0x0

    :cond_1
    sub-int v3, v2, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->writeHandshakeFragment(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;II)V

    add-int/2addr v0, v3

    if-lt v0, v2, :cond_1

    return-void
.end method


# virtual methods
.method finish()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkInboundFlight()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->handshakeSuccessful(Lorg/bouncycastle/crypto/tls/DTLSHandshakeRetransmit;)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;-><init>(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;)V

    goto :goto_0
.end method

.method getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method notifyHelloComplete()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v12, 0xea60

    const/16 v11, 0xc

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->prepareInboundFlight()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getMsgType()S

    move-result v0

    invoke-direct {v2, v4, v0, v1, v3}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x3e8

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v8

    if-eqz v3, :cond_2

    array-length v1, v3

    if-ge v1, v8, :cond_7

    :cond_2
    new-array v3, v8, [B

    move v7, v0

    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v8, v7}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_4

    :goto_3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    mul-int/lit8 v0, v7, 0x2

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    if-lt v0, v11, :cond_3

    const/16 v1, 0x9

    :try_start_1
    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v6

    add-int/lit8 v1, v6, 0xc

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v9

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v0, v0, 0xa

    if-gt v9, v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v2

    const/4 v0, 0x6

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v5

    add-int v0, v5, v6

    if-gt v0, v2, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-ge v9, v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-eqz v0, :cond_8

    const/16 v4, 0xc

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkAll(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resendOutboundFlight()V

    mul-int/lit8 v0, v7, 0x2

    const v1, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->resetAll(Ljava/util/Hashtable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    move v7, v0

    goto :goto_2

    :cond_5
    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    if-nez v0, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;-><init>(SI)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->currentInboundFlight:Ljava/util/Hashtable;

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/16 v4, 0xc

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    if-ne v9, v1, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getBodyIfComplete()[B

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->previousInboundFlight:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v4, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->next_receive_seq:I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->getMsgType()S

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v0, v1, v5}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move v7, v0

    goto/16 :goto_3

    :cond_7
    move v7, v0

    goto/16 :goto_2

    :cond_8
    move v0, v7

    goto :goto_4
.end method

.method receiveMessageBody(S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v1

    if-eq v1, p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method resetHandshakeMessagesDigest()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->reset()V

    return-void
.end method

.method sendMessage(S[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->checkInboundFlight()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->sending:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->message_seq:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;-><init>(IS[BLorg/bouncycastle/crypto/tls/DTLSReliableHandshake$1;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->outboundFlight:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->writeMessage(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake;->updateHandshakeMessagesDigest(Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;)Lorg/bouncycastle/crypto/tls/DTLSReliableHandshake$Message;

    return-void
.end method
