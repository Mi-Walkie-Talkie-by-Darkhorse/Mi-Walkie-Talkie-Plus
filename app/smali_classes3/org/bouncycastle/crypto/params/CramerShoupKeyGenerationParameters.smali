.class public Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/CramerShoupParameters;)V
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->getStrength(Lorg/bouncycastle/crypto/params/CramerShoupParameters;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-void
.end method

.method static getStrength(Lorg/bouncycastle/crypto/params/CramerShoupParameters;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method
