.class public Lorg/bouncycastle/crypto/tls/PSKTlsServer;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsServer;


# instance fields
.field protected pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/PSKTlsServer;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;)V

    return-void
.end method


# virtual methods
.method protected createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 9

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->getDHParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->namedCurves:[I

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->clientECPointFormats:[S

    iget-object v8, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/params/DHParameters;[I[S[S)V

    return-object v0
.end method

.method protected getCipherSuites()[I
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

.method public getCredentials()Lorg/bouncycastle/crypto/tls/TlsCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->getRSAEncryptionCredentials()Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getDHParameters()Lorg/bouncycastle/crypto/params/DHParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/agreement/DHStandardGroups;->rfc5114_2048_256:Lorg/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/PSKTlsServer;->createPSKKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

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
