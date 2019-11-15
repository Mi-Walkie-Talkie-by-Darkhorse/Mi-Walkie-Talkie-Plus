.class public Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneStrictEncoder;
.source "JdkZlibEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$2;
    }
.end annotation


# static fields
.field private static final gzipHeader:[B


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final gzip:Z

.field private final out:[B

.field private writeHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneStrictEncoder;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dictionary"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneStrictEncoder;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wrapper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrapper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB_OR_NONE:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "allowed for compression."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    if-ne p1, v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    new-instance v0, Ljava/util/zip/Deflater;

    sget-object v3, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    if-eq p1, v3, :cond_5

    :goto_1
    invoke-direct {v0, p2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(I[B)V

    return-void
.end method

.method private finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 7

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    :goto_1
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v4

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v5, v3, 0x8

    invoke-interface {v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v5, v3, 0x10

    invoke-interface {v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v3, v3, 0x18

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v3, v4, 0x8

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v3, v4, 0x10

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v3, v4, 0x18

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    :cond_3
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_0

    new-instance v1, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$1;-><init>(Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public close()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    array-length v1, v0

    int-to-double v2, v1

    const-wide v4, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0xc

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzip:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    if-eqz v2, :cond_2

    sget-object v2, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->gzipHeader:[B

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->writeHeader:Z

    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    array-length v4, v4

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->out:[B

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/oneone/OneToOneStrictEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finishEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
