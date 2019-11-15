.class final Lorg/jboss/netty/channel/Channels$1;
.super Ljava/lang/Object;
.source "Channels.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/Channels;->pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pipeline:Lorg/jboss/netty/channel/ChannelPipeline;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelPipeline;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/Channels$1;->val$pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/Channels$1;->val$pipeline:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->pipeline(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method
