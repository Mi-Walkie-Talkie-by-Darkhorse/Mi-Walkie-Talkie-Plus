.class final Lorg/bouncycastle/asn1/x9/X962NamedCurves$8;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 12

    new-instance v9, Ljava/math/BigInteger;

    const-string v0, "0400000000000000000001E60FC8821CC74DAEAFC1"

    const/16 v1, 0x10

    invoke-direct {v9, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    new-instance v11, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    new-instance v5, Ljava/math/BigInteger;

    const-string v0, "072546B5435234A422E0789675F432C89435DE5242"

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "00C9517D06D5240D3CFF38C74B20B6CD4D6F9DD4D9"

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    move-object v0, v11

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    const-string v0, "0307AF69989546103D79329FCC3D74880F33BBE803CB"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v11, v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    const-string v0, "D2C0FB15760860DEF1EEF4D696E6768756151754"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, v11

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
