.class public Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/CramerShoupParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
