.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlainDSAEncoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;-><init>()V

    return-void
.end method

.method private makeUnsigned(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public decode([B)[Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {p1, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v1

    array-length v4, v2

    invoke-static {p1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v0, v5

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v1, v0, v6

    return-object v0
.end method

.method public encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$PlainDSAEncoder;->makeUnsigned(Ljava/math/BigInteger;)[B

    move-result-object v2

    array-length v0, v1

    array-length v3, v2

    if-le v0, v3, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    :goto_0
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    array-length v4, v1

    sub-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    array-length v3, v2

    sub-int/2addr v1, v3

    array-length v3, v2

    invoke-static {v2, v5, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    goto :goto_0
.end method
