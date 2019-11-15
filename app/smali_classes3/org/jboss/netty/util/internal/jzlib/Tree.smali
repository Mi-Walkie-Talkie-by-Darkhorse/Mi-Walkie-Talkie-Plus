.class final Lorg/jboss/netty/util/internal/jzlib/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field static final _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x1e

    const/16 v2, 0x1d

    const/16 v1, 0x13

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_lbits:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_dbits:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->extra_blbits:[I

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->bl_order:[B

    const/16 v0, 0x200

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->_dist_code:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->_length_code:[B

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_length:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->base_dist:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x7
    .end array-data

    :array_3
    .array-data 1
        0x10t
        0x11t
        0x12t
        0x0t
        0x8t
        0x7t
        0x9t
        0x6t
        0xat
        0x5t
        0xbt
        0x4t
        0xct
        0x3t
        0xdt
        0x2t
        0xet
        0x1t
        0xft
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x12t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bi_reverse(II)I
    .locals 2

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static d_code(I)I
    .locals 2

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->_dist_code:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/Tree;->_dist_code:[B

    ushr-int/lit8 v1, p0, 0x7

    add-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method private gen_bitlen(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V
    .locals 13

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v7, v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v8, v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->extra_bits:[I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget v9, v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->extra_base:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget v2, v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->max_length:I

    move v0, v4

    :goto_0
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aput-short v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aput-short v4, v6, v0

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    add-int/lit8 v5, v0, 0x1

    move v0, v4

    :goto_1
    const/16 v1, 0x23d

    if-ge v5, v1, :cond_4

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v10, v1, v5

    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v1, v6, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_1
    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-short v11, v1

    aput-short v11, v6, v3

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    if-le v10, v3, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v11, v3, v1

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v3, v1

    if-lt v10, v9, :cond_b

    sub-int v3, v10, v9

    aget v3, v8, v3

    :goto_3
    mul-int/lit8 v11, v10, 0x2

    aget-short v11, v6, v11

    iget v12, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v11

    add-int/2addr v1, v12

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    if-eqz v7, :cond_2

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-short v10, v7, v10

    add-int/2addr v3, v10

    mul-int/2addr v3, v11

    add-int/2addr v1, v3

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v1, v2, -0x1

    :goto_4
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v3, v3, v1

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_7
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    aput-short v4, v3, v1

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    add-int/lit8 v1, v1, 0x1

    aget-short v4, v3, v1

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v3, v1

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v0, v0, -0x2

    if-gtz v0, :cond_6

    move v1, v5

    :goto_5
    if-eqz v2, :cond_5

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    aget-short v0, v0, v2

    :cond_8
    :goto_6
    if-eqz v0, :cond_a

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    if-gt v3, v4, :cond_8

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-short v4, v6, v4

    if-eq v4, v2, :cond_9

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    int-to-long v4, v4

    int-to-long v8, v2

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v7, v6, v7

    int-to-long v10, v7

    sub-long/2addr v8, v10

    mul-int/lit8 v7, v3, 0x2

    aget-short v7, v6, v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-short v4, v2

    aput-short v4, v6, v3

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_b
    move v3, v4

    goto/16 :goto_3
.end method

.method private static gen_codes([SI[S)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x10

    new-array v3, v1, [S

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    const/16 v4, 0xf

    if-gt v1, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    aget-short v4, p2, v4

    add-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gt v0, p1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v1, p0, v1

    if-nez v1, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    aget-short v4, v3, v1

    add-int/lit8 v5, v4, 0x1

    int-to-short v5, v5

    aput-short v5, v3, v1

    invoke-static {v4, v1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->bi_reverse(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p0, v2

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method build_tree(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v4, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget-object v5, v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->static_tree:[S

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->stat_desc:Lorg/jboss/netty/util/internal/jzlib/StaticTree;

    iget v3, v0, Lorg/jboss/netty/util/internal/jzlib/StaticTree;->elems:I

    const/4 v0, -0x1

    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    const/16 v1, 0x23d

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    mul-int/lit8 v6, v1, 0x2

    aget-short v6, v4, v6

    if-eqz v6, :cond_0

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    aput v1, v0, v6

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aput-byte v2, v0, v1

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-short v2, v4, v6

    goto :goto_1

    :cond_1
    :goto_2
    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v1, v9, :cond_3

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v0, v9, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_3
    aput v1, v6, v7

    mul-int/lit8 v6, v1, 0x2

    aput-short v8, v4, v6

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aput-byte v2, v6, v1

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->opt_len:I

    if-eqz v5, :cond_1

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v1, v5, v1

    sub-int v1, v6, v1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->static_len:I

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Tree;->max_code:I

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    div-int/lit8 v1, v1, 0x2

    :goto_4
    if-lt v1, v8, :cond_4

    invoke-virtual {p1, v4, v1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pqdownheap([SI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_5
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v2, v2, v8

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    aget v5, v5, v6

    aput v5, v3, v8

    invoke-virtual {p1, v4, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pqdownheap([SI)V

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v8

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    aput v2, v5, v6

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    aput v3, v5, v6

    mul-int/lit8 v5, v1, 0x2

    mul-int/lit8 v6, v2, 0x2

    aget-short v6, v4, v6

    mul-int/lit8 v7, v3, 0x2

    aget-short v7, v4, v7

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v4, v5

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    iget-object v6, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aget-byte v6, v6, v2

    iget-object v7, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->depth:[B

    aget-byte v7, v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-short v5, v1

    aput-short v5, v4, v3

    aput-short v5, v4, v2

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    add-int/lit8 v2, v1, 0x1

    aput v1, v3, v8

    invoke-virtual {p1, v4, v8}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pqdownheap([SI)V

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_len:I

    if-ge v1, v9, :cond_5

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap_max:I

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->heap:[I

    aget v3, v3, v8

    aput v3, v1, v2

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->gen_bitlen(Lorg/jboss/netty/util/internal/jzlib/Deflate;)V

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->bl_count:[S

    invoke-static {v4, v0, v1}, Lorg/jboss/netty/util/internal/jzlib/Tree;->gen_codes([SI[S)V

    return-void

    :cond_5
    move v1, v2

    goto :goto_5
.end method
