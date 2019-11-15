.class Lorg/bouncycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I = 0x0

.field static final TLS_HEADER_LENGTH_OFFSET:I = 0x3

.field static final TLS_HEADER_SIZE:I = 0x5

.field static final TLS_HEADER_TYPE_OFFSET:I = 0x0

.field static final TLS_HEADER_VERSION_OFFSET:I = 0x1


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private ciphertextLimit:I

.field private compressedLimit:I

.field private handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

.field private handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private plaintextLimit:I

.field private readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private readSeqNo:J

.field private readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:J

.field private writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4000

    sput v0, Lorg/bouncycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    return-void
.end method

.method private static checkLength(IIS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-le p0, p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkType(SS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferContents()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method


# virtual methods
.method decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x16

    const/4 v6, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    invoke-static {p3, v0, v10}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    invoke-static {p3, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    iput-wide v8, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    array-length v7, v5

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->compressedLimit:I

    invoke-static {v1, v2, v10}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq v1, v2, :cond_0

    array-length v2, v0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v0

    :cond_0
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    return-object v0
.end method

.method finaliseHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method getHandshakeHash()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method getPlaintextLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->plaintextLimit:I

    return v0
.end method

.method getReadVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    new-instance v0, Lorg/bouncycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    sget v0, Lorg/bouncycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    return-void
.end method

.method notifyHelloComplete()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method prepareToFinish()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method readRecord()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x2f

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readAllOrNothing(ILjava/io/InputStream;)[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkType(SS)V

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    if-nez v4, :cond_1

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x300

    if-eq v4, v5, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-nez v5, :cond_3

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    :cond_2
    const/4 v4, 0x3

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v4, v2}, Lorg/bouncycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    array-length v5, v2

    invoke-virtual {v4, v3, v2, v0, v5}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->equals(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method receivedReadCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readSeqNo:J

    return-void
.end method

.method safeClose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method sentWriteCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    return-void
.end method

.method setPendingConnectionState(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 1

    iput p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->plaintextLimit:I

    iget v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->plaintextLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->compressedLimit:I

    iget v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    return-void
.end method

.method setReadVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method setRestrictReadVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    return-void
.end method

.method setWriteVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method updateHandshakeData([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    return-void
.end method

.method writeRecord(S[BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x50

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkType(SS)V

    iget v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->plaintextLimit:I

    invoke-static {p4, v0, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    if-ge p4, v10, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v0

    :goto_1
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    invoke-static {v1, v2, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    new-array v1, v1, [B

    invoke-static {p1, v1, v9}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeVersion:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    invoke-static {v2, v1, v10}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    array-length v2, v0

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    const/4 v2, 0x5

    array-length v3, v0

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v5

    array-length v0, v5

    add-int/lit16 v1, p4, 0x400

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeSeqNo:J

    array-length v7, v5

    move v4, p1

    move v6, v9

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v0

    goto :goto_1
.end method
