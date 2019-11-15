.class Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;
.super Ljava/lang/Object;
.source "ZlibEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;

.field final synthetic val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic val$evt:Lorg/jboss/netty/channel/ChannelEvent;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;->this$0:Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;->val$evt:Lorg/jboss/netty/channel/ChannelEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder$1;->val$evt:Lorg/jboss/netty/channel/ChannelEvent;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
