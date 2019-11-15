.class public Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;
.super Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.source "ObjectDecoder.java"


# instance fields
.field private final classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->weakCachingResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/ClassLoader;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->weakCachingResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V
    .locals 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "classResolver"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;)V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;-><init>(ILorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;

    new-instance v2, Lorg/jboss/netty/buffer/ChannelBufferInputStream;

    invoke-direct {v2, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/ObjectDecoder;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/jboss/netty/handler/codec/serialization/ClassResolver;)V

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
