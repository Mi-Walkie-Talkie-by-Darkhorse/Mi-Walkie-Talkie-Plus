.class public final Lorg/jboss/netty/handler/codec/frame/Delimiters;
.super Ljava/lang/Object;
.source "Delimiters.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lineDelimiter()[Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v4, [B

    const/16 v2, 0xa

    aput-byte v2, v1, v3

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    aput-object v1, v0, v4

    return-object v0

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static nulDelimiter()[Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    new-array v1, v1, [B

    aput-byte v2, v1, v2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method
