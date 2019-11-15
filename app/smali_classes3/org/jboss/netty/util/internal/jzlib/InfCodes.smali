.class final Lorg/jboss/netty/util/internal/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final BADCODE:I = 0x9

.field private static final COPY:I = 0x5

.field private static final DIST:I = 0x3

.field private static final DISTEXT:I = 0x4

.field private static final END:I = 0x8

.field private static final LEN:I = 0x1

.field private static final LENEXT:I = 0x2

.field private static final LIT:I = 0x6

.field private static final START:I = 0x0

.field private static final WASH:I = 0x7

.field private static final inflate_mask:[I


# instance fields
.field private dbits:B

.field private dist:I

.field private dtree:[I

.field private dtree_index:I

.field private get:I

.field private lbits:B

.field private len:I

.field private lit:I

.field private ltree:[I

.field private ltree_index:I

.field private mode:I

.field private need:I

.field private tree:[I

.field private tree_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    return-void

    :array_0
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
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inflate_fast(II[II[IILorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 17

    move-object/from16 v0, p7

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p7

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p6

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p6

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p6

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p6

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v7, v2, :cond_0

    move-object/from16 v0, p6

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_0
    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v15, v5, p0

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v16, v5, p1

    move v14, v2

    :goto_1
    const/16 v2, 0x14

    if-ge v3, v2, :cond_1

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p7

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v2, v9, 0x1

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x8

    move v9, v2

    goto :goto_1

    :cond_0
    move-object/from16 v0, p6

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v2, v7

    goto :goto_0

    :cond_1
    and-int v6, v4, v15

    add-int v2, p3, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, p2, v2

    if-nez v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    shr-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    add-int/lit8 v2, v14, -0x1

    move v5, v3

    move v7, v4

    move v3, v8

    move v4, v9

    :goto_2
    const/16 v8, 0x102

    if-lt v2, v8, :cond_2

    const/16 v8, 0xa

    if-ge v3, v8, :cond_14

    :cond_2
    move-object/from16 v0, p7

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v3

    shr-int/lit8 v8, v5, 0x3

    if-ge v8, v2, :cond_3

    shr-int/lit8 v2, v5, 0x3

    :cond_3
    add-int/2addr v3, v2

    sub-int/2addr v4, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v5, v2

    move-object/from16 v0, p6

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p6

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p7

    iput v3, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v4, v5

    int-to-long v8, v5

    add-long/2addr v2, v8

    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p6

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_4
    add-int/lit8 v10, v2, 0x1

    aget v10, p2, v10

    shr-int/2addr v4, v10

    add-int/lit8 v10, v2, 0x1

    aget v10, p2, v10

    sub-int/2addr v3, v10

    and-int/lit8 v10, v5, 0x10

    if-eqz v10, :cond_f

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v6, v6, v5

    and-int/2addr v6, v4

    add-int v13, v2, v6

    shr-int/2addr v4, v5

    sub-int/2addr v3, v5

    move v10, v9

    move v9, v8

    :goto_4
    const/16 v2, 0xf

    if-ge v3, v2, :cond_5

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p7

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v2, v10, 0x1

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x8

    move v10, v2

    goto :goto_4

    :cond_5
    and-int v6, v4, v16

    add-int v2, p5, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, p4, v2

    :goto_5
    add-int/lit8 v8, v2, 0x1

    aget v8, p4, v8

    shr-int/2addr v4, v8

    add-int/lit8 v8, v2, 0x1

    aget v8, p4, v8

    sub-int/2addr v3, v8

    and-int/lit8 v8, v5, 0x10

    if-eqz v8, :cond_c

    and-int/lit8 v6, v5, 0xf

    move v5, v4

    move v4, v3

    :goto_6
    if-ge v4, v6, :cond_6

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p7

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v3, v10, 0x1

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v4

    or-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x8

    move v10, v3

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v2, 0x2

    aget v2, p4, v2

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v3, v3, v6

    and-int/2addr v3, v5

    add-int/2addr v2, v3

    shr-int v12, v5, v6

    sub-int v11, v4, v6

    sub-int v8, v14, v13

    if-lt v7, v2, :cond_8

    sub-int v2, v7, v2

    sub-int v3, v7, v2

    if-lez v3, :cond_7

    const/4 v3, 0x2

    sub-int v4, v7, v2

    if-le v3, v4, :cond_7

    move-object/from16 v0, p6

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    aput-byte v2, v3, v7

    move-object/from16 v0, p6

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p6

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v2, v6, 0x1

    aget-byte v6, v7, v6

    aput-byte v6, v3, v5

    add-int/lit8 v3, v13, -0x2

    :goto_7
    sub-int v5, v4, v2

    if-lez v5, :cond_b

    sub-int v5, v4, v2

    if-le v3, v5, :cond_b

    move v5, v4

    move v4, v3

    :goto_8
    move-object/from16 v0, p6

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p6

    iget-object v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    aput-byte v2, v7, v5

    add-int/lit8 v2, v4, -0x1

    if-nez v2, :cond_15

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v7, v12

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p6

    iget-object v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v7, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v13, -0x2

    goto :goto_7

    :cond_8
    sub-int v2, v7, v2

    :cond_9
    move-object/from16 v0, p6

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_9

    move-object/from16 v0, p6

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v3, v2

    if-le v13, v3, :cond_17

    sub-int/2addr v13, v3

    sub-int v4, v7, v2

    if-lez v4, :cond_a

    sub-int v4, v7, v2

    if-le v3, v4, :cond_a

    move v4, v7

    move v6, v3

    :goto_9
    move-object/from16 v0, p6

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p6

    iget-object v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v14, v2

    aput-byte v2, v7, v4

    add-int/lit8 v2, v6, -0x1

    if-nez v2, :cond_16

    :goto_a
    const/4 v2, 0x0

    move v3, v13

    move v4, v5

    goto :goto_7

    :cond_a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v7, v3

    add-int/2addr v2, v3

    goto :goto_a

    :cond_b
    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v5, v2, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, v4, v3

    add-int/2addr v2, v3

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v7, v12

    goto/16 :goto_2

    :cond_c
    and-int/lit8 v8, v5, 0x40

    if-nez v8, :cond_d

    add-int/lit8 v2, v2, 0x2

    aget v2, p4, v2

    add-int/2addr v2, v6

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v5, v6, v5

    and-int/2addr v5, v4

    add-int v6, v2, v5

    add-int v2, p5, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, p4, v2

    goto/16 :goto_5

    :cond_d
    const-string v2, "invalid distance code"

    move-object/from16 v0, p7

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p7

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v9

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_e

    shr-int/lit8 v2, v3, 0x3

    :cond_e
    add-int v5, v9, v2

    sub-int v6, v10, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, p6

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p6

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p7

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p6

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    const/4 v2, -0x3

    goto/16 :goto_3

    :cond_f
    and-int/lit8 v10, v5, 0x40

    if-nez v10, :cond_10

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    add-int/2addr v2, v6

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v5, v6, v5

    and-int/2addr v5, v4

    add-int v6, v2, v5

    add-int v2, p3, v6

    mul-int/lit8 v2, v2, 0x3

    aget v5, p2, v2

    if-nez v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    shr-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    sub-int/2addr v3, v5

    move-object/from16 v0, p6

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    add-int/lit8 v2, v14, -0x1

    move v5, v3

    move v7, v4

    move v3, v8

    move v4, v9

    goto/16 :goto_2

    :cond_10
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_12

    move-object/from16 v0, p7

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v8

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_11

    shr-int/lit8 v2, v3, 0x3

    :cond_11
    add-int v5, v8, v2

    sub-int v6, v9, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, p6

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p6

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p7

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p6

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_12
    const-string v2, "invalid literal/length code"

    move-object/from16 v0, p7

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p7

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v2, v8

    shr-int/lit8 v5, v3, 0x3

    if-ge v5, v2, :cond_13

    shr-int/lit8 v2, v3, 0x3

    :cond_13
    add-int v5, v8, v2

    sub-int v6, v9, v2

    shl-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    move-object/from16 v0, p6

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p6

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p7

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p7

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v6, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p7

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p6

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    const/4 v2, -0x3

    goto/16 :goto_3

    :cond_14
    move v14, v2

    move v8, v3

    move v9, v4

    move v3, v5

    move v4, v7

    move v7, v6

    goto/16 :goto_1

    :cond_15
    move v4, v2

    move v5, v6

    move v2, v3

    goto/16 :goto_8

    :cond_16
    move v4, v5

    move v6, v2

    move v2, v3

    goto/16 :goto_9

    :cond_17
    move v3, v13

    move v4, v7

    goto/16 :goto_7
.end method


# virtual methods
.method init(II[II[II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    iput-object p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    iput p4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    iput-object p5, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    iput p6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    return-void
.end method

.method proc(Lorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 11

    iget v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    packed-switch v6, :pswitch_data_0

    const/4 v0, -0x2

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_0
    const/16 v6, 0x102

    if-lt v0, v6, :cond_3

    const/16 v6, 0xa

    if-lt v2, v6, :cond_3

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    iget-byte v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_fast(II[II[IILorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result p3

    iget v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_1

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-eqz p3, :cond_3

    const/4 v6, 0x1

    if-ne p3, v6, :cond_2

    const/4 v6, 0x7

    :goto_3
    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_2
    const/16 v6, 0x9

    goto :goto_3

    :cond_3
    iget-byte v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lbits:B

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree:[I

    iput-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->ltree_index:I

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    const/4 v6, 0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    :pswitch_1
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    move v6, v4

    :goto_4
    if-ge v6, v7, :cond_5

    if-eqz v2, :cond_4

    const/4 p3, 0x0

    add-int/lit8 v2, v2, -0x1

    iget-object v8, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v5, v3

    add-int/lit8 v3, v6, 0x8

    move v6, v3

    move v3, v4

    goto :goto_4

    :cond_4
    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v8, v7

    and-int/2addr v7, v5

    add-int/2addr v4, v7

    mul-int/lit8 v7, v4, 0x3

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v8

    ushr-int/2addr v5, v4

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v8

    sub-int v4, v6, v4

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    aget v6, v6, v7

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lit:I

    const/4 v6, 0x6

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_7

    and-int/lit8 v6, v6, 0xf

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    const/4 v6, 0x2

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v8, v6, 0x40

    if-nez v8, :cond_8

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    div-int/lit8 v6, v7, 0x3

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v7, v7, 0x2

    aget v7, v8, v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_9

    const/4 v6, 0x7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x9

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    const-string v0, "invalid literal/length code"

    iput-object v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v0, -0x3

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_2
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    move v6, v4

    :goto_5
    if-ge v6, v7, :cond_b

    if-eqz v2, :cond_a

    const/4 p3, 0x0

    add-int/lit8 v2, v2, -0x1

    iget-object v8, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v5, v3

    add-int/lit8 v3, v6, 0x8

    move v6, v3

    move v3, v4

    goto :goto_5

    :cond_a
    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_b
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v8, v8, v7

    and-int/2addr v8, v5

    add-int/2addr v4, v8

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    shr-int/2addr v5, v7

    sub-int v4, v6, v7

    iget-byte v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dbits:B

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree:[I

    iput-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dtree_index:I

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    const/4 v6, 0x3

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    :pswitch_3
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    move v6, v4

    :goto_6
    if-ge v6, v7, :cond_d

    if-eqz v2, :cond_c

    const/4 p3, 0x0

    add-int/lit8 v2, v2, -0x1

    iget-object v8, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v5, v3

    add-int/lit8 v3, v6, 0x8

    move v6, v3

    move v3, v4

    goto :goto_6

    :cond_c
    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v7, v8, v7

    and-int/2addr v7, v5

    add-int/2addr v4, v7

    mul-int/lit8 v7, v4, 0x3

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v8

    shr-int/2addr v5, v4

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v8, v7, 0x1

    aget v4, v4, v8

    sub-int v4, v6, v4

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    aget v6, v6, v7

    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_e

    and-int/lit8 v6, v6, 0xf

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    const/4 v6, 0x4

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    :cond_e
    and-int/lit8 v8, v6, 0x40

    if-nez v8, :cond_f

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->need:I

    div-int/lit8 v6, v7, 0x3

    iget-object v8, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree:[I

    add-int/lit8 v7, v7, 0x2

    aget v7, v8, v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->tree_index:I

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x9

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    const-string v0, "invalid distance code"

    iput-object v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v0, -0x3

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_4
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->get:I

    move v6, v4

    :goto_7
    if-ge v6, v7, :cond_11

    if-eqz v2, :cond_10

    const/4 p3, 0x0

    add-int/lit8 v2, v2, -0x1

    iget-object v8, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v5, v3

    add-int/lit8 v3, v6, 0x8

    move v6, v3

    move v3, v4

    goto :goto_7

    :cond_10
    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_11
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->inflate_mask:[I

    aget v8, v8, v7

    and-int/2addr v8, v5

    add-int/2addr v4, v8

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    shr-int/2addr v5, v7

    sub-int v4, v6, v7

    const/4 v6, 0x5

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    :pswitch_5
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->dist:I

    sub-int v6, v1, v6

    :goto_8
    if-gez v6, :cond_13

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    add-int/2addr v6, v7

    goto :goto_8

    :cond_12
    iget-object v9, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v7, v1, 0x1

    iget-object v10, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v10, v6

    aput-byte v6, v9, v1

    add-int/lit8 v1, v0, -0x1

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v8, v0, :cond_22

    const/4 v0, 0x0

    :goto_9
    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    move v6, v0

    move v0, v1

    move v1, v7

    :cond_13
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->len:I

    if-eqz v7, :cond_19

    if-nez v0, :cond_12

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v7, :cond_14

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_14

    const/4 v1, 0x0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_16

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :cond_14
    :goto_a
    if-nez v0, :cond_12

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result p3

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_17

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_b
    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v7, :cond_15

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_15

    const/4 v1, 0x0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_18

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :cond_15
    :goto_c
    if-nez v0, :cond_12

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_16
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_a

    :cond_17
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_18
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    :pswitch_6
    if-nez v0, :cond_1f

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v6, :cond_1a

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v6, :cond_1a

    const/4 v1, 0x0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_1c

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    :goto_d
    if-nez v0, :cond_1f

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v6

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_1d

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_e
    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v1, v7, :cond_1b

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v7, :cond_1b

    const/4 v1, 0x0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v1, v0, :cond_1e

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :cond_1b
    :goto_f
    if-nez v0, :cond_1f

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v0, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v0, v3, v0

    int-to-long v8, v0

    add-long/2addr v4, v8

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_1c
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_d

    :cond_1d
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_e

    :cond_1e
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v0, v1

    goto :goto_f

    :cond_1f
    move v6, v1

    const/4 p3, 0x0

    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    add-int/lit8 v1, v6, 0x1

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->lit:I

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x0

    iput v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    :pswitch_7
    const/4 v0, 0x7

    if-le v4, v0, :cond_20

    add-int/lit8 v4, v4, -0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    :cond_20
    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    iget v7, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-eq v6, v7, :cond_21

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_21
    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->mode:I

    :pswitch_8
    const/4 v0, 0x1

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_9
    const/4 v0, -0x3

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v2, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v2, v3, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v3, p2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual {p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto/16 :goto_1

    :cond_22
    move v0, v8

    goto/16 :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
