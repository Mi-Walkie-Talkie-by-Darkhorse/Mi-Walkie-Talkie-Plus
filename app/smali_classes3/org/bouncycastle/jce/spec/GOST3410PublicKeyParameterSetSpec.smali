.class public Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
