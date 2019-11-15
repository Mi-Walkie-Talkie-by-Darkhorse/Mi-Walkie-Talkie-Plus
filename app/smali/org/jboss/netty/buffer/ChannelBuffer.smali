.class public interface abstract Lorg/jboss/netty/buffer/ChannelBuffer;
.super Ljava/lang/Object;
.source "ChannelBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/buffer/ChannelBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract array()[B
.end method

.method public abstract arrayOffset()I
.end method

.method public abstract bytesBefore(B)I
.end method

.method public abstract bytesBefore(IB)I
.end method

.method public abstract bytesBefore(IIB)I
.end method

.method public abstract bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
.end method

.method public abstract bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
.end method

.method public abstract bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
.end method

.method public abstract capacity()I
.end method

.method public abstract clear()V
.end method

.method public abstract compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
.end method

.method public abstract copy()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract discardReadBytes()V
.end method

.method public abstract duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract ensureWritableBytes(I)V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
.end method

.method public abstract getByte(I)B
.end method

.method public abstract getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(ILjava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(ILjava/nio/ByteBuffer;)V
.end method

.method public abstract getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
.end method

.method public abstract getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
.end method

.method public abstract getBytes(I[B)V
.end method

.method public abstract getBytes(I[BII)V
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getMedium(I)I
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getUnsignedByte(I)S
.end method

.method public abstract getUnsignedInt(I)J
.end method

.method public abstract getUnsignedMedium(I)I
.end method

.method public abstract getUnsignedShort(I)I
.end method

.method public abstract hasArray()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract indexOf(IIB)I
.end method

.method public abstract indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
.end method

.method public abstract isDirect()Z
.end method

.method public abstract markReaderIndex()V
.end method

.method public abstract markWriterIndex()V
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract readByte()B
.end method

.method public abstract readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readBytes(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
.end method

.method public abstract readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
.end method

.method public abstract readBytes([B)V
.end method

.method public abstract readBytes([BII)V
.end method

.method public abstract readChar()C
.end method

.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readMedium()I
.end method

.method public abstract readShort()S
.end method

.method public abstract readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readUnsignedByte()S
.end method

.method public abstract readUnsignedInt()J
.end method

.method public abstract readUnsignedMedium()I
.end method

.method public abstract readUnsignedShort()I
.end method

.method public abstract readable()Z
.end method

.method public abstract readableBytes()I
.end method

.method public abstract readerIndex()I
.end method

.method public abstract readerIndex(I)V
.end method

.method public abstract resetReaderIndex()V
.end method

.method public abstract resetWriterIndex()V
.end method

.method public abstract setByte(II)V
.end method

.method public abstract setBytes(ILjava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setBytes(ILjava/nio/ByteBuffer;)V
.end method

.method public abstract setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
.end method

.method public abstract setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
.end method

.method public abstract setBytes(I[B)V
.end method

.method public abstract setBytes(I[BII)V
.end method

.method public abstract setChar(II)V
.end method

.method public abstract setDouble(ID)V
.end method

.method public abstract setFloat(IF)V
.end method

.method public abstract setIndex(II)V
.end method

.method public abstract setInt(II)V
.end method

.method public abstract setLong(IJ)V
.end method

.method public abstract setMedium(II)V
.end method

.method public abstract setShort(II)V
.end method

.method public abstract setZero(II)V
.end method

.method public abstract skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract skipBytes(I)V
.end method

.method public abstract slice()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract toByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract toByteBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract toByteBuffers()[Ljava/nio/ByteBuffer;
.end method

.method public abstract toByteBuffers(II)[Ljava/nio/ByteBuffer;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toString(IILjava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract toString(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract writable()Z
.end method

.method public abstract writableBytes()I
.end method

.method public abstract writeByte(I)V
.end method

.method public abstract writeBytes(Ljava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
.end method

.method public abstract writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
.end method

.method public abstract writeBytes([B)V
.end method

.method public abstract writeBytes([BII)V
.end method

.method public abstract writeChar(I)V
.end method

.method public abstract writeDouble(D)V
.end method

.method public abstract writeFloat(F)V
.end method

.method public abstract writeInt(I)V
.end method

.method public abstract writeLong(J)V
.end method

.method public abstract writeMedium(I)V
.end method

.method public abstract writeShort(I)V
.end method

.method public abstract writeZero(I)V
.end method

.method public abstract writerIndex()I
.end method

.method public abstract writerIndex(I)V
.end method
