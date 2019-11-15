.class public Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "LengthFieldPrepender.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final lengthFieldLength:I

.field private final lengthIncludesLengthFieldLength:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldLength must be either 1, 2, 3, 4, or 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthIncludesLengthFieldLength:Z

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthIncludesLengthFieldLength:Z

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    add-int/2addr v0, v2

    :goto_1
    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldPrepender;->lengthFieldLength:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x100

    if-lt v0, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length does not fit into a byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    int-to-byte v0, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto :goto_0

    :pswitch_2
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length does not fit into a short integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    int-to-short v0, v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    goto :goto_2

    :pswitch_3
    const/high16 v2, 0x1000000

    if-lt v0, v2, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length does not fit into a medium integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    goto :goto_2

    :pswitch_4
    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    goto :goto_2

    :pswitch_5
    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
