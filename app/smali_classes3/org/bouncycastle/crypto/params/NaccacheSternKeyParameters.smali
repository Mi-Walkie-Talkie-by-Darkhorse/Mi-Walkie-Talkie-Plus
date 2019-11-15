.class public Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private g:Ljava/math/BigInteger;

.field lowerSigmaBound:I

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->g:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->n:Ljava/math/BigInteger;

    iput p4, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->lowerSigmaBound:I

    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLowerSigmaBound()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->lowerSigmaBound:I

    return v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method
