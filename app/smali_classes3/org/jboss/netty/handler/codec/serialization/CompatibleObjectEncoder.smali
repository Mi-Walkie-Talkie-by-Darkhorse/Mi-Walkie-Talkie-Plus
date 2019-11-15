.class public Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "CompatibleObjectEncoder.java"


# instance fields
.field private final buffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile oout:Ljava/io/ObjectOutputStream;

.field private final resetInterval:I

.field private writtenObjects:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->buffer:Ljava/util/concurrent/atomic/AtomicReference;

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->resetInterval:I

    return-void
.end method

.method private buffer(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->buffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->buffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    invoke-direct {v1, v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->newObjectOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->oout:Ljava/io/ObjectOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->oout:Ljava/io/ObjectOutputStream;

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->buffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->buffer(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->oout:Ljava/io/ObjectOutputStream;

    iget v2, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->resetInterval:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->writtenObjects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->writtenObjects:I

    iget v2, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->writtenObjects:I

    iget v3, p0, Lorg/jboss/netty/handler/codec/serialization/CompatibleObjectEncoder;->resetInterval:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    :cond_0
    invoke-virtual {v1, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected newObjectOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
