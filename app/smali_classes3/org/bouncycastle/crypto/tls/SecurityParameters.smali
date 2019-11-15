.class public Lorg/bouncycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field encryptThenMAC:Z

.field entity:I

.field extendedMasterSecret:Z

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field pskIdentity:[B

.field serverRandom:[B

.field sessionHash:[B

.field srpIdentity:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    iput v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iput-short v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    iput-short v1, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    :cond_0
    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getPskIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getSessionHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method
