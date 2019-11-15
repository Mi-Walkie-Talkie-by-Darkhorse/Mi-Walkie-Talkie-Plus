.class public interface abstract Lorg/jboss/netty/channel/ChannelFutureListener;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field public static final CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

.field public static final CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/ChannelFutureListener$1;

    invoke-direct {v0}, Lorg/jboss/netty/channel/ChannelFutureListener$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    new-instance v0, Lorg/jboss/netty/channel/ChannelFutureListener$2;

    invoke-direct {v0}, Lorg/jboss/netty/channel/ChannelFutureListener$2;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    return-void
.end method


# virtual methods
.method public abstract operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
