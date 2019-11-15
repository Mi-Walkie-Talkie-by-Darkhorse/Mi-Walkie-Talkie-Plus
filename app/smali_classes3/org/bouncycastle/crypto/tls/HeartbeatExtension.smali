.class public Lorg/bouncycastle/crypto/tls/HeartbeatExtension;
.super Ljava/lang/Object;


# instance fields
.field protected mode:S


# direct methods
.method public constructor <init>(S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/HeartbeatMode;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mode\' is not a valid HeartbeatMode value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/HeartbeatExtension;->mode:S

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/HeartbeatExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/HeartbeatMode;->isValid(S)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/tls/HeartbeatExtension;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/tls/HeartbeatExtension;-><init>(S)V

    return-object v1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatExtension;->mode:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    return-void
.end method

.method public getMode()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/HeartbeatExtension;->mode:S

    return v0
.end method
