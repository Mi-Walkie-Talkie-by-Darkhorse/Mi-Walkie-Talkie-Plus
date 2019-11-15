.class Lorg/jboss/netty/channel/ChannelLocal$1;
.super Ljava/lang/Object;
.source "ChannelLocal.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/ChannelLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/ChannelLocal;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelLocal;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/ChannelLocal$1;->this$0:Lorg/jboss/netty/channel/ChannelLocal;

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

    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelLocal$1;->this$0:Lorg/jboss/netty/channel/ChannelLocal;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/ChannelLocal;->remove(Lorg/jboss/netty/channel/Channel;)Ljava/lang/Object;

    return-void
.end method
