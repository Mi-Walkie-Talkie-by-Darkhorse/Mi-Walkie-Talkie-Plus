.class public final Lorg/jboss/netty/util/internal/jzlib/JZlib;
.super Ljava/lang/Object;
.source "JZlib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;
    }
.end annotation


# static fields
.field static final BL_CODES:I = 0x13

.field static final DEF_MEM_LEVEL:I = 0x8

.field static final DEF_WBITS:I = 0xf

.field static final D_CODES:I = 0x1e

.field static final HEAP_SIZE:I = 0x23d

.field static final LENGTH_CODES:I = 0x1d

.field static final LITERALS:I = 0x100

.field static final L_CODES:I = 0x11e

.field static final MANY:I = 0x5a0

.field static final MAX_BITS:I = 0xf

.field static final MAX_BL_BITS:I = 0x7

.field static final MAX_MEM_LEVEL:I = 0x9

.field static final MAX_WBITS:I = 0xf

.field static final PRESET_DICT:I = 0x20

.field public static final W_GZIP:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field public static final W_NONE:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field public static final W_ZLIB:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field public static final W_ZLIB_OR_NONE:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field public static final Z_BEST_COMPRESSION:I = 0x9

.field public static final Z_BEST_SPEED:I = 0x1

.field public static final Z_BUF_ERROR:I = -0x5

.field public static final Z_DATA_ERROR:I = -0x3

.field public static final Z_DEFAULT_COMPRESSION:I = -0x1

.field public static final Z_DEFAULT_STRATEGY:I = 0x0

.field static final Z_DEFLATED:I = 0x8

.field public static final Z_ERRNO:I = -0x1

.field public static final Z_FILTERED:I = 0x1

.field public static final Z_FINISH:I = 0x4

.field public static final Z_FULL_FLUSH:I = 0x3

.field public static final Z_HUFFMAN_ONLY:I = 0x2

.field public static final Z_MEM_ERROR:I = -0x4

.field public static final Z_NEED_DICT:I = 0x2

.field public static final Z_NO_COMPRESSION:I = 0x0

.field public static final Z_NO_FLUSH:I = 0x0

.field public static final Z_OK:I = 0x0

.field public static final Z_PARTIAL_FLUSH:I = 0x1

.field public static final Z_STREAM_END:I = 0x1

.field public static final Z_STREAM_ERROR:I = -0x2

.field public static final Z_SYNC_FLUSH:I = 0x2

.field public static final Z_VERSION_ERROR:I = -0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_NONE:Ljava/lang/Enum;

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->GZIP:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_GZIP:Ljava/lang/Enum;

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB_OR_NONE:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB_OR_NONE:Ljava/lang/Enum;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
