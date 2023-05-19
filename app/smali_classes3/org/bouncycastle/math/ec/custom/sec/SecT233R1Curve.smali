.class public Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;


# static fields
.field private static final SecT233R1_DEFAULT_COORDS:I = 0x6


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xe9

    const/16 v1, 0x4a

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;-><init>()V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    const/16 v0, 0xe9

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT233R1Point;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public getK2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getK3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getM()I
    .locals 1

    const/16 v0, 0xe9

    return v0
.end method

.method public isKoblitz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
