.class final Lorg/bouncycastle/asn1/x9/X962NamedCurves$13;
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
    .locals 9

    const/16 v8, 0x10

    new-instance v5, Ljava/math/BigInteger;

    const-string v0, "20000000000000000000000050508CB89F652824E06B8173"

    invoke-direct {v5, v0, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xbf

    const/16 v2, 0x9

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "401028774D7777C7B7666D1366EA432071274F89FF01E718"

    invoke-direct {v3, v4, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v7, "0620048D28BCBD03B6249C99182B7C8CD19700C362C46A01"

    invoke-direct {v4, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v4, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    const-string v1, "023809B2B7CC1B28CC5A87926AAD83FD28789E81E2C9E3BF10"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method
