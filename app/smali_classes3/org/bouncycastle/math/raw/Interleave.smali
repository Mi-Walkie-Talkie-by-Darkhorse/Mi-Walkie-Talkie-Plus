.class public Lorg/bouncycastle/math/raw/Interleave;
.super Ljava/lang/Object;


# static fields
.field private static final M32:J = 0x55555555L

.field private static final M64:J = 0x5555555555555555L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expand16to32(I)I
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00ff

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    const v1, 0xf0f0f0f

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    const v1, 0x33333333

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    const v1, 0x55555555

    and-int/2addr v0, v1

    return v0
.end method

.method public static expand32to64(I)J
    .locals 6

    const-wide/32 v4, 0x55555555

    ushr-int/lit8 v0, p0, 0x8

    xor-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    const v2, 0xf000f0

    and-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v1, v0

    const v2, 0xc0c0c0c

    and-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x2

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x1

    xor-int/2addr v1, v0

    const v2, 0x22222222

    and-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x1

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    and-long/2addr v2, v4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static expand64To128(J[JI)V
    .locals 10

    const/16 v4, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, 0xffff0000L

    and-long/2addr v0, v2

    shl-long v2, v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr v0, p0

    ushr-long v2, v0, v9

    xor-long/2addr v2, v0

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    shl-long v4, v2, v9

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, v0, v8

    xor-long/2addr v2, v0

    const-wide v4, 0xf000f000f000f0L

    and-long/2addr v2, v4

    shl-long v4, v2, v8

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, v0, v7

    xor-long/2addr v2, v0

    const-wide v4, 0xc0c0c0c0c0c0c0cL

    and-long/2addr v2, v4

    shl-long v4, v2, v7

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, v0, v6

    xor-long/2addr v2, v0

    const-wide v4, 0x2222222222222222L

    and-long/2addr v2, v4

    shl-long v4, v2, v6

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, v0

    aput-wide v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    ushr-long/2addr v0, v6

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v4

    aput-wide v0, p2, v2

    return-void
.end method

.method public static expand8to16(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xf0f

    shl-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x3333

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x5555

    return v0
.end method

.method public static unshuffle(J)J
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, 0x2222222222222222L

    and-long/2addr v0, v2

    shl-long v2, v0, v4

    xor-long/2addr v0, v2

    xor-long/2addr v0, p0

    ushr-long v2, v0, v6

    xor-long/2addr v2, v0

    const-wide v4, 0xc0c0c0c0c0c0c0cL

    and-long/2addr v2, v4

    shl-long v4, v2, v6

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, v0, v7

    xor-long/2addr v2, v0

    const-wide v4, 0xf000f000f000f0L

    and-long/2addr v2, v4

    shl-long v4, v2, v7

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, v0, v8

    xor-long/2addr v2, v0

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    shl-long v4, v2, v8

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, v0, v9

    xor-long/2addr v2, v0

    const-wide v4, 0xffff0000L

    and-long/2addr v2, v4

    shl-long v4, v2, v9

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method
