.class final Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;
.super Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;
.source "HttpClientCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpClientCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Encoder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-boolean v0, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;->encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$000(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->isChunked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpClientCodec$Encoder;->this$0:Lorg/jboss/netty/handler/codec/http/HttpClientCodec;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpClientCodec;->access$100(Lorg/jboss/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0
.end method
