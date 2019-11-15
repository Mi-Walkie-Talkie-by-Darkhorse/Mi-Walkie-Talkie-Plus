.class public Lorg/bouncycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;


# static fields
.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_0
.end method

.method public static getFixedPointPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static precompute(Lorg/bouncycastle/math/ec/ECPoint;I)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    .locals 11

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    shl-int v5, v3, p1

    const-string v0, "bc_fixed_point"

    invoke-virtual {v4, p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getFixedPointPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, v5, :cond_4

    :cond_0
    invoke-static {v4}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int v1, v0, p1

    new-array v7, p1, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object p0, v7, v9

    move v0, v3

    :goto_0
    if-ge v0, p1, :cond_1

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v7, v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v7}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    new-array v8, v5, [Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v8, v9

    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    aget-object v9, v7, v2

    shl-int v1, v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_2

    sub-int v10, v0, v1

    aget-object v10, v8, v10

    invoke-virtual {v10, v9}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v8, v0

    shl-int/lit8 v10, v1, 0x1

    add-int/2addr v0, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v6, p1}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    const-string v0, "bc_fixed_point"

    invoke-virtual {v4, p0, v0, v6}, Lorg/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompInfo;)V

    :cond_4
    return-object v6
.end method
