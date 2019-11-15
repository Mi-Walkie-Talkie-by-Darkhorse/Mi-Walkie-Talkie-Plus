.class public abstract Lorg/bouncycastle/crypto/tls/DefaultTlsServer;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->getDHParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->getDHParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->namedCurves:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->namedCurves:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method protected getCipherSuites()[I
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xc030
        0xc02f
        0xc028
        0xc027
        0xc014
        0xc013
        0x9f
        0x9e
        0x6b
        0x67
        0x39
        0x33
        0x9d
        0x9c
        0x3d
        0x3c
        0x35
        0x2f
    .end array-data
.end method

.method public getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->getDSASignerCredentials()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->getECDSASignerCredentials()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->getRSASignerCredentials()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->getRSAEncryptionCredentials()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x7 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method protected getDHParameters()Lorg/bouncycastle/crypto/params/DHParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/agreement/DHStandardGroups;->rfc5114_2048_256:Lorg/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method protected getDSASignerCredentials()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
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

.method protected getECDSASignerCredentials()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
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

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsServer;->createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getRSAEncryptionCredentials()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;
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

.method protected getRSASignerCredentials()Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;
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
