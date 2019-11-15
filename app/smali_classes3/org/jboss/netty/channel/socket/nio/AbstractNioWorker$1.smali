.class Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;
.super Ljava/lang/Object;
.source "AbstractNioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

.field final synthetic val$channel:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

.field final synthetic val$future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic val$interestOps:I


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->val$channel:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    iput p4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->val$interestOps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->val$channel:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;->val$interestOps:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    return-void
.end method
