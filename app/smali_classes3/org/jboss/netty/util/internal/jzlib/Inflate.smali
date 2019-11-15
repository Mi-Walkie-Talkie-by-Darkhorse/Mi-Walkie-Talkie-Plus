.class final Lorg/jboss/netty/util/internal/jzlib/Inflate;
.super Ljava/lang/Object;
.source "Inflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/Inflate$1;
    }
.end annotation


# static fields
.field private static final BAD:I = 0xd

.field private static final BLOCKS:I = 0x7

.field private static final CHECK1:I = 0xb

.field private static final CHECK2:I = 0xa

.field private static final CHECK3:I = 0x9

.field private static final CHECK4:I = 0x8

.field private static final DICT0:I = 0x6

.field private static final DICT1:I = 0x5

.field private static final DICT2:I = 0x4

.field private static final DICT3:I = 0x3

.field private static final DICT4:I = 0x2

.field private static final DONE:I = 0xc

.field private static final FLAG:I = 0x1

.field private static final GZIP_CM:I = 0x10

.field private static final GZIP_CRC32:I = 0x18

.field private static final GZIP_FCOMMENT:I = 0x16

.field private static final GZIP_FEXTRA:I = 0x14

.field private static final GZIP_FHCRC:I = 0x17

.field private static final GZIP_FLG:I = 0x11

.field private static final GZIP_FNAME:I = 0x15

.field private static final GZIP_ID1:I = 0xe

.field private static final GZIP_ID2:I = 0xf

.field private static final GZIP_ISIZE:I = 0x19

.field private static final GZIP_MTIME_XFL_OS:I = 0x12

.field private static final GZIP_XLEN:I = 0x13

.field private static final METHOD:I

