.class final Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel$WriteTask;->this$0:Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    return-void
.end method
