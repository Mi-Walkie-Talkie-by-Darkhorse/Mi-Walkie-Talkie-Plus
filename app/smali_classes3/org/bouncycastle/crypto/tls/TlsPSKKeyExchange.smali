.class public Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;


# instance fields
.field protected clientECPointFormats:[S

.field protected dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

.field protected dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

.field protected ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field protected ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field protected namedCurves:[I

.field protected premasterSecret:[B

.field protected psk:[B

.field protected pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

.field protected pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

.field protected psk_identity_hint:[B

.field protected rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

.field protected serverECPointFormats:[S

.field protected serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;Lorg/bouncycastle/crypto/params/DHParameters;[I[S[S)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    iput-object p5, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    iput-object p6, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    iput-object p7, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    iput-object p8, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    return-void

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    if-nez v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;[SLorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_1
.end method

.method protected generateOtherSecret(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->calculateECDHBasicAgreement(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_0

    :cond_4
    new-array v0, p1, [B

    goto :goto_0
.end method

.method public generatePremasterSecret()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->generateOtherSecret(I)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public generateServerKeyExchange()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;->getHint()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->requiresServerKeyExchange()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-nez v1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    if-nez v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;[I[SLjava/io/OutputStream;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    goto :goto_2
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
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

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentityManager:Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKIdentityManager;->getPSK([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk:[B

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x73

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iput-object v0, v1, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverECPointFormats:[S

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/bouncycastle/crypto/params/ECDomainParameters;[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;->decryptPreMasterSecret([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_1
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2b

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/16 v0, 0x20

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/ServerDHParams;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerDHParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ServerDHParams;->getPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->namedCurves:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->readECParameters([I[SLjava/io/InputStream;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->clientECPointFormats:[S

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/bouncycastle/crypto/params/ECDomainParameters;[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    goto :goto_0
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-object p1
.end method
