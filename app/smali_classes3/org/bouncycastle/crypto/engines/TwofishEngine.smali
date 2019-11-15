.class public final Lorg/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x100

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v4, 0x2

    const/16 v9, 0x100

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    new-array v0, v9, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    new-array v2, v4, [I

    new-array v3, v4, [I

    new-array v4, v4, [I

    move v0, v1

    :goto_0
    if-ge v0, v9, :cond_0

    sget-object v5, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v1

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v1

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v1

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v1

    sget-object v5, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v8

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v8

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v8

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v8

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v6, v2, v8

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v6, v4, v1

    aget v7, v4, v1

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v3, v1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v2, v1

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v6, v3, v8

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v6, v3, v1

    aget v7, v2, v1

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v3, v1

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private BytesTo32Bits([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private F32(I[I)I
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v0

    aget v5, p2, v4

    aget v6, p2, v10

    const/4 v7, 0x2

    aget v7, p2, v7

    const/4 v8, 0x3

    aget v8, p2, v8

    iget v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v7, v4

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v3, v7

    aget v3, v6, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v7, v4

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v4

    xor-int/2addr v2, v4

    aget v2, v6, v2

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v4, v10

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v1, v4

    aget v1, v3, v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v3, v10

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    xor-int/2addr v0, v3

    aget v0, v2, v0

    xor-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v10

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v3, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v4

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v2, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v4

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v9

    xor-int/2addr v1, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v10

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v8

    xor-int/2addr v0, v8

    :pswitch_2
    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v10

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v3, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v10

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v2, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v8

    xor-int/2addr v1, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v7

    xor-int/2addr v0, v7

    :pswitch_3
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v4

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v3, v9

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v3, v8

    aget v3, v7, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v4

    sget-object v9, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v9, v10

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v2, v9

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v2, v8

    aget v2, v7, v2

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v7, v10

    sget-object v8, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v8, v4

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v1, v4

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v1, v4

    aget v1, v3, v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v3, v10

    sget-object v4, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v4, v10

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v4

    xor-int/2addr v0, v4

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    xor-int/2addr v0, v3

    aget v0, v2, v0

    xor-int/2addr v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .locals 2

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private LFSR2(I)I
    .locals 3

    const/4 v0, 0x0

    shr-int/lit8 v2, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/16 v0, 0x5a

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private Mx_X(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int v1, p2, p1

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method private RS_rem(I)I
    .locals 5

    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v3, v2, 0x1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x14d

    :goto_0
    xor-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    const/16 v0, 0xa6

    :cond_0
    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v0, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private b0(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 11

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int v5, v0, v1

    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int v4, v0, v1

    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int v3, v0, v1

    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int v2, v0, v1

    const/16 v1, 0x27

    const/4 v0, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v0, v6, :cond_0

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v6

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v1, -0x1

    aget v1, v9, v1

    add-int/2addr v1, v8

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v2, v3

    add-int v3, v6, v7

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, -0x1

    aget v6, v6, v10

    add-int/2addr v3, v6

    xor-int/2addr v3, v2

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v2, v1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v7, -0x1

    aget v7, v9, v7

    add-int/2addr v7, v8

    xor-int/2addr v4, v7

    shl-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v1, v10, -0x1

    aget v7, v7, v10

    add-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v4, 0x1

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    xor-int/2addr v0, v3

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    xor-int/2addr v0, v4

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v2, v2, v0

    xor-int v5, v1, v2

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    xor-int v4, v1, v2

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    xor-int v3, v1, v2

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x3

    aget v2, v2, v6

    xor-int/2addr v2, v1

    const/16 v1, 0x8

    :goto_0
    const/16 v6, 0x10

    if-ge v0, v6, :cond_0

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v6

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v7

    add-int v8, v6, v7

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v8

    xor-int/2addr v1, v3

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v3, v1

    shl-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    mul-int/lit8 v2, v7, 0x2

    add-int/2addr v2, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, 0x1

    aget v6, v6, v10

    add-int/2addr v2, v6

    xor-int/2addr v2, v1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v1

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    add-int v8, v1, v6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v7, 0x1

    aget v7, v9, v7

    add-int/2addr v7, v8

    xor-int/2addr v5, v7

    ushr-int/lit8 v7, v5, 0x1

    shl-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v7

    shl-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1f

    or-int/2addr v4, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v1, v10, 0x1

    aget v7, v7, v10

    add-int/2addr v6, v7

    xor-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    xor-int/2addr v0, v3

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    xor-int/2addr v0, v4

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    return-void
.end method

.method private setKey([B)V
    .locals 17

    const/4 v2, 0x4

    new-array v3, v2, [I

    const/4 v2, 0x4

    new-array v4, v2, [I

    const/4 v2, 0x4

    new-array v5, v2, [I

    const/16 v2, 0x28

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v6, 0x1

    if-ge v2, v6, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key size less than 64 bits"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v6, 0x4

    if-le v2, v6, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key size larger than 256 bits"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    if-ge v2, v6, :cond_2

    mul-int/lit8 v6, v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v7

    aput v7, v3, v2

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v6

    aput v6, v4, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget v7, v3, v2

    aget v8, v4, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x14

    if-ge v2, v6, :cond_3

    const v6, 0x2020202

    mul-int/2addr v6, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v7

    const v8, 0x1010101

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v6

    shl-int/lit8 v8, v6, 0x8

    ushr-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v8

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v9, v2, 0x2

    aput v7, v8, v9

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    shl-int/lit8 v9, v6, 0x9

    ushr-int/lit8 v6, v6, 0x17

    or-int/2addr v6, v9

    aput v6, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    aget v7, v5, v2

    const/4 v2, 0x1

    aget v8, v5, v2

    const/4 v2, 0x2

    aget v9, v5, v2

    const/4 v2, 0x3

    aget v10, v5, v2

    const/16 v2, 0x400

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    const/4 v3, 0x0

    :goto_2
    const/16 v2, 0x100

    if-ge v3, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit16 v4, v4, 0x200

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v4, v3, 0x2

    add-int/lit16 v4, v4, 0x201

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v6, v11

    aget v5, v5, v6

    aput v5, v2, v4

    goto/16 :goto_3

    :pswitch_1
    sget-object v2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v4, 0x1

    aget-object v2, v2, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v4

    xor-int v6, v2, v4

    sget-object v2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v4, 0x0

    aget-object v2, v2, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v4

    xor-int v5, v2, v4

    sget-object v2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v4, 0x0

    aget-object v2, v2, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v4

    xor-int/2addr v4, v2

    sget-object v2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x1

    aget-object v2, v2, v11

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v2, v11

    :goto_4
    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v6, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v11

    xor-int/2addr v5, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v11

    xor-int/2addr v4, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v2, v11

    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v12, v3, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aget-byte v6, v15, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v6, v15

    aget-byte v6, v14, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v14

    xor-int/2addr v6, v14

    aget v6, v13, v6

    aput v6, v11, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v14, 0x0

    aget-object v13, v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v15, 0x1

    aget-object v14, v14, v15

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int/2addr v5, v14

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v5, v13

    aget v5, v12, v5

    aput v5, v6, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v6, v3, 0x2

    add-int/lit16 v6, v6, 0x200

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v12, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int/2addr v4, v13

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v4, v12

    aget v4, v11, v4

    aput v4, v5, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v5, v3, 0x2

    add-int/lit16 v5, v5, 0x201

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v2, v12

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v11

    xor-int/2addr v2, v11

    aget v2, v6, v2

    aput v2, v4, v5

    goto/16 :goto_3

    :cond_4
    return-void

    :pswitch_2
    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    goto/16 :goto_4

    :pswitch_3
    move v2, v3

    move v4, v3

    move v5, v3

    move v6, v3

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

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
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    :goto_0
    const/16 v0, 0x10

    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    :cond_0
    return-void
.end method
