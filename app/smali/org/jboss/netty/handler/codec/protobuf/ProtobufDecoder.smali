.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "ProtobufDecoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final HAS_PARSER:Z


# instance fields
.field private final extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

.field private final prototype:Lcom/google/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/protobuf/MessageLite;

    const-string v2, "getParserForType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->HAS_PARSER:Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;-><init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_0

    :goto_0
    return-object p3

    :cond_0
    check-cast p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    add-int/2addr v0, v3

    :goto_1
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    if-nez v3, :cond_3

    sget-boolean v3, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->HAS_PARSER:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/google/protobuf/Parser;->parseFrom([BII)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_1
    new-array v1, v2, [B

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {p3, v3, v1, v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0

    :cond_3
    sget-boolean v3, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->HAS_PARSER:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {v3, v1, v0, v2, v4}, Lcom/google/protobuf/Parser;->parseFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/protobuf/ProtobufDecoder;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistry;

    invoke-interface {v3, v1, v0, v2, v4}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p3

    goto :goto_0
.end method
