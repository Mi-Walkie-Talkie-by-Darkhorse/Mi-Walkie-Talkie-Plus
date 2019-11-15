.class public Lorg/bouncycastle/crypto/tls/URLAndHash;
.super Ljava/lang/Object;


# instance fields
.field protected sha1Hash:[B

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'url\' must have length from 1 to (2^16 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'sha1Hash\' must have length == 20, if present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    return-void
.end method

.method public static parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/URLAndHash;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2f

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    const/16 v0, 0x14

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v0

    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/tls/URLAndHash;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/URLAndHash;-><init>(Ljava/lang/String;[B)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public getSHA1Hash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/URLAndHash;->url:Ljava/lang/String;

    return-object v0
.end method
