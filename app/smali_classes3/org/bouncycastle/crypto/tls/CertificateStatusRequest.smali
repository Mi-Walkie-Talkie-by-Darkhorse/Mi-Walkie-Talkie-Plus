.class public Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;
.super Ljava/lang/Object;


# instance fields
.field protected request:Ljava/lang/Object;

.field protected statusType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'request\' is not an instance of the correct type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    return-void
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'statusType\' is an unsupported value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;-><init>(SLjava/lang/Object;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->encode(Ljava/io/OutputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getOCSPStatusRequest()Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'request\' is not an OCSPStatusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;

    return-object v0
.end method

.method public getRequest()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    return v0
.end method
