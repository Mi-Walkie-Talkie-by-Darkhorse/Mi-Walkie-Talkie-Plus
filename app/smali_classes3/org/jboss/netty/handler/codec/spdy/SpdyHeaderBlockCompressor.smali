.class abstract Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;
.super Ljava/lang/Object;
.source "SpdyHeaderBlockCompressor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(IIII)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;
    .locals 2

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method abstract encode(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method abstract end()V
.end method

.method abstract setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method
