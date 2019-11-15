.class public Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;
.super Ljava/lang/Object;


# instance fields
.field private c:I

.field private cL:J

.field private x0:I

.field private x0L:J


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iput p2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iput-wide p3, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    iget v1, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getC()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    return v0
.end method

.method public getCL()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    return-wide v0
.end method

.method public getX0()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    return v0
.end method

.method public getX0L()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v4, 0x20

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method
