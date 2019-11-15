.class final Lorg/jboss/netty/channel/Channels$7;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cause:Ljava/lang/Throwable;

.field final synthetic val$channel:Lorg/jboss/netty/channel/Channel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/Channels$7;->val$channel:Lorg/jboss/netty/channel/Channel;

    iput-object p2, p0, Lorg/jboss/netty/channel/Channels$7;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/Channels$7;->val$channel:Lorg/jboss/netty/channel/Channel;

    iget-object v1, p0, Lorg/jboss/netty/channel/Channels$7;->val$cause:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method
