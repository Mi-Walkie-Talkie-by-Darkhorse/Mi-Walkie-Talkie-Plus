.class Lorg/bouncycastle/crypto/tls/TlsOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private buf:[B

.field private handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsProtocol;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->buf:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->flush()V

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->buf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->buf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->writeData([BII)V

    return-void
.end method
