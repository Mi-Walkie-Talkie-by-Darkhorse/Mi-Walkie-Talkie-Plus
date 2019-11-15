.class public interface abstract Lorg/jboss/netty/channel/ChannelFactory;
.super Ljava/lang/Object;
.source "ChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# virtual methods
.method public abstract newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
.end method

.method public abstract releaseExternalResources()V
.end method

.method public abstract shutdown()V
.end method
