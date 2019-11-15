.class public Lcom/ifengyu/im/protobuf/base/DataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"


# static fields
.field private static logger:Lcom/ifengyu/im/utils/Logger;


# instance fields
.field public buffer:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getOrignalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .locals 2

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    return-object v0
.end method

.method public readChar()C
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readChar()C

    move-result v0

    return v0
.end method

.method public readDataBuffer()Lcom/ifengyu/im/protobuf/base/DataBuffer;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    invoke-direct {v0, v2}, Lcom/ifengyu/im/protobuf/base/DataBuffer;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readInt()I

    move-result v1

    new-instance v0, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    invoke-direct {v0, v2}, Lcom/ifengyu/im/protobuf/base/DataBuffer;-><init>(I)V

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->setOrignalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readIntArray()[I
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readInt()I

    move-result v1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public readLong()J
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readBytes(I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readBytes(I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public readableBytes()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public resetReaderIndex()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    return-void
.end method

.method public resetWriterIndex()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetWriterIndex()V

    return-void
.end method

.method public setOrignalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    return-void
.end method

.method public writeBytes([B)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    return-void
.end method

.method public writeChar(C)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeChar(I)V

    return-void
.end method

.method public writeDataBuffer(Lcom/ifengyu/im/protobuf/base/DataBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v1, p1, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeDouble(D)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    return-void
.end method

.method public writeIntArray([I)V
    .locals 3

    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    return-void
.end method

.method public writeShort(S)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    return-void
.end method

.method public writeSourceBytes([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/base/DataBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    return-void
.end method
