.class public Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method


# virtual methods
.method public getDomainParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
