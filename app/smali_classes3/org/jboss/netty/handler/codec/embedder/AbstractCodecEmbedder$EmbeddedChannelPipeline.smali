.class final Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder$EmbeddedChannelPipeline;
.super Lorg/jboss/netty/channel/DefaultChannelPipeline;
.source "AbstractCodecEmbedder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/embedder/AbstractCodecEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmbeddedChannelPipeline"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    return-void
.end method


# virtual methods
.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .locals 2

    move-object v0, p2

    :goto_0
    instance-of v1, v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    throw v0

    :cond_1
    new-instance v1, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/embedder/CodecEmbedderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
