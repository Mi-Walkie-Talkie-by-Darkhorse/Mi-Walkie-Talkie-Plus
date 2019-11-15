.class public Lorg/bouncycastle/crypto/tls/ServerName;
.super Ljava/lang/Object;


# instance fields
.field protected name:Ljava/lang/Object;

.field protected nameType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/ServerName;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'name\' is not an instance of the correct type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/ServerName;->nameType:S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    return-void
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'name\' is an unsupported value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v0, p1, Ljava/lang/String;

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerName;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x32

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/crypto/tls/ServerName;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/ServerName;-><init>(SLjava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x50

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/ServerName;->nameType:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/ServerName;->nameType:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/ServerName;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'name\' is not a HostName string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/ServerName;->nameType:S

    return v0
.end method
