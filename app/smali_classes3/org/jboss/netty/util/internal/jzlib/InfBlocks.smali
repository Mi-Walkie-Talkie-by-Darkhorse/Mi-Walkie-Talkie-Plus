.class final Lorg/jboss/netty/util/internal/jzlib/InfBlocks;
.super Ljava/lang/Object;
.source "InfBlocks.java"


# static fields
.field private static final BAD:I = 0x9

.field private static final BTREE:I = 0x4

.field private static final CODES:I = 0x6

.field private static final DONE:I = 0x8

.field private static final DRY:I = 0x7

.field private static final DTREE:I = 0x5

.field private static final LENS:I = 0x1

.field private static final STORED:I = 0x2

.field private static final TABLE:I = 0x3

.field private static final TYPE:I

.field private static final border:[I

.field private static final inflate_mask:[I


# instance fields
.field private final bb:[I

.field bitb:I

.field bitk:I

.field private blens:[I

.field private check:J

.field private final checkfn:Ljava/lang/Object;

.field private final codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

.field final end:I

.field private hufts:[I

.field private index:I

.field private final inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

.field private last:I

.field private left:I

.field private mode:I

.field read:I

.field private table:I

.field private final tb:[I

.field window:[B

.field write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    return-void

    nop

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

    :array_1
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method constructor <init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/InfTree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    const/16 v0, 0x10e0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    iput-object p2, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    return-void
.end method


# virtual methods
.method free(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    return-void
.end method

.method inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 9

    const/4 v8, -0x5

    const/4 v1, 0x0

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-gt v3, v0, :cond_7

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    :goto_0
    sub-int/2addr v0, v3

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v4, :cond_0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_0
    if-eqz v0, :cond_1

    if-ne p2, v8, :cond_1

    move p2, v1

    :cond_1
    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v0

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v5, v6, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    :cond_2
    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    add-int/2addr v0, v3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v0, v3, :cond_3

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    :cond_3
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    sub-int/2addr v0, v1

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v3, :cond_4

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_4
    if-eqz v0, :cond_5

    if-ne p2, v8, :cond_5

    move p2, v1

    :cond_5
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v0

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v4, v5, v3, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    :cond_6
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    add-int/2addr v0, v1

    move v1, v2

    :goto_1
    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    return p2

    :cond_7
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method proc(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 19

    move-object/from16 v0, p1

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v5, v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    :goto_0
    move v11, v4

    move v14, v5

    move v4, v6

    move v5, v7

    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    packed-switch v6, :pswitch_data_0

    const/4 v6, -0x2

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    :goto_2
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v4, v5

    goto :goto_0

    :goto_3
    const/4 v4, 0x3

    if-ge v15, v4, :cond_2

    if-eqz v12, :cond_1

    const/16 p2, 0x0

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v13, 0x1

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v15

    or-int v16, v16, v4

    add-int/lit8 v15, v15, 0x8

    move v13, v5

    goto :goto_3

    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v13, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v16, 0x7

    and-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    ushr-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_1

    move v4, v15

    move/from16 v6, v16

    :goto_4
    move v5, v13

    move v8, v4

    move v9, v6

    move v4, v12

    goto/16 :goto_1

    :pswitch_0
    ushr-int/lit8 v4, v16, 0x3

    add-int/lit8 v5, v15, -0x3

    and-int/lit8 v7, v5, 0x7

    ushr-int v6, v4, v7

    sub-int v4, v5, v7

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto :goto_4

    :pswitch_1
    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v4, 0x1

    new-array v6, v4, [I

    const/4 v4, 0x1

    new-array v7, v4, [[I

    const/4 v4, 0x1

    new-array v9, v4, [[I

    invoke-static {v5, v6, v7, v9}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_fixed([I[I[[I[[I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    const/4 v8, 0x0

    aget v5, v5, v8

    const/4 v8, 0x0

    aget v6, v6, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->init(II[II[II)V

    ushr-int/lit8 v6, v16, 0x3

    add-int/lit8 v4, v15, -0x3

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto :goto_4

    :pswitch_2
    ushr-int/lit8 v6, v16, 0x3

    add-int/lit8 v4, v15, -0x3

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    goto :goto_4

    :pswitch_3
    ushr-int/lit8 v4, v16, 0x3

    add-int/lit8 v5, v15, -0x3

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const-string v6, "invalid block type"

    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v6, -0x3

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v7, v13, v7

    int-to-long v8, v7

    add-long/2addr v4, v8

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :goto_5
    :pswitch_4
    const/16 v6, 0x20

    if-ge v8, v6, :cond_4

    if-eqz v4, :cond_3

    const/16 p2, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x8

    move v5, v6

    goto :goto_5

    :cond_3
    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_4
    xor-int/lit8 v6, v9, -0x1

    ushr-int/lit8 v6, v6, 0x10

    const v7, 0xffff

    and-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v7, v9

    if-eq v6, v7, :cond_5

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const-string v6, "invalid stored block lengths"

    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v6, -0x3

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_5
    const v6, 0xffff

    and-int/2addr v6, v9

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    :goto_6
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    move v8, v6

    move v9, v6

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-eqz v7, :cond_7

    const/4 v7, 0x7

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    goto :goto_6

    :pswitch_5
    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_8
    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v14, v6, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v6, :cond_9

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v14, v6, :cond_a

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v14

    add-int/lit8 v6, v6, -0x1

    :goto_7
    move v11, v6

    :cond_9
    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v7

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v14, v6, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v14

    add-int/lit8 v6, v6, -0x1

    :goto_8
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    if-ne v14, v10, :cond_32

    move-object/from16 v0, p0

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-eqz v10, :cond_32

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v14, v6, :cond_c

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v6, v14

    add-int/lit8 v6, v6, -0x1

    :goto_9
    move v11, v6

    :goto_a
    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v14

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v14

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v6, v14

    goto :goto_9

    :cond_d
    const/16 p2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-le v6, v4, :cond_e

    move v6, v4

    :cond_e
    if-le v6, v11, :cond_31

    move v10, v11

    :goto_b
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    invoke-static {v6, v5, v7, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v7, v5, v10

    sub-int v6, v4, v10

    add-int v5, v14, v10

    sub-int v4, v11, v10

    move-object/from16 v0, p0

    iget v11, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    sub-int v10, v11, v10

    move-object/from16 v0, p0

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->left:I

    if-eqz v10, :cond_f

    move v11, v4

    move v14, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-eqz v10, :cond_10

    const/4 v10, 0x7

    :goto_c
    move-object/from16 v0, p0

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    move v11, v4

    move v14, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    :goto_d
    :pswitch_6
    const/16 v6, 0xe

    if-ge v8, v6, :cond_12

    if-eqz v4, :cond_11

    const/16 p2, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x8

    move v5, v6

    goto :goto_d

    :cond_11
    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_12
    and-int/lit16 v6, v9, 0x3fff

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    and-int/lit8 v7, v6, 0x1f

    const/16 v10, 0x1d

    if-gt v7, v10, :cond_13

    shr-int/lit8 v7, v6, 0x5

    and-int/lit8 v7, v7, 0x1f

    const/16 v10, 0x1d

    if-le v7, v10, :cond_14

    :cond_13
    const/16 v6, 0x9

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const-string v6, "too many length or distance symbols"

    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v6, -0x3

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_14
    and-int/lit8 v7, v6, 0x1f

    add-int/lit16 v7, v7, 0x102

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    array-length v6, v6

    if-ge v6, v7, :cond_17

    :cond_15
    new-array v6, v7, [I

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    :cond_16
    ushr-int/lit8 v9, v9, 0xe

    add-int/lit8 v8, v8, -0xe

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    :pswitch_7
    move v10, v4

    move v11, v5

    move v12, v8

    move v13, v9

    :goto_e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    ushr-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_1a

    move v4, v10

    move v5, v11

    :goto_f
    const/4 v6, 0x3

    if-ge v12, v6, :cond_19

    if-eqz v4, :cond_18

    const/16 p2, 0x0

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v11, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v12

    or-int/2addr v13, v5

    add-int/lit8 v12, v12, 0x8

    move v5, v11

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    :goto_10
    if-ge v6, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    const/4 v11, 0x0

    aput v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_18
    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aget v7, v7, v8

    and-int/lit8 v8, v13, 0x7

    aput v8, v6, v7

    ushr-int/lit8 v9, v13, 0x3

    add-int/lit8 v8, v12, -0x3

    move v10, v4

    move v11, v5

    move v12, v8

    move v13, v9

    goto :goto_e

    :cond_1a
    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->border:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aget v5, v5, v6

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    const/4 v5, 0x0

    const/4 v6, 0x7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_bits([I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v5, -0x3

    if-ne v4, v5, :cond_1c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    :cond_1c
    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v11, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    :goto_12
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    and-int/lit8 v6, v4, 0x1f

    add-int/lit16 v6, v6, 0x102

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v6

    if-lt v5, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    const/4 v4, 0x1

    new-array v8, v4, [I

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x1

    new-array v10, v4, [I

    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    const/16 v5, 0x9

    aput v5, v8, v4

    const/4 v4, 0x0

    const/4 v5, 0x6

    aput v5, v9, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inftree:Lorg/jboss/netty/util/internal/jzlib/InfTree;

    and-int/lit8 v5, v6, 0x1f

    add-int/lit16 v5, v5, 0x101

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v13, p1

    invoke-virtual/range {v4 .. v13}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->inflate_trees_dynamic(II[I[I[I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v5, -0x3

    if-ne v4, v5, :cond_1e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    :cond_1e
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v16, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bb:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v10, v15

    move/from16 v11, v16

    move/from16 v5, v17

    move/from16 v6, v18

    :goto_13
    if-ge v5, v4, :cond_21

    if-eqz v10, :cond_20

    const/16 p2, 0x0

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v16, v11, 0x1

    aget-byte v7, v7, v11

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x8

    move/from16 v11, v16

    goto :goto_13

    :cond_20
    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v11, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_22

    :cond_22
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v4, v9, v4

    and-int/2addr v4, v6

    add-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v9, v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->tb:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-object v8, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v8, v8, v9

    and-int/2addr v8, v6

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v15, v4, v7

    const/16 v4, 0x10

    if-ge v15, v4, :cond_23

    ushr-int v13, v6, v9

    sub-int v12, v5, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    aput v15, v4, v5

    :goto_14
    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    goto/16 :goto_12

    :cond_23
    const/16 v4, 0x12

    if-ne v15, v4, :cond_24

    const/4 v4, 0x7

    move v8, v4

    :goto_15
    const/16 v4, 0x12

    if-ne v15, v4, :cond_25

    const/16 v4, 0xb

    :goto_16
    move v7, v6

    move v6, v5

    :goto_17
    add-int v5, v9, v8

    if-ge v6, v5, :cond_27

    if-eqz v10, :cond_26

    const/16 p2, 0x0

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    add-int/lit8 v5, v11, 0x1

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v6

    or-int/2addr v7, v11

    add-int/lit8 v6, v6, 0x8

    move v11, v5

    goto :goto_17

    :cond_24
    add-int/lit8 v4, v15, -0xe

    move v8, v4

    goto :goto_15

    :cond_25
    const/4 v4, 0x3

    goto :goto_16

    :cond_26
    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v11, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_27
    ushr-int/2addr v7, v9

    sub-int/2addr v6, v9

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_mask:[I

    aget v5, v5, v8

    and-int/2addr v5, v7

    add-int/2addr v5, v4

    ushr-int v13, v7, v8

    sub-int v12, v6, v8

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->table:I

    add-int v7, v6, v5

    and-int/lit8 v8, v4, 0x1f

    add-int/lit16 v8, v8, 0x102

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v8

    if-gt v7, v4, :cond_28

    const/16 v4, 0x10

    if-ne v15, v4, :cond_29

    const/4 v4, 0x1

    if-ge v6, v4, :cond_29

    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    const-string v4, "invalid bit length repeat"

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v4, -0x3

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v11, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p1

    iput-wide v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v11, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_29
    const/16 v4, 0x10

    if-ne v15, v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v7, v6, -0x1

    aget v4, v4, v7

    :goto_18
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->blens:[I

    add-int/lit8 v7, v6, 0x1

    aput v4, v8, v6

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_30

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->index:I

    goto/16 :goto_14

    :cond_2a
    const/4 v4, 0x0

    goto :goto_18

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    const/4 v5, 0x0

    aget v5, v8, v5

    const/4 v6, 0x0

    aget v6, v9, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    const/4 v8, 0x0

    aget v8, v10, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->hufts:[I

    const/4 v10, 0x0

    aget v10, v11, v10

    invoke-virtual/range {v4 .. v10}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->init(II[II[II)V

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    :goto_19
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v15, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v16, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->codes:Lorg/jboss/netty/util/internal/jzlib/InfCodes;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/InfCodes;->proc(Lorg/jboss/netty/util/internal/jzlib/InfBlocks;Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_2c
    const/16 p2, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p1

    iget v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    if-ge v5, v4, :cond_2d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    move-object/from16 v0, p0

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->last:I

    if-nez v10, :cond_2e

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    move v11, v4

    move v14, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_1

    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->end:I

    sub-int/2addr v4, v5

    goto :goto_1a

    :cond_2e
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    :goto_1b
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p0 .. p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    move-object/from16 v0, p0

    iget v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    if-eq v5, v10, :cond_2f

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v7, v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_2f
    const/16 v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    :goto_1c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v6, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v5, v7, v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v7, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :pswitch_8
    const/4 v6, -0x3

    move-object/from16 v0, p0

    iput v9, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p0

    iput v8, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p1

    iput-wide v8, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p1

    iput v5, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->inflate_flush(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v4

    goto/16 :goto_2

    :cond_30
    move v6, v7

    goto/16 :goto_18

    :cond_31
    move v10, v6

    goto/16 :goto_b

    :cond_32
    move v11, v6

    goto/16 :goto_a

    :pswitch_9
    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_12

    :pswitch_a
    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    goto/16 :goto_19

    :pswitch_b
    move v6, v4

    move v7, v5

    move v5, v14

    goto/16 :goto_1b

    :pswitch_c
    move v6, v4

    move v7, v5

    goto :goto_1c

    :pswitch_d
    move v12, v4

    move v13, v5

    move v15, v8

    move/from16 v16, v9

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    aput-wide v0, p2, v3

    :cond_0
    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitk:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->bitb:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->checkfn:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->check:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    :cond_1
    return-void
.end method

.method set_dictionary([BII)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->window:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->write:I

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->read:I

    return-void
.end method

.method sync_point()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->mode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
