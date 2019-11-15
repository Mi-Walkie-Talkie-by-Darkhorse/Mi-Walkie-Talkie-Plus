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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ByteQueueOutputStream;->buffer:Lorg/bouncycastle/crypto/tls/ByteQueue;

    new-array v1, v4, [B

    int-to-byte v2, p1

    aput-byte v2, v1, v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/bouncycastle/crypto/tls/ByteQueue;->addData([BII)V

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
