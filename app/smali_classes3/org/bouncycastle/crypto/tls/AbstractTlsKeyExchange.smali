.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected keyExchange:I

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(ILjava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 4

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->keyExchange:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getDefaultRSASignatureAlgorithms()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supported_signature_algorithms not allowed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected parseSignature(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->parse(Lorg/bouncycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)V

    :cond_0
    return-object v0
.end method

.method public processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skipClientCredentials()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public skipServerKeyExchange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method
