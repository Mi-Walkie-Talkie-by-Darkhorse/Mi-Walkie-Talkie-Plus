.class final Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$TimeoutCanceller;
.super Ljava/lang/Object;
.source "WriteTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeoutCanceller"
.end annotation


# instance fields
.field private final timeout:Lorg/jboss/netty/util/Timeout;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/Timeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$TimeoutCanceller;->timeout:Lorg/jboss/netty/util/Timeout;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$TimeoutCanceller;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    return-void
.end method
