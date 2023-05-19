.class public Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private buffer:Lorg/bouncycastle/crypto/tls/ByteQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/bouncycastle/crypto/tls/ByteQueue;

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/bouncycastle/crypto/tls/ByteQueue;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/bouncycastle/crypto/tls/ByteQueue;

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/bouncycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x1

    new-array v2, v1, [B

    int-to-byte p1, p1

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/bouncycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

    return-void
.end method
