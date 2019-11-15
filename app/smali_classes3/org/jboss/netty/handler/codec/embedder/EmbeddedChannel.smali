.class Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;
.super Lorg/jboss/netty/channel/AbstractChannel;
.source "EmbeddedChannel.java"


# static fields
.field private static final DUMMY_ID:Ljava/lang/Integer;


# instance fields
.field private final config:Lorg/jboss/netty/channel/ChannelConfig;

.field private final localAddress:Ljava/net/SocketAddress;

.field private final remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->DUMMY_ID:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 6

    sget-object v1, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->DUMMY_ID:Ljava/lang/Integer;

    const/4 v2, 0x0

    sget-object v3, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannelFactory;->INSTANCE:Lorg/jboss/netty/channel/ChannelFactory;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/AbstractChannel;-><init>(Ljava/lang/Integer;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->localAddress:Ljava/net/SocketAddress;

    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/embedder/EmbeddedSocketAddress;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->remoteAddress:Ljava/net/SocketAddress;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelConfig;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->config:Lorg/jboss/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/embedder/EmbeddedChannel;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
