.class final Lorg/jboss/netty/util/internal/jzlib/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"


# static fields
.field private static final BASE:I = 0xfff1

.field private static final NMAX:I = 0x15b0


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adler32(J[BII)J
    .locals 10

    if-nez p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xffff

    and-long v4, p0, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    move v1, p4

    move v6, p3

    :goto_1
    if-lez v1, :cond_3

    const/16 v0, 0x15b0

    if-ge v1, v0, :cond_1

    move v0, v1

    :goto_2
    sub-int p4, v1, v0

    move v1, v6

    :goto_3
    const/16 v6, 0x10

    if-lt v0, v6, :cond_2

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x10

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x15b0

    goto/16 :goto_2

    :cond_2
    if-eqz v0, :cond_5

    :goto_4
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    add-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    :goto_5
    const-wide/32 v0, 0xfff1

    rem-long/2addr v4, v0

    const-wide/32 v0, 0xfff1

    rem-long/2addr v2, v0

    move v1, p4

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x10

    shl-long v0, v2, v0

    or-long/2addr v0, v4

    goto/16 :goto_0

    :cond_4
    move v1, v6

    goto :goto_4

    :cond_5
    move v6, v1

    goto :goto_5
.end method
