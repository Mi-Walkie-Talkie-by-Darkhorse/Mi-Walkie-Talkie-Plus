.class public Lorg/bouncycastle/crypto/tls/HeartbeatMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;
    }
.end annotation


# instance fields
.field protected paddingLength:I

.field protected payload:[B

.field protected type:S


# direct methods
.method public constructor <init>(S[BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/HeartbeatMessageType;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' is not a valid HeartbeatMessageType value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'payload\' must have length < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x10

    if-ge p3, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'paddingLength\' must be at least 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->type:S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->payload:[B

    iput p3, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->paddingLength:I

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/HeartbeatMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/HeartbeatMessageType;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    new-instance v2, Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;-><init>()V

    invoke-static {p0, v2}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->toTruncatedByteArray(I)[B

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->size()I

    move-result v0

    array-length v2, v3

    sub-int v2, v0, v2

    new-instance v0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;-><init>(S[BI)V

    goto :goto_0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->type:S

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->payload:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->payload:[B

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->payload:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatMessage;->paddingLength:I

    new-array v0, v0, [B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
