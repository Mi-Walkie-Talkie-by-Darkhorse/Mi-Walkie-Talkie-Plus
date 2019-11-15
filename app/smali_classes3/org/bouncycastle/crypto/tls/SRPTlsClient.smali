.class public Lorg/bouncycastle/crypto/tls/SRPTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsClient;


# instance fields
.field protected groupVerifier:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

.field protected identity:[B

.field protected password:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->groupVerifier:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->password:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;[B[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsSRPGroupVerifier;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsSRPGroupVerifier;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/tls/DefaultTlsSRPGroupVerifier;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/DefaultTlsSRPGroupVerifier;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

    return-void
.end method


# virtual methods
.method protected createSRPKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->groupVerifier:Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->password:[B

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

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
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xc01e

    aput v2, v0, v1

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsSRPUtils;->addSRPExtension(Ljava/util/Hashtable;[B)V

    return-object v0
.end method

.method public getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/bouncycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2f

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/SRPTlsClient;->requireSRPServerExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    return-void
.end method

.method protected requireSRPServerExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
