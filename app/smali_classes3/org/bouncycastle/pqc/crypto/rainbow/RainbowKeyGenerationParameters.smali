.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-object v0
.end method
