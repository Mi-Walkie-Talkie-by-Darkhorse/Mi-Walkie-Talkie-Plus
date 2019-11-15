.class public Lorg/bouncycastle/crypto/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private final oneByte:[B

.field private streamCipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/StreamCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    return-void
.end method

.method private ensureCapacity(IZ)V
    .locals 1

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_2

    :cond_1
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->ensureCapacity(IZ)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->flush()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher data"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/StreamCipher;->reset()V
    :try_end_3
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/CipherIOException;

    const-string v2, "Error closing stream: "

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    int-to-byte v2, p1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/StreamCipher;->returnByte(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->ensureCapacity(IZ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v0, v1, v5, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
