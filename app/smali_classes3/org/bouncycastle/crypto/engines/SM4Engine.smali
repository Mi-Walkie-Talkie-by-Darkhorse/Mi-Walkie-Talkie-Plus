.class public Lorg/bouncycastle/crypto/engines/SM4Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final CK:[I

.field private static final FK:[I

.field private static final Sbox:[B


# instance fields
.field private final X:[I

.field private rk:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SM4Engine;->Sbox:[B

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/SM4Engine;->FK:[I

    return-void

    nop

    :array_0
    .array-data 1
        -0x2at
        -0x70t
        -0x17t
        -0x2t
        -0x34t
        -0x1ft
        0x3dt
        -0x49t
        0x16t
        -0x4at
        0x14t
        -0x3et
        0x28t
        -0x5t
        0x2ct
        0x5t
        0x2bt
        0x67t
        -0x66t
        0x76t
        0x2at
        -0x42t
        0x4t
        -0x3dt
        -0x56t
        0x44t
        0x13t
        0x26t
        0x49t
        -0x7at
        0x6t
        -0x67t
        -0x64t
        0x42t
        0x50t
        -0xct
        -0x6ft
        -0x11t
        -0x68t
        0x7at
        0x33t
        0x54t
        0xbt
        0x43t
        -0x13t
        -0x31t
        -0x54t
        0x62t
        -0x1ct
        -0x4dt
        0x1ct
        -0x57t
        -0x37t
        0x8t
        -0x18t
        -0x6bt
        -0x80t
        -0x21t
        -0x6ct
        -0x6t
        0x75t
        -0x71t
        0x3ft
        -0x5at
        0x47t
        0x7t
        -0x59t
        -0x4t
        -0xdt
        0x73t
        0x17t
        -0x46t
        -0x7dt
        0x59t
        0x3ct
        0x19t
        -0x1at
        -0x7bt
        0x4ft
        -0x58t
        0x68t
        0x6bt
        -0x7ft
        -0x4et
        0x71t
        0x64t
        -0x26t
        -0x75t
        -0x8t
        -0x15t
        0xft
        0x4bt
        0x70t
        0x56t
        -0x63t
        0x35t
        0x1et
        0x24t
        0xet
        0x5et
        0x63t
        0x58t
        -0x2ft
        -0x5et
        0x25t
        0x22t
        0x7ct
        0x3bt
        0x1t
        0x21t
        0x78t
        -0x79t
        -0x2ct
        0x0t
        0x46t
        0x57t
        -0x61t
        -0x2dt
        0x27t
        0x52t
        0x4ct
        0x36t
        0x2t
        -0x19t
        -0x60t
        -0x3ct
        -0x38t
        -0x62t
        -0x16t
        -0x41t
        -0x76t
        -0x2et
        0x40t
        -0x39t
        0x38t
        -0x4bt
        -0x5dt
        -0x9t
        -0xet
        -0x32t
        -0x7t
        0x61t
        0x15t
        -0x5ft
        -0x20t
        -0x52t
        0x5dt
        -0x5ct
        -0x65t
        0x34t
        0x1at
        0x55t
        -0x53t
        -0x6dt
        0x32t
        0x30t
        -0xbt
        -0x74t
        -0x4ft
        -0x1dt
        0x1dt
        -0xat
        -0x1et
        0x2et
        -0x7et
        0x66t
        -0x36t
        0x60t
        -0x40t
        0x29t
        0x23t
        -0x55t
        0xdt
        0x53t
        0x4et
        0x6ft
        -0x2bt
        -0x25t
        0x37t
        0x45t
        -0x22t
        -0x3t
        -0x72t
        0x2ft
        0x3t
        -0x1t
        0x6at
        0x72t
        0x6dt
        0x6ct
        0x5bt
        0x51t
        -0x73t
        0x1bt
        -0x51t
        -0x6et
        -0x45t
        -0x23t
        -0x44t
        0x7ft
        0x11t
        -0x27t
        0x5ct
        0x41t
        0x1ft
        0x10t
        0x5at
        -0x28t
        0xat
        -0x3ft
        0x31t
        -0x78t
        -0x5bt
        -0x33t
        0x7bt
        -0x43t
        0x2dt
        0x74t
        -0x30t
        0x12t
        -0x48t
        -0x1bt
        -0x4ct
        -0x50t
        -0x77t
        0x69t
        -0x69t
        0x4at
        0xct
        -0x6at
        0x77t
        0x7et
        0x65t
        -0x47t
        -0xft
        0x9t
        -0x3bt
        0x6et
        -0x3at
        -0x7ct
        0x18t
        -0x10t
        0x7dt
        -0x14t
        0x3at
        -0x24t
        0x4dt
        0x20t
        0x79t
        -0x12t
        0x5ft
        0x3et
        -0x29t
        -0x35t
        0x39t
        0x48t
    .end array-data

    :array_1
    .array-data 4
        0x70e15
        0x1c232a31
        0x383f464d
        0x545b6269
        0x70777e85    # 3.06383E29f
        -0x736c655f    # -2.2742E-31f
        -0x57504943
        -0x3b342d27
        -0x1f18110b
        -0x3fcf5ef
        0x181f262d
        0x343b4249
        0x50575e65
        0x6c737a81
        -0x77706963
        -0x5b544d47
        -0x3f38312b
        -0x231c150f
        -0x700f9f3
        0x141b2229
        0x30373e45
        0x4c535a61    # 5.5404932E7f
        0x686f767d
        -0x7b746d67
        -0x5f58514b
        -0x433c352f
        -0x27201913
        -0xb04fdf7
        0x10171e25
        0x2c333a41
        0x484f565d
        0x646b7279
    .end array-data

    :array_2
    .array-data 4
        -0x5c4e453a
        0x56aa3350
        0x677d9197
        -0x4d8fdd24
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    return-void
.end method

.method private F0([II)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private F1([II)I
    .locals 3

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    xor-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private F2([II)I
    .locals 3

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private F3([II)I
    .locals 3

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    xor-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/2addr v1, v2

    xor-int/2addr v1, p2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private L(I)I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, p1

    const/16 v1, 0xa

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x12

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private L_ap(I)I
    .locals 2

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, p1

    const/16 v1, 0x17

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private R([II)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p2, 0x3

    aget v3, p1, p2

    aget v4, p1, v2

    xor-int/2addr v3, v4

    aput v3, p1, p2

    aget v3, p1, p2

    aget v4, p1, v2

    xor-int/2addr v3, v4

    aput v3, p1, v2

    aget v3, p1, p2

    aget v2, p1, v2

    xor-int/2addr v2, v3

    aput v2, p1, p2

    aget v2, p1, v0

    aget v3, p1, v1

    xor-int/2addr v2, v3

    aput v2, p1, v0

    aget v2, p1, v0

    aget v3, p1, v1

    xor-int/2addr v2, v3

    aput v2, p1, v1

    aget v2, p1, v0

    aget v1, p1, v1

    xor-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method private T(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->tau(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->L(I)I

    move-result v0

    return v0
.end method

.method private T_ap(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->tau(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->L_ap(I)I

    move-result v0

    return v0
.end method

.method private expandKey(Z[B)[I
    .locals 10

    const/4 v0, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/16 v1, 0x20

    new-array v1, v1, [I

    new-array v2, v0, [I

    invoke-static {p2, v8}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    aput v3, v2, v8

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    aput v3, v2, v9

    const/16 v3, 0x8

    invoke-static {p2, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    aput v3, v2, v7

    const/16 v3, 0xc

    invoke-static {p2, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    new-array v3, v0, [I

    aget v4, v2, v8

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->FK:[I

    aget v5, v5, v8

    xor-int/2addr v4, v5

    aput v4, v3, v8

    aget v4, v2, v9

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->FK:[I

    aget v5, v5, v9

    xor-int/2addr v4, v5

    aput v4, v3, v9

    aget v4, v2, v7

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->FK:[I

    aget v5, v5, v7

    xor-int/2addr v4, v5

    aput v4, v3, v7

    aget v2, v2, v6

    sget-object v4, Lorg/bouncycastle/crypto/engines/SM4Engine;->FK:[I

    aget v4, v4, v6

    xor-int/2addr v2, v4

    aput v2, v3, v6

    if-eqz p1, :cond_0

    aget v2, v3, v8

    aget v4, v3, v9

    aget v5, v3, v7

    xor-int/2addr v4, v5

    aget v5, v3, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v5, v5, v8

    xor-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v4

    xor-int/2addr v2, v4

    aput v2, v1, v8

    aget v2, v3, v9

    aget v4, v3, v7

    aget v5, v3, v6

    xor-int/2addr v4, v5

    aget v5, v1, v8

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v5, v5, v9

    xor-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v4

    xor-int/2addr v2, v4

    aput v2, v1, v9

    aget v2, v3, v7

    aget v4, v3, v6

    aget v5, v1, v8

    xor-int/2addr v4, v5

    aget v5, v1, v9

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v5, v5, v7

    xor-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v4

    xor-int/2addr v2, v4

    aput v2, v1, v7

    aget v2, v3, v6

    aget v3, v1, v8

    aget v4, v1, v9

    xor-int/2addr v3, v4

    aget v4, v1, v7

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v4, v4, v6

    xor-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v1, v6

    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x4

    aget v2, v1, v2

    add-int/lit8 v3, v0, -0x3

    aget v3, v1, v3

    add-int/lit8 v4, v0, -0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    aget v2, v3, v8

    aget v4, v3, v9

    aget v5, v3, v7

    xor-int/2addr v4, v5

    aget v5, v3, v6

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v5, v5, v8

    xor-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v4

    xor-int/2addr v2, v4

    aput v2, v1, v0

    const/16 v0, 0x1e

    aget v2, v3, v9

    aget v4, v3, v7

    aget v5, v3, v6

    xor-int/2addr v4, v5

    const/16 v5, 0x1f

    aget v5, v1, v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v5, v5, v9

    xor-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v4

    xor-int/2addr v2, v4

    aput v2, v1, v0

    const/16 v0, 0x1d

    aget v2, v3, v7

    aget v4, v3, v6

    const/16 v5, 0x1f

    aget v5, v1, v5

    xor-int/2addr v4, v5

    const/16 v5, 0x1e

    aget v5, v1, v5

    xor-int/2addr v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v5, v5, v7

    xor-int/2addr v4, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v4

    xor-int/2addr v2, v4

    aput v2, v1, v0

    const/16 v0, 0x1c

    aget v2, v3, v6

    const/16 v3, 0x1f

    aget v3, v1, v3

    const/16 v4, 0x1e

    aget v4, v1, v4

    xor-int/2addr v3, v4

    const/16 v4, 0x1d

    aget v4, v1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    aget v4, v4, v6

    xor-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    const/16 v0, 0x1b

    :goto_1
    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, 0x4

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x3

    aget v3, v1, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    xor-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/SM4Engine;->CK:[I

    rsub-int/lit8 v5, v0, 0x1f

    aget v4, v4, v5

    xor-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/SM4Engine;->T_ap(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private rotateLeft(II)I
    .locals 2

    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private tau(I)I
    .locals 5

    sget-object v0, Lorg/bouncycastle/crypto/engines/SM4Engine;->Sbox:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/SM4Engine;->Sbox:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Lorg/bouncycastle/crypto/engines/SM4Engine;->Sbox:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/engines/SM4Engine;->Sbox:[B

    and-int/lit16 v4, p1, 0xff

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SM4"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SM4 requires a 128 bit key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;->expandKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->rk:[I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to SM4 init - "

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->rk:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SM4 not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v2, p1

    if-le v0, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v2, p3

    if-le v0, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    add-int/lit8 v2, p2, 0xc

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v8

    move v0, v1

    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->rk:[I

    aget v4, v4, v0

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->F0([II)I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->rk:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->F1([II)I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->rk:[I

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->F2([II)I

    move-result v3

    aput v3, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->rk:[I

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/SM4Engine;->F3([II)I

    move-result v3

    aput v3, v2, v8

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/SM4Engine;->R([II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    aget v0, v0, v1

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0x4

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    aget v0, v0, v7

    add-int/lit8 v1, p4, 0x8

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SM4Engine;->X:[I

    aget v0, v0, v8

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
