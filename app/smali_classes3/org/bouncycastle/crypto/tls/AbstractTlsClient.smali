.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsClient;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsClient;


# instance fields
.field protected cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

.field protected clientECPointFormats:[S

.field protected context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

.field protected namedCurves:[I

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected serverECPointFormats:[S

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method protected allowUnexpectedServerExtension(Ljava/lang/Integer;[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->readSupportedEllipticCurvesExtension([B)[I

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected checkForUnexpectedServerExtension(Ljava/util/Hashtable;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->allowUnexpectedServerExtension(Ljava/lang/Integer;[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getMACAlgorithm(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->cipherFactory:Lorg/bouncycastle/crypto/tls/TlsCipherFactory;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/bouncycastle/crypto/tls/TlsContext;II)Lorg/bouncycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsClientContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getDefaultSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getCipherSuites()[I

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->containsECCCipherSuites([I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->namedCurves:[I

    const/4 v1, 0x3

    new-array v1, v1, [S

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->clientECPointFormats:[S

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->namedCurves:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->addSupportedEllipticCurvesExtension(Ljava/util/Hashtable;[I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->clientECPointFormats:[S

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x17
        0x18
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method public getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getClientSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCompressionMethods()[S
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getMinimumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->context:Lorg/bouncycastle/crypto/tls/TlsClientContext;

    return-void
.end method

.method public isFallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    return-void
.end method

.method public notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->getMinimumVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public notifySessionID([B)V
    .locals 0

    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->checkForUnexpectedServerExtension(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->EXT_elliptic_curves:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->checkForUnexpectedServerExtension(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    iget v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->serverECPointFormats:[S

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->EXT_ec_point_formats:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/AbstractTlsClient;->checkForUnexpectedServerExtension(Ljava/util/Hashtable;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public processServerSupplementalData(Ljava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method
