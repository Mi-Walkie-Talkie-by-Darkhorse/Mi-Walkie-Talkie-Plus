.class final Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;
.super Ljava/lang/Object;
.source "EmbeddedChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFactory;


# static fields
.field static final INSTANCE:Lorg/jboss/netty/channel/ChannelFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;->INSTANCE:Lorg/jboss/netty/channel/ChannelFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public releaseExternalResources()V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
