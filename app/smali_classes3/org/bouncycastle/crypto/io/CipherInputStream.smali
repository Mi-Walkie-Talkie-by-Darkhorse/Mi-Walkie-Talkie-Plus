.class public Lorg/bouncycastle/crypto/io/CipherInputStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final INPUT_BUF_SIZE:I = 0x800


# instance fields
.field private aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufOff:I

.field private bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private finalized:Z

.field private inBuf:[B

.field private markBuf:[B

.field private markBufOff:I

.field private markPosition:J

.field private maxBuf:I

.field private skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

.field private streamCipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    instance-of v0, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/SkippingCipher;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    return-void

    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    instance-of v0, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/SkippingCipher;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    return-void

    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    instance-of v0, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/SkippingCipher;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    return-void

    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private ensureCapacity(IZ)V
    .locals 1

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_2

    :cond_1
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result p1

    goto :goto_0
.end method

.method private finaliseCipher()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/io/CipherInputStream;->ensureCapacity(IZ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error finalising cipher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextChunk()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->ensureCapacity(IZ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/io/CipherIOException;

    const-string v2, "Error processing stream "

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    iput v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    :cond_0
    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    :cond_3
    throw v0
.end method

.method public mark(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SkippingCipher;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/io/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    goto :goto_0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cipher must implement SkippingCipher to be used with reset()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    iget-wide v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/SkippingCipher;->seekTo(J)J

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :goto_0
    return-wide p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    int-to-long v2, v0

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/SkippingCipher;->skip(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to skip cipher "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    int-to-long v0, v0

    add-long p1, v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    int-to-long p1, v0

    goto :goto_0
.end method
