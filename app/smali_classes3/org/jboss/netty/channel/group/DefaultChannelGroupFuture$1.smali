.class Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v0, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v2, v2, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v2, v2, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    sget-boolean v2, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v2, v2, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v3, v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v3, v3, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    iget v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/group/DefaultChannelGroupFuture;->setDone()Z

    :cond_3
    return-void
.end method
