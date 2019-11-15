.class Lorg/jboss/netty/channel/local/DefaultLocalChannel$1;
.super Ljava/lang/Object;
.source "DefaultLocalChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/local/DefaultLocalChannel;-><init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/local/DefaultLocalChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel$1;->this$0:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

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

    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel$1;->this$0:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
