.class public Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;
.super Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;
.source "DecoderEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;[Lorg/jboss/netty/channel/ChannelUpstreamHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;-><init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;[Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/jboss/netty/channel/ChannelUpstreamHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic finish()Z
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->finish()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/embedder/DecoderEmbedder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
