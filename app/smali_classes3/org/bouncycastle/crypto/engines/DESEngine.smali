.class public Lorg/bouncycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field private static final bigbyte:[I

.field private static final bytebit:[S

.field private static final pc1:[B

.field private static final pc2:[B

.field private static final totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x40

    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    return-void

    :array_0
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .locals 7

    add-int/lit8 v0, p3, 0x0

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p3, 0x5

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x6

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p3, 0x7

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v2, v1

    const v3, 0xf0f0f0f

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x4

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    const v3, 0x33333333

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v0

    const v3, 0xff00ff

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    xor-int v2, v0, v1

    const v3, -0x55555556

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    xor-int/2addr v2, v1

    shl-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    and-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    and-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    shl-int/lit8 v3, v2, 0x1c

    ushr-int/lit8 v4, v2, 0x4

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v4, p1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0x3f

    aget v3, v5, v3

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    xor-int/2addr v4, v2

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit8 v4, v4, 0x3f

    aget v4, v5, v4

    or-int/2addr v3, v4

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v1, 0x1c

    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit8 v3, v3, 0x3f

    aget v3, v5, v3

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v4, p1, v4

    xor-int/2addr v4, v1

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit8 v4, v4, 0x3f

    aget v4, v5, v4

    or-int/2addr v3, v4

    xor-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    shl-int/lit8 v0, v2, 0x1f

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    xor-int v2, v1, v0

    const v3, -0x55555556

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v0

    const v3, 0xff00ff

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    const v3, 0x33333333

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v2, 0x2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v2, v1

    const v3, 0xf0f0f0f

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v2, 0x4

    xor-int/2addr v0, v2

    add-int/lit8 v2, p5, 0x0

    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x2

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v2, p5, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p4, v2

    add-int/lit8 v0, p5, 0x4

    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, p5, 0x5

    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, p5, 0x6

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, p5, 0x7

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    return-void
.end method

.method protected generateWorkingKey(Z[B)[I
    .locals 9

    const/16 v0, 0x20

    new-array v3, v0, [I

    const/16 v0, 0x38

    new-array v4, v0, [Z

    const/16 v0, 0x38

    new-array v5, v0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x38

    if-ge v1, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    aget-byte v0, v0, v1

    ushr-int/lit8 v2, v0, 0x3

    aget-byte v2, p2, v2

    sget-object v6, Lorg/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    and-int/lit8 v0, v0, 0x7

    aget-short v0, v6, v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    const/16 v0, 0x10

    if-ge v2, v0, :cond_a

    if-eqz p1, :cond_2

    shl-int/lit8 v0, v2, 0x1

    :goto_3
    add-int/lit8 v6, v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v6

    aput v1, v3, v0

    const/4 v1, 0x0

    :goto_4
    const/16 v7, 0x1c

    if-ge v1, v7, :cond_4

    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v7, v7, v2

    add-int/2addr v7, v1

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_3

    aget-boolean v7, v4, v7

    aput-boolean v7, v5, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    rsub-int/lit8 v0, v2, 0xf

    shl-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, -0x1c

    aget-boolean v7, v4, v7

    aput-boolean v7, v5, v1

    goto :goto_5

    :cond_4
    const/16 v1, 0x1c

    :goto_6
    const/16 v7, 0x38

    if-ge v1, v7, :cond_6

    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v7, v7, v2

    add-int/2addr v7, v1

    const/16 v8, 0x38

    if-ge v7, v8, :cond_5

    aget-boolean v7, v4, v7

    aput-boolean v7, v5, v1

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v7, -0x1c

    aget-boolean v7, v4, v7

    aput-boolean v7, v5, v1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_8
    const/16 v7, 0x18

    if-ge v1, v7, :cond_9

    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    aget-byte v7, v7, v1

    aget-boolean v7, v5, v7

    if-eqz v7, :cond_7

    aget v7, v3, v0

    sget-object v8, Lorg/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v3, v0

    :cond_7
    sget-object v7, Lorg/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    add-int/lit8 v8, v1, 0x18

    aget-byte v7, v7, v8

    aget-boolean v7, v5, v7

    if-eqz v7, :cond_8

    aget v7, v3, v6

    sget-object v8, Lorg/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v3, v6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_9
    const/16 v1, 0x20

    if-eq v0, v1, :cond_b

    aget v1, v3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, v3, v2

    const/high16 v4, 0xfc0000

    and-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x6

    and-int/lit16 v5, v1, 0xfc0

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    const/high16 v5, 0xfc0000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xfc0

    ushr-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    const v5, 0x3f000

    and-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v5

    const v5, 0x3f000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    aput v1, v3, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_b
    return-object v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key too long - should be 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
