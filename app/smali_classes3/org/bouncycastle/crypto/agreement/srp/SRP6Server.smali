.class public Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;
.super Ljava/lang/Object;


# instance fields
.field protected A:Ljava/math/BigInteger;

.field protected B:Ljava/math/BigInteger;

.field protected Key:Ljava/math/BigInteger;

.field protected M1:Ljava/math/BigInteger;

.field protected M2:Ljava/math/BigInteger;

.field protected N:Ljava/math/BigInteger;

.field protected S:Ljava/math/BigInteger;

.field protected b:Ljava/math/BigInteger;

.field protected digest:Lorg/bouncycastle/crypto/Digest;

.field protected g:Ljava/math/BigInteger;

.field protected random:Ljava/security/SecureRandom;

.field protected u:Ljava/math/BigInteger;

.field protected v:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateS()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->v:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->u:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->b:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateU(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->u:Ljava/math/BigInteger;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    return-object v0
.end method

.method public calculateServerEvidenceMessage()Ljava/math/BigInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "Impossible to compute M2: some data are missing from the previous operations (A,M1,S)"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateM2(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M2:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public calculateSessionKey()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M2:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateKey(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->Key:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->Key:Ljava/math/BigInteger;

    return-object v0
.end method

.method public generateServerCredentials()Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateK(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->selectPrivateValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->b:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->v:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->b:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->v:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->random:Ljava/security/SecureRandom;

    iput-object p4, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SRP6GroupParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected selectPrivateValue()Ljava/math/BigInteger;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->g:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->generatePrivateValue(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public verifyClientEvidenceMessage(Ljava/math/BigInteger;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->N:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->A:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->B:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->S:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->calculateM1(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Server;->M1:Ljava/math/BigInteger;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
