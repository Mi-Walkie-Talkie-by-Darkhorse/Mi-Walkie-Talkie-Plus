.class final Lorg/bouncycastle/asn1/sec/SECNamedCurves$5;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/sec/SECNamedCurves;
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
    .locals 15

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    const/4 v11, 0x0

    const-string v0, "0100000000000000000001B8FA16DFAB9ACA16B6B3"

    invoke-static {v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v12

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    new-instance v0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "9ba48cba5ebcb9b6bd33b92830b2a2e0e192f10a"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "c39c6c3b3a36d7701b9c71a1f5804ae5d0003f4"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "9162fbe73984472a0a9e"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "-96341f1138933bc2f505"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/math/BigInteger;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "127971af8721782ecffa3"

    const/16 v14, 0x10

    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "9162fbe73984472a0a9e"

    const/16 v14, 0x10

    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v4, v5

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "9162fbe73984472a0a9d0590"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "96341f1138933bc2f503fd44"

    const/16 v14, 0x10

    invoke-direct {v6, v7, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0xb0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/sec/SECNamedCurves;->access$200(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    const-string v0, "043B4C382CE37AA192A4019E763036F4F5DD4D7EBB938CF935318FDCED6BC28286531733C3F03C4FEE"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-object v3, v12

    move-object v4, v13

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
