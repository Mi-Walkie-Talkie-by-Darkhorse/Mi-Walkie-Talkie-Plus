.class public abstract Lorg/bouncycastle/crypto/tls/DefaultTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getCipherSuites()[I
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xc02b
        0xc023
        0xc009
        0xc02f
        0xc027
        0xc013
        0xa2
        0x40
        0x32
        0x9e
        0x67
        0x33
        0x9c
        0x3c
        0x2f
    .end array-data
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

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
