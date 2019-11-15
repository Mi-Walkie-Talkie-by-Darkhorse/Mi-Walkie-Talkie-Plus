.class public Lorg/bouncycastle/crypto/params/RSABlindingParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blindingFactor:Ljava/math/BigInteger;

.field private publicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA parameters should be for a public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->publicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->blindingFactor:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getBlindingFactor()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->blindingFactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->publicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    return-object v0
.end method
