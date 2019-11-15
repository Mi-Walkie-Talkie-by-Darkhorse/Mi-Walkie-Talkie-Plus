.class public Lorg/jboss/netty/handler/codec/socks/SocksMessageEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "SocksMessageEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final DEFAULT_ENCODER_BUFFER_SIZE:I = 0x400

.field private static final name:Ljava/lang/String; = "SOCKS_MESSAGE_ENCODER"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SOCKS_MESSAGE_ENCODER"

    return-object v0
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p3, Lorg/jboss/netty/handler/codec/socks/SocksMessage;

    if-eqz v1, :cond_0

    const/16 v0, 0x400

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    check-cast p3, Lorg/jboss/netty/handler/codec/socks/SocksMessage;

    invoke-virtual {p3, v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage;->encodeAsByteBuf(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :cond_0
    return-object v0
.end method
