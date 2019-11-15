.class public Lorg/jboss/netty/handler/codec/http/HttpContentDecompressor;
.super Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;
.source "HttpContentDecompressor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected newContentDecoder(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x-gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    new-array v1, v1, [Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    new-instance v2, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;

    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelUpstreamHandler;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "x-deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;

    new-array v1, v1, [Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    new-instance v2, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;

    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelUpstreamHandler;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
