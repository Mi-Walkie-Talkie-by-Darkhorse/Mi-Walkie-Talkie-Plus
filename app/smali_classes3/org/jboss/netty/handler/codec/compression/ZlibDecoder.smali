.class public Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "ZlibDecoder.java"


# instance fields
.field private dictionary:[B

.field private volatile finished:Z

.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 4

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wrapper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->convertWrapperType(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;)Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "initialization failure"

    invoke-static {v2, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dictionary"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v2, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v0, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v3, "initialization failure"

    invoke-static {v2, v3, v0}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    monitor-enter v1

    :try_start_0
    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v2, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v4, 0x0

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v4, v2

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    array-length v4, v2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v2, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v4, 0x0

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v4, v2

    iput v4, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflate(I)I

    move-result v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v4, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-lez v4, :cond_3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v5, v5, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {p3, v2, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v5, v2

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_3
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v5, 0x0

    iput v5, v4, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v5, "decompression failure"

    invoke-static {v4, v5, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v5, "decompression failure"

    invoke-static {v4, v5, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->dictionary:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v5}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateSetDictionary([BI)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const-string v5, "failed to set the dictionary"

    invoke-static {v4, v5, v3}, Lorg/jboss/netty/handler/codec/compression/ZlibUtil;->fail(Lorg/jboss/netty/util/internal/jzlib/ZStream;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateEnd()I

    :goto_2
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :pswitch_4
    :try_start_4
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gtz v3, :cond_2

    goto :goto_2

    :cond_5
    :try_start_5
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p3, v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/compression/ZlibDecoder;->finished:Z

    return v0
.end method
