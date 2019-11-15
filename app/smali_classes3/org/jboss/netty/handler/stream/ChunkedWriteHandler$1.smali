.class Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;
.super Ljava/lang/Object;
.source "ChunkedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

.field final synthetic val$chunks:Lorg/jboss/netty/handler/stream/ChunkedInput;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;->this$0:Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;->val$chunks:Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;->val$chunks:Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    return-void
.end method
