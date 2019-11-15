.class Lorg/jboss/netty/channel/socket/nio/NioClientBoss$1;
.super Ljava/lang/Object;
.source "NioClientBoss.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientBoss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$1;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$1;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$1;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method
