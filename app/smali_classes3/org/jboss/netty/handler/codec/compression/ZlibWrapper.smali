.class public final enum Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
.super Ljava/lang/Enum;
.source "ZlibWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

.field public static final enum ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    const-string v1, "ZLIB"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    new-instance v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    new-instance v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    new-instance v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    const-string v1, "ZLIB_OR_NONE"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->$VALUES:[Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->$VALUES:[Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    return-object v0
.end method
