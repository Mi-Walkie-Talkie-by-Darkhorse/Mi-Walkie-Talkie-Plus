.class public Lorg/bouncycastle/crypto/tls/PSKTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsClient;


# instance fields
.field protected pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/PSKTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;)V

    return-void
.end method


# virtual methods
.method protected createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 9

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->namedCurves:[I

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->clientECPointFormats:[S

    iget-object v8, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->serverECPointFormats:[S

    move v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/params/DHParameters;[I[S[S)V

    return-object v0
.end method

.method public getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;
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

.method public getCipherSuites()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc037
        0xc035
        0xb2
        0x90
    .end array-data
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method
