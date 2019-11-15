.class public Lorg/bouncycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private G:Lorg/bouncycastle/math/ec/ECPoint;

.field private curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->G:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->G:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->G:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint;->equals(Lorg/bouncycastle/math/ec/ECPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->G:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
