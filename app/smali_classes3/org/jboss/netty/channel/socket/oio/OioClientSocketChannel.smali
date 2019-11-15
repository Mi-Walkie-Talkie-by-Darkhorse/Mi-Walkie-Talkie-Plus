.class Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
.super Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
.source "OioClientSocketChannel.java"


# instance fields
.field volatile in:Ljava/io/PushbackInputStream;

.field volatile out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method getInputStream()Ljava/io/PushbackInputStream;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->in:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->out:Ljava/io/OutputStream;

    return-object v0
.end method
