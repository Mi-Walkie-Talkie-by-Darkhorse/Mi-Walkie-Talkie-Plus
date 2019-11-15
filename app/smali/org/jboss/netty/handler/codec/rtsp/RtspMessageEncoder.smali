.class public abstract Lorg/jboss/netty/handler/codec/rtsp/RtspMessageEncoder;
.super Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;
.source "RtspMessageEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method
