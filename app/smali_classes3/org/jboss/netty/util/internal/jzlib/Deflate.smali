.class final Lorg/jboss/netty/util/internal/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/Deflate$1;,
        Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DYN_TREES:I = 0x2

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final INIT_STATE:I = 0x2a

.field private static final MAX_MATCH:I = 0x102

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_UNKNOWN:I = 0x2

.field private static final config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field final bl_count:[S

.field final bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field final bl_tree:[S

.field block_start:I

.field d_buf:I

.field final d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field data_type:B

.field final depth:[B

.field final dyn_dtree:[S

.field final dyn_ltree:[S

.field good_match:I

.field private gzipUncompressedBytes:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field final heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:I

.field final l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field nice_match:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I

.field wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

.field private wroteTrailer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v0, v6, v1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x1

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v7, 0x1

    move v3, v9

    move v4, v9

    move v5, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/4 v7, 0x1

    move v3, v9

    move v6, v11

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v10

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x3

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v4, 0x6

    const/4 v7, 0x1

    move v3, v9

    move v5, v12

    move v6, v12

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v5, 0x10

    const/16 v6, 0x10

    move v3, v9

    move v4, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v9

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x5

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x10

    move v3, v11

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x6

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x10

    const/16 v5, 0x80

    const/16 v6, 0x80

    move v3, v11

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/4 v8, 0x7

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v5, 0x80

    const/16 v6, 0x100

    move v3, v11

    move v4, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x80

    const/16 v5, 0x102

    const/16 v6, 0x400

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v11

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v8, 0x9

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    const/16 v4, 0x102

    const/16 v5, 0x102

    const/16 v6, 0x1000

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "need dictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream end"

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string v2, "file error"

    aput-object v2, v0, v1

    const-string v1, "stream error"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "data error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "insufficient memory"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "buffer error"

    aput-object v2, v0, v1

    const-string v1, "incompatible version"

    aput-object v1, v0, v11

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v1, 0x23d

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    return-void
.end method

.method private _tr_align()V
    .locals 5

    const/16 v4, 0x100

    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-direct {p0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_flush()V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_flush()V

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    return-void
.end method

.method private _tr_flush_block(IIZ)V
    .locals 7

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    if-lez v2, :cond_3

    iget-byte v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->data_type:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->set_data_type()V

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v2, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v2, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->build_bl_tree()I

    move-result v2

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x7

    ushr-int/lit8 v4, v3, 0x3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x7

    ushr-int/lit8 v3, v3, 0x3

    if-gt v3, v4, :cond_1

    move v4, v3

    :cond_1
    :goto_0
    add-int/lit8 v5, p2, 0x4

    if-gt v5, v4, :cond_4

    const/4 v5, -0x1

    if-eq p1, v5, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_stored_block(IIZ)V

    :goto_1
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->init_block()V

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_windup()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, p2, 0x5

    move v3, v2

    move v4, v2

    move v2, v1

    goto :goto_0

    :cond_4
    if-ne v3, v4, :cond_6

    if-eqz p3, :cond_5

    :goto_2
    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_ltree:[S

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_dtree:[S

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    :goto_3
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_all_trees(III)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method private _tr_stored_block(IIZ)V
    .locals 3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    invoke-direct {p0, p1, p2, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->copy_block(IIZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _tr_tally(II)Z
    .locals 12

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    add-int/2addr v1, v2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v1, p2, 0x2

    aget-short v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v0, v1

    :goto_0
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    and-int/lit16 v0, v0, 0x1fff

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int v2, v0, v2

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_1

    int-to-long v4, v1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v3, v0, 0x2

    aget-short v1, v1, v3

    int-to-long v6, v1

    const-wide/16 v8, 0x5

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    aget v1, v1, v0

    int-to-long v10, v1

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    aget-byte v2, v2, p2

    add-int/lit16 v2, v2, 0x100

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    aget-short v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    aput-short v3, v1, v2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {v0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->d_code(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    aget-short v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v1, v0

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, v1, 0x3

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_2

    div-int/lit8 v1, v2, 0x2

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private bi_flush()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    ushr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method private bi_windup()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    :cond_0
    :goto_0
    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    if-lez v0, :cond_0

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_0
.end method

.method private build_bl_tree()I
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->scan_tree([SI)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->scan_tree([SI)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/util/internal/jzlib/Tree;->build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    const/16 v0, 0x12

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private compress_block([S[S)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_3

    invoke-direct {p0, v2, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    :cond_1
    :goto_0
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    if-lt v0, v1, :cond_0

    :cond_2
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    const/16 v0, 0x201

    aget-short v0, p1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    return-void

    :cond_3
    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    aget-byte v3, v3, v2

    add-int/lit16 v4, v3, 0x100

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_lbits:[I

    aget v4, v4, v3

    if-eqz v4, :cond_4

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_length:[I

    aget v3, v5, v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->d_code(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_dist:[I

    aget v2, v4, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_0
.end method

.method private copy_block(IIZ)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_windup()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    if-eqz p3, :cond_0

    int-to-short v0, p2

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    xor-int/lit8 v0, p2, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte([BII)V

    return-void
.end method

.method private deflateInit2(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIIIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .locals 3

    const/16 v2, 0x9

    const/4 v1, 0x1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB_OR_NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne p7, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZLIB_OR_NONE allowed only for inflate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x6

    :cond_1
    if-gez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lt p5, v1, :cond_3

    if-gt p5, v2, :cond_3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    if-lt p4, v2, :cond_3

    const/16 v0, 0xf

    if-gt p4, v0, :cond_3

    if-ltz p2, :cond_3

    if-gt p2, v2, :cond_3

    if-ltz p6, :cond_3

    const/4 v0, 0x2

    if-le p6, v0, :cond_4

    :cond_3
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_4
    iput-object p0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iput-object p7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    iput p4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    shl-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    add-int/lit8 v0, p5, 0x7

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    shl-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_bits:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    add-int/lit8 v0, p5, 0x6

    shl-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_buf:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_buf:I

    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    iput p6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    goto :goto_0
.end method

.method private deflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    iput-boolean v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x71

    :goto_0
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    invoke-static {v4, v5, v3, v2, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->tr_init()V

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lm_init()V

    return v2

    :cond_0
    const/16 v0, 0x2a

    goto :goto_0
.end method

.method private deflate_fast(I)I
    .locals 13

    const/4 v2, 0x1

    const v11, 0xffff

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v5, 0x106

    if-ge v4, v5, :cond_3

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v5, 0x106

    if-ge v4, v5, :cond_2

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v4, :cond_3

    if-ne p1, v10, :cond_8

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_9

    if-ne p1, v10, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v4, v3, :cond_b

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v4

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v0, v4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v4

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v0, v0, v4

    and-int v4, v0, v11

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v5, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v6, v6, v7

    aput-short v6, v0, v5

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v6, v6

    aput-short v6, v0, v5

    :goto_2
    int-to-long v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v0, v4

    and-int/2addr v0, v11

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v5, v5, -0x106

    if-gt v0, v5, :cond_4

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->longest_match(I)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    :cond_4
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-lt v0, v3, :cond_7

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    sub-int/2addr v0, v5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/lit8 v5, v5, -0x3

    invoke-direct {p0, v0, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    if-gt v5, v6, :cond_6

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v5, v3, :cond_6

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    :cond_5
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v5

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v5

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v4, v4, v5

    and-int/2addr v4, v11

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v5, v6

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v7, v7

    aput-short v7, v5, v6

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-nez v5, :cond_5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    move v12, v0

    move v0, v4

    move v4, v12

    :goto_3
    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v5, v6

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v5, v6

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    move v12, v0

    move v0, v4

    move v4, v12

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v0

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    move v12, v0

    move v0, v4

    move v4, v12

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    if-ne p1, v10, :cond_a

    move v2, v3

    :cond_a
    move v1, v2

    goto/16 :goto_0

    :cond_b
    move v4, v0

    goto/16 :goto_2
.end method

.method private deflate_slow(I)I
    .locals 12

    const/4 v11, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    :goto_0
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v5, v6, :cond_4

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v5, v6, :cond_2

    if-nez p1, :cond_2

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v5, :cond_4

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    :cond_3
    if-ne p1, v11, :cond_e

    move v0, v2

    :goto_2
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_f

    if-ne p1, v11, :cond_1

    move v1, v4

    goto :goto_1

    :cond_4
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-lt v5, v3, :cond_5

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v5

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v0, v5

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v5

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v0, v0, v5

    const v5, 0xffff

    and-int/2addr v0, v5

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v7, v7, v8

    aput-short v7, v5, v6

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v7, v7

    aput-short v7, v5, v6

    :cond_5
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_match:I

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-eqz v0, :cond_8

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    if-ge v5, v6, :cond_8

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v5, v0

    const v6, 0xffff

    and-int/2addr v5, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v6, v6, -0x106

    if-gt v5, v6, :cond_8

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v5, v4, :cond_6

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->longest_match(I)I

    move-result v5

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    :cond_6
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    const/4 v6, 0x5

    if-gt v5, v6, :cond_8

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    if-eq v5, v2, :cond_7

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    if-ne v5, v3, :cond_8

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    sub-int/2addr v5, v6

    const/16 v6, 0x1000

    if-le v5, v6, :cond_8

    :cond_7
    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    :cond_8
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-lt v5, v3, :cond_b

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-gt v5, v6, :cond_b

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x3

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_match:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v7, v7, -0x3

    invoke-direct {p0, v6, v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v6

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v7, v7, -0x2

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    :cond_9
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-gt v7, v5, :cond_a

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v7

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v7

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v0, v0, v7

    const v7, 0xffff

    and-int/2addr v0, v7

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v7, v8

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v7, v8

    :cond_a
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    if-nez v7, :cond_9

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v6, :cond_0

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_b
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-direct {p0, v1, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_tally(II)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    :cond_c
    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_d
    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2

    :cond_f
    if-ne p1, v11, :cond_10

    move v2, v3

    :cond_10
    move v1, v2

    goto/16 :goto_1
.end method

.method private deflate_stored(I)I
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0xffff

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v3, v3, -0x5

    if-le v0, v3, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v0, v0, -0x5

    :cond_0
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-gt v3, v1, :cond_3

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->fill_window()V

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v3, :cond_2

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v3, :cond_3

    if-ne p1, v5, :cond_6

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_7

    if-ne p1, v5, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v4, :cond_4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-lt v4, v3, :cond_5

    :cond_4
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-eqz v3, :cond_1

    :cond_5
    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v4, v4, -0x106

    if-lt v3, v4, :cond_0

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-ne p1, v5, :cond_8

    const/4 v1, 0x3

    :cond_8
    move v2, v1

    goto :goto_0
.end method

.method private fill_window()V
    .locals 8

    const v7, 0xffff

    const/4 v3, 0x0

    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window_size:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    sub-int v4, v0, v1

    if-nez v4, :cond_2

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v1, :cond_8

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x106

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    move v1, v0

    :cond_4
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    add-int/lit8 v0, v0, -0x1

    aget-short v2, v2, v0

    and-int/2addr v2, v7

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    if-lt v2, v6, :cond_6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v6

    int-to-short v2, v2

    :goto_2
    aput-short v2, v5, v0

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_4

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    move v1, v0

    :cond_5
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    add-int/lit8 v0, v0, -0x1

    aget-short v2, v2, v0

    and-int/2addr v2, v7

    iget-object v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    if-lt v2, v6, :cond_7

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    sub-int/2addr v2, v6

    int-to-short v2, v2

    :goto_3
    aput-short v2, v5, v0

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_5

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->read_buf([BII)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    :cond_9
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/16 v1, 0x106

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_a
    move v0, v4

    goto/16 :goto_0
.end method

.method private flush_block_only(Z)V
    .locals 3

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    :goto_0
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_flush_block(IIZ)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private init_block()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x11e

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v3, v0, 0x2

    aput-short v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v3, v0, 0x2

    aput-short v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    const/16 v2, 0x13

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v3, v0, 0x2

    aput-short v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v0, v2

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->matches:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_lit:I

    return-void
.end method

.method private lm_init()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window_size:I

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_lazy:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->good_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->nice_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_chain:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_length:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_available:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    return-void
.end method

.method private longest_match(I)I
    .locals 14

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v2, v2, -0x106

    if-le v0, v2, :cond_4

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v2, v2, -0x106

    sub-int/2addr v0, v2

    :goto_0
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    iget v8, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    add-int/lit16 v9, v2, 0x102

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v3, v6, v5

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v7, v6, v5

    aget-byte v2, v2, v7

    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev_length:I

    iget v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    if-lt v7, v10, :cond_0

    shr-int/lit8 v1, v1, 0x2

    :cond_0
    iget v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-le v4, v7, :cond_b

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    move v1, v13

    :cond_1
    :goto_1
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v10, p1, v4

    aget-byte v7, v7, v10

    if-ne v7, v1, :cond_2

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v10, p1, v4

    add-int/lit8 v10, v10, -0x1

    aget-byte v7, v7, v10

    if-ne v7, v2, :cond_2

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v7, v7, p1

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v10, v10, v5

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v10, p1, 0x1

    aget-byte v7, v7, v10

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v12, v5, 0x1

    aget-byte v11, v11, v12

    if-eq v7, v11, :cond_5

    :cond_2
    :goto_2
    iget-object v7, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    and-int v10, p1, v8

    aget-short v7, v7, v10

    const v10, 0xffff

    and-int p1, v7, v10

    if-le p1, v0, :cond_3

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_1

    :cond_3
    :goto_3
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-gt v4, v0, :cond_9

    :goto_4
    return v4

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v5, v10, 0x1

    :cond_6
    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v10, v10, v7

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v11, v11, v5

    if-ne v10, v11, :cond_7

    if-lt v7, v9, :cond_6

    :cond_7
    sub-int v5, v9, v7

    rsub-int v5, v5, 0x102

    add-int/lit16 v7, v9, -0x102

    if-le v5, v4, :cond_a

    iput p1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->match_start:I

    if-lt v5, v3, :cond_8

    move v4, v5

    goto/16 :goto_3

    :cond_8
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v2, v7, v5

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int v4, v7, v5

    aget-byte v1, v1, v4

    move v4, v5

    move v5, v7

    goto/16 :goto_2

    :cond_9
    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    goto/16 :goto_4

    :cond_a
    move v5, v7

    goto/16 :goto_2

    :cond_b
    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    move v1, v13

    goto/16 :goto_1
.end method

.method private putShortMSB(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    return-void
.end method

.method private put_byte(B)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private put_byte([BII)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    return-void
.end method

.method private put_short(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    return-void
.end method

.method private scan_tree([SI)V
    .locals 11

    const/4 v4, 0x7

    const/4 v2, 0x4

    const/4 v7, -0x1

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x1

    aget-short v8, p1, v0

    if-nez v8, :cond_8

    const/16 v0, 0x8a

    move v3, v0

    move v0, v1

    :goto_0
    add-int/lit8 v5, p2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aput-short v7, p1, v5

    move v5, v6

    move v10, v6

    :goto_1
    if-gt v10, p2, :cond_7

    add-int/lit8 v9, v10, 0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-short v9, p1, v9

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_0

    if-ne v8, v9, :cond_0

    :goto_2
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v8, v9

    goto :goto_1

    :cond_0
    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v3, v8, 0x2

    aget-short v7, v0, v3

    add-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v0, v3

    :goto_3
    if-nez v9, :cond_5

    const/16 v0, 0x8a

    move v3, v0

    move v5, v6

    move v7, v8

    move v0, v1

    goto :goto_2

    :cond_1
    if-eqz v8, :cond_3

    if-eq v8, v7, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v3, v8, 0x2

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v3, 0x20

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    goto :goto_3

    :cond_3
    const/16 v0, 0xa

    if-gt v5, v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v3, 0x22

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    const/16 v3, 0x24

    aget-short v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v3

    goto :goto_3

    :cond_5
    if-ne v8, v9, :cond_6

    const/4 v0, 0x6

    move v3, v0

    move v5, v6

    move v7, v8

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    move v3, v4

    move v5, v6

    move v7, v8

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    move v0, v2

    move v3, v4

    goto :goto_0
.end method

.method private send_all_trees(III)V
    .locals 3

    const/4 v1, 0x5

    add-int/lit16 v0, p1, -0x101

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v0, p3, -0x4

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_tree([SI)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_tree([SI)V

    return-void
.end method

.method private send_bits(II)V
    .locals 3

    const v2, 0xffff

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v1, p2, 0x10

    if-le v0, v1, :cond_0

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_short(I)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v0, v0, 0x10

    ushr-int v0, p1, v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v1, p2, -0x10

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    :goto_0
    return-void

    :cond_0
    iget-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method private send_code(I[S)V
    .locals 3

    const v2, 0xffff

    mul-int/lit8 v0, p1, 0x2

    aget-short v1, p2, v0

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    aget-short v0, p2, v0

    and-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    return-void
.end method

.method private send_tree([SI)V
    .locals 13

    const/16 v4, 0x8a

    const/4 v2, 0x4

    const/4 v5, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x3

    const/4 v8, -0x1

    const/4 v0, 0x1

    aget-short v9, p1, v0

    if-nez v9, :cond_9

    move v0, v1

    move v3, v4

    :goto_0
    move v6, v3

    move v11, v7

    move v3, v0

    move v0, v7

    :goto_1
    if-gt v11, p2, :cond_8

    add-int/lit8 v10, v11, 0x1

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-short v10, p1, v10

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_0

    if-ne v9, v10, :cond_0

    move v12, v3

    move v3, v6

    move v6, v0

    move v0, v12

    :goto_2
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v9, v10

    move v12, v6

    move v6, v3

    move v3, v0

    move v0, v12

    goto :goto_1

    :cond_0
    if-ge v0, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v9, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    :goto_3
    if-nez v10, :cond_6

    move v0, v1

    move v3, v4

    move v6, v7

    move v8, v9

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_4

    if-eq v9, v8, :cond_3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v9, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x1

    :cond_3
    const/16 v3, 0x10

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v3, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x3

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_3

    :cond_4
    const/16 v3, 0xa

    if-gt v0, v3, :cond_5

    const/16 v3, 0x11

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v3, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_3

    :cond_5
    const/16 v3, 0x12

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v3, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0xb

    invoke-direct {p0, v0, v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->send_bits(II)V

    goto :goto_3

    :cond_6
    if-ne v9, v10, :cond_7

    const/4 v0, 0x6

    move v3, v0

    move v6, v7

    move v8, v9

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    move v3, v5

    move v6, v7

    move v8, v9

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    move v0, v2

    move v3, v5

    goto :goto_0
.end method

.method private set_data_type()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v4, v2, 0x2

    aget-short v3, v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    const/16 v4, 0x80

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v2, 0x2

    aget-short v4, v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    const/16 v4, 0x100

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, v2, 0x2

    aget-short v4, v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    ushr-int/lit8 v2, v3, 0x2

    if-le v1, v2, :cond_2

    :goto_3
    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->data_type:B

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static smaller([SII[B)Z
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    aget-short v0, p0, v0

    mul-int/lit8 v1, p2, 0x2

    aget-short v1, p0, v1

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    aget-byte v0, p3, p1

    aget-byte v1, p3, p2

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tr_init()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_ltree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->l_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_l_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->dyn_dtree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->d_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_d_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_tree:[S

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_desc:Lorg/jboss/netty/util/internal/jzlib/Tree;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_bl_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iput-short v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_buf:S

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bi_valid:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_eob_len:I

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->init_block()V

    return-void
.end method


# virtual methods
.method deflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 11

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v10, 0x4

    const/4 v2, 0x0

    if-gt p2, v10, :cond_0

    if-gez p2, :cond_2

    :cond_0
    const/4 v2, -0x2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    if-nez v0, :cond_3

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_4

    :cond_3
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v5, 0x29a

    if-ne v0, v5, :cond_5

    if-eq p2, v10, :cond_5

    :cond_4
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    aget-object v0, v0, v10

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v2, -0x2

    goto :goto_0

    :cond_5
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_6

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v2, -0x5

    goto :goto_0

    :cond_6
    iput-object p1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strm:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v6, 0x2a

    if-ne v0, v6, :cond_7

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/16 v0, 0x71

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    :cond_7
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_c

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_bits:I

    add-int/lit8 v0, v0, -0x8

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v6, v0, 0x8

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_8

    move v0, v1

    :cond_8
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v6

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v6, :cond_9

    or-int/lit8 v0, v0, 0x20

    :cond_9
    rem-int/lit8 v6, v0, 0x1f

    rsub-int/lit8 v6, v6, 0x1f

    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    if-eqz v0, :cond_a

    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const/16 v0, 0x10

    ushr-long/2addr v6, v0

    long-to-int v0, v6

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    iget-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v0, v6

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    :cond_a
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    invoke-static {v6, v7, v0, v2, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v6

    iput-wide v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    const/16 v0, -0x75

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v6

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    :goto_2
    invoke-direct {p0, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, v10}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_2

    :cond_b
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_c

    if-gt p2, v5, :cond_c

    if-eq p2, v10, :cond_c

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v2, -0x5

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v5, 0x29a

    if-ne v0, v5, :cond_d

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v0, :cond_d

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v2, -0x5

    goto/16 :goto_0

    :cond_d
    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    :try_start_0
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v0, :cond_e

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->lookahead:I

    if-nez v0, :cond_e

    if-eqz p2, :cond_16

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-eq v0, v6, :cond_16

    :cond_e
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v6, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v0, v0, v6

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    packed-switch v0, :pswitch_data_2

    move v0, v4

    :goto_3
    const/4 v4, 0x2

    if-eq v0, v4, :cond_f

    if-ne v0, v1, :cond_10

    :cond_f
    const/16 v4, 0x29a

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    :cond_10
    if-eqz v0, :cond_11

    const/4 v4, 0x2

    if-ne v0, v4, :cond_13

    :cond_11
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_12

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    :goto_4
    sub-int/2addr v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    goto/16 :goto_0

    :pswitch_4
    :try_start_1
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_stored(I)I

    move-result v0

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_fast(I)I

    move-result v0

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate_slow(I)I

    move-result v0

    goto :goto_3

    :cond_13
    if-ne v0, v3, :cond_16

    if-ne p2, v3, :cond_15

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_align()V

    :cond_14
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-nez v0, :cond_16

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->last_flush:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    goto :goto_4

    :cond_15
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v0, v4, v6}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->_tr_stored_block(IIZ)V

    if-ne p2, v1, :cond_14

    move v0, v2

    :goto_5
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_size:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    const/4 v4, 0x0

    aput-short v4, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v2, v5

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    throw v0

    :cond_16
    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int/2addr v1, v5

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    if-ne p2, v10, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-eq v0, v1, :cond_17

    iget-boolean v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    if-eqz v0, :cond_18

    :cond_17
    move v2, v3

    goto/16 :goto_0

    :cond_18
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Deflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :goto_6
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->flush_pending()V

    iput-boolean v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wroteTrailer:Z

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-eqz v0, :cond_19

    move v0, v2

    :goto_7
    move v2, v0

    goto/16 :goto_0

    :pswitch_7
    iget-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const/16 v4, 0x10

    ushr-long/2addr v0, v4

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    iget-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->putShortMSB(I)V

    goto :goto_6

    :pswitch_8
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->gzipUncompressedBytes:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->put_byte(B)V

    goto :goto_6

    :cond_19
    move v0, v3

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method deflateEnd()I
    .locals 4

    const/16 v3, 0x71

    const/4 v2, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iput-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    if-ne v0, v3, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method deflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .locals 8

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateInit2(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIIIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method deflateParams(Lorg/jboss/netty/util/internal/jzlib/ZStream;II)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x6

    :cond_0
    if-ltz p2, :cond_1

    const/16 v1, 0x9

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    const/4 v1, 0x2

    if-le p3, v1, :cond_2

    :cond_1
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_2
    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    aget-object v2, v2, p2

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->func:I

    if-eq v1, v2, :cond_3

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v0

    :cond_3
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    if-eq v1, p2, :cond_4

    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_lazy:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_lazy_match:I

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->good_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->good_match:I

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->nice_length:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->nice_match:I

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->config_table:[Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->level:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate$Config;->max_chain:I

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->max_chain_length:I

    :cond_4
    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strategy:I

    goto :goto_0
.end method

.method deflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->status:I

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    :cond_0
    const/4 v1, -0x2

    :cond_1
    return v1

    :cond_2
    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    invoke-static {v2, v3, p2, v1, p3}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v0, v0, -0x106

    if-le p3, v0, :cond_3

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_size:I

    add-int/lit16 v2, v0, -0x106

    sub-int v0, p3, v2

    move p3, v2

    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    invoke-static {p2, v0, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->strstart:I

    iput p3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->block_start:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    move v0, v1

    :goto_1
    add-int/lit8 v2, p3, -0x3

    if-gt v0, v2, :cond_1

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v2, v3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->hash_mask:I

    and-int/2addr v2, v3

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->prev:[S

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->w_mask:I

    and-int/2addr v3, v0

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v5, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    aget-short v4, v4, v5

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->head:[S

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->ins_h:I

    int-to-short v4, v0

    aput-short v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method pqdownheap([SI)V
    .locals 5

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v2, v0, p2

    shl-int/lit8 v0, p2, 0x1

    :goto_0
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    invoke-static {p1, v1, v3, v4}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->smaller([SII[B)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v0, v0, v1

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    invoke-static {p1, v2, v0, v3}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->smaller([SII[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aput v2, v0, p2

    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v1

    aput v3, v0, p2

    shl-int/lit8 v0, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method