.field private static final mark:[B


# instance fields
.field private blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

.field private gzipBytesToRead:I

.field private gzipCRC32:I

.field private gzipFlag:I

.field private gzipISize:I

.field private gzipUncompressedBytes:I

.field private gzipXLen:I

.field private marker:I

.field private method:I

.field private mode:I

.field private need:J

.field private final was:[J

.field private wbits:I

.field private wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mark:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    return-void
.end method

.method private inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/Inflate$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v4}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V

    iput v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    goto :goto_0

    :pswitch_0
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x7

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_1

    :pswitch_1
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xe

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static inflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    return v2

    :cond_1
    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, v2, p2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iget-wide v4, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v2, -0x3

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    shl-int v0, v6, v0

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    shl-int v0, v6, v0

    add-int/lit8 v0, v0, -0x1

    sub-int v1, p2, v0

    move p2, v0

    move v0, v1

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->set_dictionary([BII)V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v1, 0x7

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method inflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    if-nez v0, :cond_2

    :cond_0
    const/4 v1, -0x2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 v0, -0x5

    :goto_1
    const/4 v1, -0x5

    :goto_2
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB_OR_NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v2, v3, :cond_6

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x8

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    if-le v2, v3, :cond_5

    :cond_4
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    sget-object v3, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    iput-object v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    :cond_6
    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    and-int/lit8 v1, v2, 0xf

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "unknown compression method"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    if-le v1, v2, :cond_8

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "invalid window size"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_8
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x1

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_1
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->method:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x1f

    if-eqz v2, :cond_9

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "incorrect header check"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_9
    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x7

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    goto/16 :goto_2

    :cond_a
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x2

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_2
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x3

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_3
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x4

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_4
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :goto_3
    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v1, :cond_b

    move v1, v0

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v4

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iput-wide v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v1, 0x6

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/4 v1, 0x2

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v1, 0xd

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v0, "need dictionary"

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    const/4 v1, -0x2

    goto/16 :goto_0

    :pswitch_6
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v3, p1, v1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->proc(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v1

    const/4 v3, -0x3

    if-ne v1, v3, :cond_c

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v4, 0xd

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v4, 0x0

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v3, v2

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v4, v5, v2, v3}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v2

    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto/16 :goto_2

    :cond_c
    if-nez v1, :cond_d

    move v1, v0

    :cond_d
    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    iget v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v0, v2

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v4, v2, v0}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v0

    iput v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto/16 :goto_0

    :cond_e
    :try_start_1
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    invoke-virtual {v1, p1, v3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->reset(Lorg/jboss/netty/util/internal/jzlib/ZStream;[J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v4, v2, v1}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v1, v2, :cond_f

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xc

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    invoke-static {v3, v4, v2, v1}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    throw v0

    :cond_f
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v1, v2, :cond_10

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0x8

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_7
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0x9

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_8
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    int-to-long v4, v4

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xa

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_9
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xb

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_a
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->was:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v1, v2

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-wide v2, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->need:J

    long-to-int v2, v2

    if-eq v1, v2, :cond_12

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "incorrect data check"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_10
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->GZIP:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v1, v2, :cond_11

    const/4 v1, 0x0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0x18

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    goto/16 :goto_2

    :cond_11
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "unexpected state"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_12
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v1, 0xc

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :pswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_c
    const/4 v1, -0x3

    goto/16 :goto_0

    :pswitch_d
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_13

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "not a gzip stream"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_13
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xf

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_e
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8b

    if-eq v1, v2, :cond_14

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "not a gzip stream"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_14
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0x10

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_f
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    if-eq v1, v2, :cond_15

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "unknown compression method"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_15
    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0x11

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :pswitch_10
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit16 v1, v1, 0xe2

    if-eqz v1, :cond_16

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0xd

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v1, "unsupported flag"

    iput-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x5

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    move v1, v0

    goto/16 :goto_2

    :cond_16
    const/4 v1, 0x6

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v2, 0x12

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    move v1, v0

    :goto_4
    :pswitch_11
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v2, :cond_17

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    move v1, v0

    goto :goto_4

    :cond_17
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x13

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    const/4 v2, 0x2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    :pswitch_12
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_19

    :goto_5
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v2, :cond_18

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    move v1, v0

    goto :goto_5

    :cond_18
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipXLen:I

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x14

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :goto_6
    :pswitch_13
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v2, :cond_1a

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    move v1, v0

    goto :goto_6

    :cond_19
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x15

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    :cond_1a
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x15

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :pswitch_14
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1b

    :goto_7
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_24

    move v1, v0

    :cond_1b
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x16

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :pswitch_15
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1c

    :goto_8
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_23

    move v1, v0

    :cond_1c
    const/4 v2, 0x2

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x17

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :pswitch_16
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipFlag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1d

    :goto_9
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v2, :cond_1d

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    move v1, v0

    goto :goto_9

    :cond_1d
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x7

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    :cond_1e
    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    move v1, v0

    :pswitch_17
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v2, :cond_1f

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_1f
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipCRC32:I

    if-eq v2, v3, :cond_20

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v2, "incorrect CRC32 checksum"

    iput-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    :cond_20
    const/4 v2, 0x4

    iput v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0x19

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    :goto_a
    :pswitch_18
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    if-lez v2, :cond_21

    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-eqz v2, :cond_1

    iget v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipBytesToRead:I

    rsub-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    move v1, v0

    goto :goto_a

    :cond_21
    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipUncompressedBytes:I

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->gzipISize:I

    if-eq v2, v3, :cond_22

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0xd

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    const-string v2, "incorrect ISIZE checksum"

    iput-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v3, 0x5

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    goto/16 :goto_2

    :cond_22
    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/16 v3, 0xc

    iput v3, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto/16 :goto_2

    :cond_23
    move v1, v0

    goto/16 :goto_8

    :cond_24
    move v1, v0

    goto/16 :goto_7

    :pswitch_19
    move v0, v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_19
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;->free(Lorg/jboss/netty/util/internal/jzlib/ZStream;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    const/4 v0, 0x0

    return v0
.end method

.method inflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;ILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iput-object p3, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x8

    if-lt p2, v1, :cond_1

    const/16 v1, 0xf

    if-le p2, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_2
    iput p2, p0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wbits:I

    iget-object v1, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    new-instance v2, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    iget-object v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Inflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sget-object v4, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    if-ne v3, v4, :cond_3

    :goto_1
    const/4 v3, 0x1

    shl-int/2addr v3, p2

    invoke-direct {v2, p1, v0, v3}, Lorg/jboss/netty/util/internal/jzlib/InfBlocks;-><init>(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/Object;I)V

    iput-object v2, v1, Lorg/jboss/netty/util/internal/jzlib/Inflate;->blocks:Lorg/jboss/netty/util/internal/jzlib/InfBlocks;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1
.end method

.method inflateSync(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 9

    const/16 v2, 0xd

    const/4 v8, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, -0x2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    if-eq v0, v2, :cond_2

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    :cond_2
    iget v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-nez v3, :cond_3

    const/4 v1, -0x5

    goto :goto_0

    :cond_3
    iget v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    :goto_1
    if-eqz v3, :cond_6

    if-ge v0, v8, :cond_6

    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    aget-byte v4, v4, v2

    sget-object v5, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mark:[B

    aget-byte v5, v5, v0

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    iget-object v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    aget-byte v4, v4, v2

    if-eqz v4, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    rsub-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_6
    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget v6, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    sub-int v6, v2, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iput v3, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    iget-object v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iput v0, v2, Lorg/jboss/netty/util/internal/jzlib/Inflate;->marker:I

    if-eq v0, v8, :cond_7

    const/4 v1, -0x3

    goto :goto_0

    :cond_7
    iget-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iget-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateReset(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    iput-wide v2, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    iput-wide v4, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iget-object v0, p1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    const/4 v2, 0x7

    iput v2, v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;->mode:I

    goto :goto_0
.end method
