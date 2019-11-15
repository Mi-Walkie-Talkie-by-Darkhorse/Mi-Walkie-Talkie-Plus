.class public Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "HttpTunnelingServlet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENDPOINT:Ljava/lang/String; = "endpoint"

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final serialVersionUID:J = 0x3b1e3dd3720a8e26L


# instance fields
.field private volatile channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private volatile remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->$assertionsDisabled:Z

    const-class v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private static read(Ljava/io/PushbackInputStream;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v0

    :goto_0
    sget-boolean v2, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v2

    if-gez v2, :cond_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {p0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_3
    array-length v2, v1

    if-ne v0, v2, :cond_4

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected createChannelFactory(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, Lorg/jboss/netty/channel/local/LocalAddress;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;

    invoke-direct {v0}, Lorg/jboss/netty/channel/local/DefaultLocalClientChannelFactory;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported remote address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->destroyChannelFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to destroy a channel factory."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected destroyChannelFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFactory;->releaseExternalResources()V

    return-void
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    const-string v1, "endpoint"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/servlet/ServletException;

    const-string v1, "init-param \'endpoint\' must be specified."

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->parseEndpoint(Ljava/lang/String;)Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->createChannelFactory(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/servlet/ServletException;

    const-string v2, "Failed to parse an endpoint."

    invoke-direct {v1, v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Ljavax/servlet/ServletException;

    const-string v2, "Failed to create a channel factory."

    invoke-direct {v1, v2, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseEndpoint(Ljava/lang/String;)Ljava/net/SocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "local:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/channel/local/LocalAddress;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljavax/servlet/ServletException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "POST"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unallowed method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v2

    new-instance v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;

    invoke-direct {v1, v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet$OutboundConnectionHandler;-><init>(Ljavax/servlet/ServletOutputStream;)V

    const-string v3, "handler"

    invoke-interface {v0, v3, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->remoteAddress:Ljava/net/SocketAddress;

    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/Channel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Endpoint unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/16 v0, 0x1f7

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/16 v0, 0xc8

    :try_start_0
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string v0, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-interface {p2, v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    const-string v4, "binary"

    invoke-interface {p2, v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/servlet/ServletOutputStream;->flush()V

    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_1
    invoke-static {v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingServlet;->read(Ljava/io/PushbackInputStream;)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    :goto_2
    if-nez v1, :cond_7

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v3, v2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez v1, :cond_6

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    :goto_3
    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    sget-object v2, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_3

    :cond_7
    sget-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto/16 :goto_0
.end method
