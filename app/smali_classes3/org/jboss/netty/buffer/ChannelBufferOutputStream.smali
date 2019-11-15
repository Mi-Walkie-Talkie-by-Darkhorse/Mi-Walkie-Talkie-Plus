.class public Lorg/jboss/netty/buffer/ChannelBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelBufferOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final startIndex:I

.field private final utf8out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->utf8out:Ljava/io/DataOutputStream;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->startIndex:I

    return-void
.end method


# virtual methods
.method public buffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->write(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->write(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeShort(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeChar(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    int-to-short v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->utf8out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public writtenBytes()I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method
