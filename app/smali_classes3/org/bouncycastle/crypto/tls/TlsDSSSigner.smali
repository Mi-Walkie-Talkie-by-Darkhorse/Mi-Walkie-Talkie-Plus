.class public Lorg/bouncycastle/crypto/tls/TlsDSSSigner;
.super Lorg/bouncycastle/crypto/tls/TlsDSASigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDSAImpl(S)Lorg/bouncycastle/crypto/DSA;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSASigner;

    new-instance v1, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/DSASigner;-><init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V

    return-object v0
.end method

.method protected getSignatureAlgorithm()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    return v0
.end method
