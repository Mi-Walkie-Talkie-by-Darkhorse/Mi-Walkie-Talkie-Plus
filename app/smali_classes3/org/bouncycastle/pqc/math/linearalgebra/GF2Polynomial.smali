.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
.super Ljava/lang/Object;


# static fields
.field private static final bitMask:[I

.field private static final parity:[Z

.field private static rand:Ljava/util/Random;

.field private static final reverseRightMask:[I

.field private static final squaringTable:[S


# instance fields
.field private blocks:I

.field private len:I

.field private value:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x100

    const/16 v1, 0x21

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    new-array v0, v2, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff    # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string v0, "ZERO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "ONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    goto :goto_0

    :cond_2
    const-string v0, "RANDOM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    goto :goto_0

    :cond_3
    const-string v0, "X"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignX()V

    goto :goto_0

    :cond_4
    const-string v0, "ALL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->assignAll()V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: GF2Polynomial was called using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aget-byte v1, v2, v3

    if-nez v1, :cond_4

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    array-length v4, v1

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_0
    array-length v1, v0

    and-int/lit8 v2, v1, 0x3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v4, -0x1

    aget v7, v5, v6

    aget-byte v8, v0, v1

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v1

    shl-int/lit8 v9, v9, 0x3

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    shr-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v5, v2, -0x1

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v5, v2, -0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    return-void

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 10

    const/high16 v9, 0xff0000

    const v8, 0xff00

    const/high16 v7, -0x1000000

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1

    array-length v3, p2

    shl-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v1

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v8

    or-int/2addr v5, v6

    aput v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v1

    add-int/lit8 v6, v3, -0x2

    aget-byte v6, p2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    aput v5, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v4, v1

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x18

    and-int/2addr v3, v7

    or-int/2addr v3, v5

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, -0x1

    array-length v2, p2

    shl-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    if-lez v2, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    add-int/lit8 v5, v2, -0x1

    aget-byte v5, p2, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v1

    :cond_2
    if-le v2, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v0, v1

    add-int/lit8 v4, v2, -0x2

    aget-byte v4, p2, v4

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    aput v3, v0, v1

    :cond_3
    const/4 v0, 0x2

    if-le v2, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v0, v1

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p2, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    aput v2, v0, v1

    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    return-void
.end method

.method private doShiftBlocksLeft(I)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v2

    if-gt v0, v2, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v0, p1

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v3, p1

    invoke-static {v2, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :cond_2
    return-void
.end method

.method private karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v3

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x40

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x80

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x100

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const/16 v2, 0x200

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult512([I[I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v1, v2, v1

    add-int/lit8 v2, v1, -0x1

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    shr-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    shr-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    shr-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v7, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto/16 :goto_0
.end method

.method private lower(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v1, p1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static mult128([I[I)[I
    .locals 10

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    array-length v3, p0

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    array-length v6, p0

    add-int/lit8 v6, v6, -0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    array-length v5, p1

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    array-length v8, p1

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v5, 0x1

    aget v5, v2, v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget v5, v4, v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    aget v5, v2, v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    aget v5, v4, v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v5

    const/4 v6, 0x5

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x3

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    :cond_3
    :goto_0
    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v7, 0x0

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x0

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v5, v2, v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    aget v5, v4, v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v2

    const/4 v4, 0x3

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x2

    aget v5, v0, v4

    const/4 v6, 0x0

    aget v2, v2, v6

    xor-int/2addr v2, v5

    aput v2, v0, v4

    :goto_1
    const/4 v2, 0x1

    aget v2, v1, v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    aget v2, v3, v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v1

    const/4 v2, 0x3

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v1, v1, v4

    xor-int/2addr v1, v3

    aput v1, v0, v2

    :goto_2
    return-object v0

    :cond_4
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v5

    const/4 v6, 0x7

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x6

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x2

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x3

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    goto/16 :goto_0

    :cond_5
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v2

    const/4 v4, 0x5

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x4

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x3

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x2

    aget v5, v0, v4

    const/4 v6, 0x0

    aget v2, v2, v6

    xor-int/2addr v2, v5

    aput v2, v0, v4

    goto/16 :goto_1

    :cond_6
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v1

    const/4 v2, 0x5

    aget v3, v0, v2

    const/4 v4, 0x3

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v1, v1, v4

    xor-int/2addr v1, v3

    aput v1, v0, v2

    goto/16 :goto_2
.end method

.method private static mult256([I[I)[I
    .locals 10

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    array-length v3, p0

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    array-length v6, p0

    add-int/lit8 v6, v6, -0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    array-length v5, p1

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    array-length v8, p1

    add-int/lit8 v8, v8, -0x4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v5, 0x3

    aget v5, v2, v5

    if-nez v5, :cond_5

    const/4 v5, 0x2

    aget v5, v2, v5

    if-nez v5, :cond_5

    const/4 v5, 0x3

    aget v5, v4, v5

    if-nez v5, :cond_5

    const/4 v5, 0x2

    aget v5, v4, v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    aget v5, v2, v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget v5, v4, v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    aget v5, v2, v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    aget v5, v4, v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v5

    const/16 v6, 0x9

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    :cond_3
    :goto_0
    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v7, 0x0

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x2

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x3

    aget v6, v2, v5

    const/4 v7, 0x3

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x0

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    aget v6, v4, v5

    const/4 v7, 0x2

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x3

    aget v6, v4, v5

    const/4 v7, 0x3

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v2

    const/16 v4, 0xb

    aget v5, v0, v4

    const/4 v6, 0x7

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xa

    aget v5, v0, v4

    const/4 v6, 0x6

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x9

    aget v5, v0, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x8

    aget v5, v0, v4

    const/4 v6, 0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x7

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x6

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x5

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x4

    aget v5, v0, v4

    const/4 v6, 0x0

    aget v2, v2, v6

    xor-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v1

    const/16 v2, 0xb

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xa

    aget v3, v0, v2

    const/4 v4, 0x6

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x9

    aget v3, v0, v2

    const/4 v4, 0x5

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x8

    aget v3, v0, v2

    const/4 v4, 0x4

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x7

    aget v3, v0, v2

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x7

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x6

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x6

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x4

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    const/4 v4, 0x3

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v1, v1, v4

    xor-int/2addr v1, v3

    aput v1, v0, v2

    return-object v0

    :cond_4
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult64([I[I)[I

    move-result-object v5

    const/16 v6, 0xb

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xa

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x9

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x7

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x6

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    goto/16 :goto_0

    :cond_5
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult128([I[I)[I

    move-result-object v5

    const/16 v6, 0xf

    aget v7, v0, v6

    const/4 v8, 0x7

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xe

    aget v7, v0, v6

    const/4 v8, 0x6

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xd

    aget v7, v0, v6

    const/4 v8, 0x5

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xc

    aget v7, v0, v6

    const/4 v8, 0x4

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xb

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    const/4 v9, 0x7

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xa

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x6

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x9

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x5

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x4

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x7

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x6

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x5

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/4 v6, 0x4

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    goto/16 :goto_0
.end method

.method private static mult32(II)[I
    .locals 12

    const-wide v10, 0xffffffffL

    const/16 v9, 0x20

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v2, v0, [I

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    int-to-long v0, p1

    and-long v6, v0, v10

    const-wide/16 v0, 0x0

    move v3, v4

    :goto_1
    if-gt v3, v9, :cond_3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    add-int/lit8 v8, v3, -0x1

    aget v5, v5, v8

    and-int/2addr v5, p0

    if-eqz v5, :cond_2

    xor-long/2addr v0, v6

    :cond_2
    shl-long/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    ushr-long v6, v0, v9

    long-to-int v3, v6

    aput v3, v2, v4

    const/4 v3, 0x0

    and-long/2addr v0, v10

    long-to-int v0, v0

    aput v0, v2, v3

    move-object v0, v2

    goto :goto_0
.end method

.method private static mult512([I[I)[I
    .locals 10

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x8

    new-array v2, v2, [I

    array-length v3, p0

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    array-length v6, p0

    add-int/lit8 v6, v6, -0x8

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x8

    new-array v4, v4, [I

    array-length v5, p1

    const/16 v6, 0x8

    if-le v5, v6, :cond_1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    array-length v8, p1

    add-int/lit8 v8, v8, -0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v5

    const/16 v6, 0x1f

    aget v7, v0, v6

    const/16 v8, 0xf

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1e

    aget v7, v0, v6

    const/16 v8, 0xe

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1d

    aget v7, v0, v6

    const/16 v8, 0xd

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1c

    aget v7, v0, v6

    const/16 v8, 0xc

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1b

    aget v7, v0, v6

    const/16 v8, 0xb

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x1a

    aget v7, v0, v6

    const/16 v8, 0xa

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x19

    aget v7, v0, v6

    const/16 v8, 0x9

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x18

    aget v7, v0, v6

    const/16 v8, 0x8

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x17

    aget v7, v0, v6

    const/4 v8, 0x7

    aget v8, v5, v8

    const/16 v9, 0xf

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x16

    aget v7, v0, v6

    const/4 v8, 0x6

    aget v8, v5, v8

    const/16 v9, 0xe

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x15

    aget v7, v0, v6

    const/4 v8, 0x5

    aget v8, v5, v8

    const/16 v9, 0xd

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x14

    aget v7, v0, v6

    const/4 v8, 0x4

    aget v8, v5, v8

    const/16 v9, 0xc

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x13

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    const/16 v9, 0xb

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x12

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    const/16 v9, 0xa

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x11

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    const/16 v9, 0x9

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x10

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v8, v5, v8

    const/16 v9, 0x8

    aget v9, v5, v9

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xf

    aget v7, v0, v6

    const/4 v8, 0x7

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xe

    aget v7, v0, v6

    const/4 v8, 0x6

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xd

    aget v7, v0, v6

    const/4 v8, 0x5

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xc

    aget v7, v0, v6

    const/4 v8, 0x4

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xb

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0xa

    aget v7, v0, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x9

    aget v7, v0, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    const/16 v6, 0x8

    aget v7, v0, v6

    const/4 v8, 0x0

    aget v5, v5, v8

    xor-int/2addr v5, v7

    aput v5, v0, v6

    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v7, 0x0

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x2

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x3

    aget v6, v2, v5

    const/4 v7, 0x3

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x4

    aget v6, v2, v5

    const/4 v7, 0x4

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x5

    aget v6, v2, v5

    const/4 v7, 0x5

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x6

    aget v6, v2, v5

    const/4 v7, 0x6

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x7

    aget v6, v2, v5

    const/4 v7, 0x7

    aget v7, v1, v7

    xor-int/2addr v6, v7

    aput v6, v2, v5

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x0

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    aget v6, v4, v5

    const/4 v7, 0x2

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x3

    aget v6, v4, v5

    const/4 v7, 0x3

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x4

    aget v6, v4, v5

    const/4 v7, 0x4

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x5

    aget v6, v4, v5

    const/4 v7, 0x5

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x6

    aget v6, v4, v5

    const/4 v7, 0x6

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x7

    aget v6, v4, v5

    const/4 v7, 0x7

    aget v7, v3, v7

    xor-int/2addr v6, v7

    aput v6, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v2

    const/16 v4, 0x17

    aget v5, v0, v4

    const/16 v6, 0xf

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x16

    aget v5, v0, v4

    const/16 v6, 0xe

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x15

    aget v5, v0, v4

    const/16 v6, 0xd

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x14

    aget v5, v0, v4

    const/16 v6, 0xc

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x13

    aget v5, v0, v4

    const/16 v6, 0xb

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x12

    aget v5, v0, v4

    const/16 v6, 0xa

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x11

    aget v5, v0, v4

    const/16 v6, 0x9

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x10

    aget v5, v0, v4

    const/16 v6, 0x8

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xf

    aget v5, v0, v4

    const/4 v6, 0x7

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xe

    aget v5, v0, v4

    const/4 v6, 0x6

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xd

    aget v5, v0, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xc

    aget v5, v0, v4

    const/4 v6, 0x4

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xb

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0xa

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x9

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v6, v2, v6

    xor-int/2addr v5, v6

    aput v5, v0, v4

    const/16 v4, 0x8

    aget v5, v0, v4

    const/4 v6, 0x0

    aget v2, v2, v6

    xor-int/2addr v2, v5

    aput v2, v0, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult256([I[I)[I

    move-result-object v1

    const/16 v2, 0x17

    aget v3, v0, v2

    const/16 v4, 0xf

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x16

    aget v3, v0, v2

    const/16 v4, 0xe

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x15

    aget v3, v0, v2

    const/16 v4, 0xd

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x14

    aget v3, v0, v2

    const/16 v4, 0xc

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x13

    aget v3, v0, v2

    const/16 v4, 0xb

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x12

    aget v3, v0, v2

    const/16 v4, 0xa

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x11

    aget v3, v0, v2

    const/16 v4, 0x9

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x10

    aget v3, v0, v2

    const/16 v4, 0x8

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xf

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v4, v1, v4

    const/16 v5, 0xf

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xe

    aget v3, v0, v2

    const/4 v4, 0x6

    aget v4, v1, v4

    const/16 v5, 0xe

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xd

    aget v3, v0, v2

    const/4 v4, 0x5

    aget v4, v1, v4

    const/16 v5, 0xd

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xc

    aget v3, v0, v2

    const/4 v4, 0x4

    aget v4, v1, v4

    const/16 v5, 0xc

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xb

    aget v3, v0, v2

    const/4 v4, 0x3

    aget v4, v1, v4

    const/16 v5, 0xb

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xa

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    const/16 v5, 0xa

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x9

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    const/16 v5, 0x9

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x8

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    const/16 v5, 0x8

    aget v5, v1, v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x7

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x6

    aget v3, v0, v2

    const/4 v4, 0x6

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    aget v3, v0, v2

    const/4 v4, 0x5

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    aget v3, v0, v2

    const/4 v4, 0x4

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    const/4 v4, 0x3

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x0

    aget v1, v1, v4

    xor-int/2addr v1, v3

    aput v1, v0, v2

    return-object v0
.end method

.method private static mult64([I[I)[I
    .locals 12

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x4

    new-array v3, v0, [I

    aget v4, p0, v1

    array-length v0, p0

    if-le v0, v10, :cond_3

    aget v0, p0, v10

    :goto_0
    aget v5, p1, v1

    array-length v2, p1

    if-le v2, v10, :cond_2

    aget v2, p1, v10

    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v6

    const/4 v7, 0x3

    aget v8, v3, v7

    aget v9, v6, v10

    xor-int/2addr v8, v9

    aput v8, v3, v7

    aget v7, v3, v11

    aget v8, v6, v1

    aget v9, v6, v10

    xor-int/2addr v8, v9

    xor-int/2addr v7, v8

    aput v7, v3, v11

    aget v7, v3, v10

    aget v6, v6, v1

    xor-int/2addr v6, v7

    aput v6, v3, v10

    :cond_1
    xor-int/2addr v0, v4

    xor-int/2addr v2, v5

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v0

    aget v2, v3, v11

    aget v6, v0, v10

    xor-int/2addr v2, v6

    aput v2, v3, v11

    aget v2, v3, v10

    aget v0, v0, v1

    xor-int/2addr v0, v2

    aput v0, v3, v10

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->mult32(II)[I

    move-result-object v0

    aget v2, v3, v11

    aget v4, v0, v10

    xor-int/2addr v2, v4

    aput v2, v3, v11

    aget v2, v3, v10

    aget v4, v0, v1

    aget v5, v0, v10

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    aput v2, v3, v10

    aget v2, v3, v1

    aget v0, v0, v1

    xor-int/2addr v0, v2

    aput v0, v3, v1

    return-object v3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private upper(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-lt v2, p1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method private zeroUnusedBits()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v4, v4, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method public assignAll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public assignOne()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v1, v0, v3

    return-void
.end method

.method public assignX()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v1, 0x2

    aput v1, v0, v2

    return-void
.end method

.method public assignZero()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public divide(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v4, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v1, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v1, v5, :cond_1

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v1, v0, v6

    aput-object v3, v0, v7

    :goto_0
    return-object v0

    :cond_1
    iget v1, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget v1, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v1, v5

    goto :goto_1

    :cond_2
    aput-object v2, v0, v6

    aput-object v3, v0, v7

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public expandN(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v0

    if-lt v0, v1, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    goto :goto_0

    :cond_3
    new-array v0, v1, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_0
.end method

.method public gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Both operands of gcd equal zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public getBit(I)I
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v3, p1, 0x1f

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    return-void
.end method

.method public isIrreducible()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v2, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v5, v2, -0x1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    const-string v6, "X"

    invoke-direct {v2, v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    move v3, v1

    :goto_1
    shr-int/lit8 v6, v5, 0x1

    if-gt v3, v6, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v7, 0x20

    const-string v8, "X"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isOne()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    if-eqz v3, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v0, v0, v2

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public isZero()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->karaMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public multiplyClassic(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 8

    const/16 v7, 0x1f

    const/4 v1, 0x0

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/16 v0, 0x20

    new-array v4, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    aput-object v0, v4, v1

    const/4 v0, 0x1

    :goto_0
    if-gt v0, v7, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_2
    if-gt v2, v7, :cond_2

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    sget-object v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    aget v6, v6, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    if-gt v2, v7, :cond_3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftBlocksLeft()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method public quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v1, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v1, v4, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    :cond_1
    return-object v0

    :cond_2
    iget v1, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    iget v1, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v1, v4

    goto :goto_0
.end method

.method public randomize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public randomize(Ljava/util/Random;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method

.method public reduceN()V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_1

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, v0, 0x5

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    return-void
.end method

.method reducePentanomial(I[I)V
    .locals 20

    ushr-int/lit8 v3, p1, 0x5

    and-int/lit8 v2, p1, 0x1f

    rsub-int/lit8 v4, v2, 0x20

    const/4 v2, 0x0

    aget v2, p2, v2

    sub-int v2, p1, v2

    ushr-int/lit8 v5, v2, 0x5

    const/4 v2, 0x0

    aget v2, p2, v2

    sub-int v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v6, v2, 0x20

    const/4 v2, 0x1

    aget v2, p2, v2

    sub-int v2, p1, v2

    ushr-int/lit8 v7, v2, 0x5

    const/4 v2, 0x1

    aget v2, p2, v2

    sub-int v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v8, v2, 0x20

    const/4 v2, 0x2

    aget v2, p2, v2

    sub-int v2, p1, v2

    ushr-int/lit8 v9, v2, 0x5

    const/4 v2, 0x2

    aget v2, p2, v2

    sub-int v2, p1, v2

    and-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v10, v2, 0x20

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, -0x2

    ushr-int/lit8 v2, v2, 0x5

    :goto_0
    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v11, v11, v2

    int-to-long v12, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v3

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v4

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v3

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v4, 0x20

    ushr-long v18, v12, v15

    xor-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v5

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v6

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v5

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v6, 0x20

    ushr-long v18, v12, v15

    xor-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v7

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v8

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v7

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v8, 0x20

    ushr-long v18, v12, v15

    xor-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v9

    add-int/lit8 v14, v14, -0x1

    aget v15, v11, v14

    shl-long v16, v12, v10

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    xor-int v15, v15, v16

    aput v15, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v14, v2, v9

    aget v15, v11, v14

    int-to-long v0, v15

    move-wide/from16 v16, v0

    rsub-int/lit8 v15, v10, 0x20

    ushr-long/2addr v12, v15

    xor-long v12, v12, v16

    long-to-int v12, v12

    aput v12, v11, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v12, 0x0

    aput v12, v11, v2

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v3

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const-wide v14, 0xffffffffL

    and-int/lit8 v2, p1, 0x1f

    shl-long/2addr v14, v2

    and-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v11, 0x0

    aget v14, v2, v11

    int-to-long v14, v14

    rsub-int/lit8 v4, v4, 0x20

    ushr-long v16, v12, v4

    xor-long v14, v14, v16

    long-to-int v4, v14

    aput v4, v2, v11

    sub-int v2, v3, v5

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v5

    add-int/lit8 v4, v4, -0x1

    aget v11, v2, v4

    shl-long v14, v12, v6

    long-to-int v14, v14

    xor-int/2addr v11, v14

    aput v11, v2, v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v5

    aget v5, v2, v4

    int-to-long v14, v5

    rsub-int/lit8 v5, v6, 0x20

    ushr-long v16, v12, v5

    xor-long v14, v14, v16

    long-to-int v5, v14

    aput v5, v2, v4

    sub-int v2, v3, v7

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v7

    add-int/lit8 v4, v4, -0x1

    aget v5, v2, v4

    shl-long v14, v12, v8

    long-to-int v6, v14

    xor-int/2addr v5, v6

    aput v5, v2, v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v7

    aget v5, v2, v4

    int-to-long v6, v5

    rsub-int/lit8 v5, v8, 0x20

    ushr-long v14, v12, v5

    xor-long/2addr v6, v14

    long-to-int v5, v6

    aput v5, v2, v4

    sub-int v2, v3, v9

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v9

    add-int/lit8 v4, v4, -0x1

    aget v5, v2, v4

    shl-long v6, v12, v10

    long-to-int v6, v6

    xor-int/2addr v5, v6

    aput v5, v2, v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v4, v3, v9

    aget v5, v2, v4

    int-to-long v6, v5

    rsub-int/lit8 v5, v10, 0x20

    ushr-long v8, v12, v5

    xor-long/2addr v6, v8

    long-to-int v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v2, v3

    sget-object v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v6, p1, 0x1f

    aget v5, v5, v6

    and-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method reduceTrinomial(II)V
    .locals 14

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v0, p1, 0x1f

    rsub-int/lit8 v2, v0, 0x20

    sub-int v0, p1, p2

    ushr-int/lit8 v3, v0, 0x5

    sub-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v4, v0, 0x20

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, -0x2

    ushr-int/lit8 v0, v0, 0x5

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    aget v9, v5, v8

    shl-long v10, v6, v2

    long-to-int v10, v10

    xor-int/2addr v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v1

    aget v9, v5, v8

    int-to-long v10, v9

    rsub-int/lit8 v9, v2, 0x20

    ushr-long v12, v6, v9

    xor-long/2addr v10, v12

    long-to-int v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v3

    add-int/lit8 v8, v8, -0x1

    aget v9, v5, v8

    shl-long v10, v6, v4

    long-to-int v10, v10

    xor-int/2addr v9, v10

    aput v9, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v8, v0, v3

    aget v9, v5, v8

    int-to-long v10, v9

    rsub-int/lit8 v9, v4, 0x20

    ushr-long/2addr v6, v9

    xor-long/2addr v6, v10

    long-to-int v6, v6

    aput v6, v5, v8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v0, v0, v1

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide v8, 0xffffffffL

    and-int/lit8 v0, p1, 0x1f

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v5, 0x0

    aget v8, v0, v5

    int-to-long v8, v8

    rsub-int/lit8 v2, v2, 0x20

    ushr-long v10, v6, v2

    xor-long/2addr v8, v10

    long-to-int v2, v8

    aput v2, v0, v5

    sub-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v2, v1, v3

    add-int/lit8 v2, v2, -0x1

    aget v5, v0, v2

    shl-long v8, v6, v4

    long-to-int v8, v8

    xor-int/2addr v5, v8

    aput v5, v0, v2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    sub-int v2, v1, v3

    aget v3, v0, v2

    int-to-long v8, v3

    rsub-int/lit8 v3, v4, 0x20

    ushr-long v4, v6, v3

    xor-long/2addr v4, v8

    long-to-int v3, v4

    aput v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reverseRightMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    and-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    return-void
.end method

.method public remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-ge v1, v3, :cond_2

    :cond_1
    return-object v0

    :cond_2
    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    sub-int/2addr v1, v3

    goto :goto_0
.end method

.method public resetBit(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public setBit(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method shiftBlocksLeft()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v5, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aput v4, v0, v4

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    goto :goto_1
.end method

.method public shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    shl-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    return-object v1
.end method

.method public shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 7

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    ushr-int/lit8 v0, p1, 0x5

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->doShiftBlocksLeft(I)V

    :cond_0
    and-int/lit8 v2, p1, 0x1f

    if-eqz v2, :cond_2

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    shl-int/2addr v4, v2

    aput v4, v3, v0

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v0

    iget-object v5, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    rsub-int/lit8 v6, v2, 0x20

    ushr-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    const/4 v3, 0x0

    aget v4, v0, v3

    shl-int v2, v4, v2

    aput v2, v0, v3

    :cond_2
    return-object v1
.end method

.method public shiftLeftAddThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;I)V
    .locals 7

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    ushr-int/lit8 v1, p2, 0x5

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v2, v3, :cond_2

    and-int/lit8 v2, p2, 0x1f

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/lit8 v6, p2, 0x1f

    rsub-int/lit8 v6, v6, 0x20

    ushr-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int v3, v0, v1

    aget v4, v2, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/lit8 v6, p2, 0x1f

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public shiftLeftThis()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v6, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    shl-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v6, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v1, v0, v5

    shl-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    :cond_3
    return-void
.end method

.method public shiftRight()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget-object v3, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v2, v0

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    iget v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_1

    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v3, v4

    aput v3, v0, v2

    :cond_1
    return-object v1
.end method

.method public shiftRightThis()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    aput v2, v0, v1

    :cond_1
    return-void
.end method

.method public squareThisBitwise()V
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v0, v3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    const/16 v5, 0x10

    if-ge v0, v5, :cond_3

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    shl-int/lit8 v5, v3, 0x1

    aget v6, v4, v5

    or-int/2addr v6, v1

    aput v6, v4, v5

    :cond_1
    const/high16 v5, 0x10000

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    or-int/2addr v6, v1

    aput v6, v4, v5

    :cond_2
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v4

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_0
.end method

.method public squareThisPreCalc()V
    .locals 9

    const/high16 v8, 0xff0000

    const v7, 0xff00

    const/high16 v6, -0x1000000

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x10

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v6

    ushr-int/lit8 v5, v5, 0x18

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v7

    ushr-int/lit8 v5, v5, 0x8

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v0, v2, :cond_3

    shl-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v7

    ushr-int/lit8 v5, v5, 0x8

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v4, v0

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x10

    aget-short v3, v3, v4

    sget-object v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->squaringTable:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v0

    and-int/2addr v5, v6

    ushr-int/lit8 v5, v5, 0x18

    aget-short v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    goto/16 :goto_0
.end method

.method public subtract(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    return-object v0
.end method

.method public subtractFromThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 1

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void
.end method

.method public testBit(I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v3, p1, 0x1f

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v2, 0x3

    new-array v4, v2, [B

    move v1, v0

    :goto_0
    shr-int/lit8 v5, v2, 0x2

    if-ge v1, v5, :cond_0

    shl-int/lit8 v5, v1, 0x2

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, -0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    const v8, 0xff00

    and-int/2addr v7, v8

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, -0x2

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v7, v7, v1

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    ushr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v5, v5, -0x3

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v6, v6, v1

    const/high16 v7, -0x1000000

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    const/16 v5, 0xff

    shl-int/2addr v5, v1

    and-int/2addr v2, v5

    ushr-int v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    new-array v1, v2, [B

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method

.method public toIntegerArray()[I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    const/16 v2, 0x10

    new-array v3, v2, [C

    fill-array-data v3, :array_0

    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "0000"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "0001"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "0010"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "0011"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "0100"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string v1, "0101"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "0110"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "0111"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string v1, "1000"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string v1, "1001"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string v1, "1010"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string v1, "1011"

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string v1, "1100"

    aput-object v1, v4, v0

    const/16 v0, 0xd

    const-string v1, "1101"

    aput-object v1, v4, v0

    const/16 v0, 0xe

    const-string v1, "1110"

    aput-object v1, v4, v0

    const/16 v0, 0xf

    const-string v1, "1111"

    aput-object v1, v4, v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    if-ne p1, v2, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ltz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    if-ltz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    aget-object v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_1

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public vectorMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v2, v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    and-int/lit16 v4, v2, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-boolean v3, v3, v4

    xor-int/2addr v0, v3

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->parity:[Z

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-boolean v2, v3, v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public xor(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    iget v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    if-lt v0, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    iget-object v5, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    xor-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v5, v5, v1

    xor-int/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-object v0
.end method

.method public xorBit(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->len:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->bitMask:[I

    and-int/lit8 v4, p1, 0x1f

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public xorThisBy(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->blocks:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->value:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->zeroUnusedBits()V

    return-void
.end method
