.class Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
.super Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
.source "OioAcceptedSocketChannel.java"


# instance fields
.field private final in:Ljava/io/PushbackInputStream;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Ljava/net/Socket;)V

    :try_start_0
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;->in:Ljava/io/PushbackInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;->out:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to obtain an InputStream."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to obtain an OutputStream."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getInputStream()Ljava/io/PushbackInputStream;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;->in:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;->out:Ljava/io/OutputStream;

    return-object v0
.end method
