.class public Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;
.super Ljava/lang/Object;
.source "HttpPostRequestEncoder.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;
    }
.end annotation


# static fields
.field private static final percentEncodings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bodyListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private final charset:Ljava/nio/charset/Charset;

.field private currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

.field private currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

.field private duringMixedMode:Z

.field private final encoderMode:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

.field private final factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

.field private globalBodySize:J

.field private headerFinalized:Z

.field private isChunked:Z

.field private isKey:Z

.field private isLastChunk:Z

.field private isLastChunkSent:Z

.field private final isMultipart:Z

.field private iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private multipartDataBoundary:Ljava/lang/String;

.field private final multipartHttpDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private multipartMixedBoundary:Ljava/lang/String;

.field private final request:Lorg/jboss/netty/handler/codec/http/HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:Ljava/util/Map;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:Ljava/util/Map;

    const-string v1, "\\*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "%2A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:Ljava/util/Map;

    const-string v1, "\\+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "%20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:Ljava/util/Map;

    const-string v1, "%7E"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpRequest;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC1738:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;ZLjava/nio/charset/Charset;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    if-eq v0, v1, :cond_3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Cannot create a Encoder if not a POST"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    iput-object p4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iput-object p5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encoderMode:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->initDataMultipart()V

    :cond_4
    return-void
.end method

.method private encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    if-nez p1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encoderMode:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC3986:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->percentEncodings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private encodeNextChunkMultipart(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->toChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_4

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/16 v2, 0x1fa0

    if-ge v0, v2, :cond_5

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method private encodeNextChunkUrlEncoded(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const/16 v8, 0x1fa0

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_2

    new-array v2, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v0, v2, v6

    const-string v3, "="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    :goto_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    if-lt v2, v8, :cond_3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v3, v2, v6

    aput-object v0, v2, v5

    const-string v3, "="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    goto :goto_1

    :cond_3
    move p1, v0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpData;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_d

    iput-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "&"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_2
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_8

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_7

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-lt v0, v8, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_5

    new-array v2, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v3, v2, v6

    aput-object v0, v2, v5

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    new-array v3, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v2, v3, v6

    aput-object v0, v3, v5

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v8, :cond_c

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    iput-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isKey:Z

    goto/16 :goto_0

    :cond_9
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v4, v3, v6

    aput-object v2, v3, v5

    aput-object v0, v3, v7

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_4

    :cond_b
    new-array v0, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v3, v0, v6

    aput-object v2, v0, v5

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    const/16 v2, 0x1fa0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method

.method private static getNewMultipartDelimiter()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDataMultipart()V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->getNewMultipartDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    return-void
.end method

.method private initMixedMultipart()V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->getNewMultipartDelimiter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBodyAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    return-void
.end method

.method public addBodyFileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_4

    if-eqz p4, :cond_2

    const-string v5, "text/plain"

    :goto_0
    if-nez p4, :cond_3

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v3, p1

    invoke-interface/range {v1 .. v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    return-void

    :cond_2
    const-string v5, "application/octet-stream"

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v6, v7

    goto :goto_1

    :cond_4
    move-object v5, p3

    goto :goto_0
.end method

.method public addBodyFileUploads(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Different array length"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    aget-object v2, p3, v0

    aget-boolean v3, p4, v0

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyFileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Cannot add value once finalized"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v2, v3, v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    add-long/2addr v0, v4

    add-long/2addr v0, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v2, v3, v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    add-long/2addr v0, v4

    add-long/2addr v0, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v0, :cond_5

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\n--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    :cond_5
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: text/plain; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    :cond_7
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    new-instance v3, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    :cond_9
    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    move-object v2, v3

    :goto_1
    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: file; filename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\nContent-Transfer-Encoding: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->initMixedMultipart()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Content-Type: multipart/mixed; boundary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Content-Disposition: file; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->setValue(Ljava/lang/String;I)V

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    move v1, v2

    move-object v2, v3

    goto/16 :goto_1

    :cond_c
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    move-object v2, v3

    goto/16 :goto_1

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "filename"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; charset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const-string v1, "\r\n\r\n"

    invoke-virtual {v2, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public cleanFiles()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public finalizeRequest()Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;-><init>(Ljava/nio/charset/Charset;)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->addValue(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartMixedBoundary:Ljava/lang/String;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    :cond_1
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->headerFinalized:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v2, "Transfer-Encoding"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v3, "Content-Type"

    invoke-interface {v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->removeHeader(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "multipart/form-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v4, "Content-Type"

    invoke-interface {v3, v4, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;

    const-string v1, "Header already encoded"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v3, "Content-Type"

    invoke-interface {v1, v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    :goto_2
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v4, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v4, 0x1fa0    # 4.0E-320

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_a

    :cond_5
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isChunked:Z

    if-eqz v2, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v1, "Transfer-Encoding"

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->removeHeader(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "chunked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v3, "Transfer-Encoding"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :goto_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->nextChunk()Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_4
.end method

.method public getBodyListAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    return-object v0
.end method

.method public hasNextChunk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isChunked:Z

    return v0
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    return v0
.end method

.method public isMultipart()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    return v0
.end method

.method public bridge synthetic nextChunk()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->nextChunk()Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    return-object v0
.end method

.method public nextChunk()Lorg/jboss/netty/handler/codec/http/HttpChunk;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x1fa0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    if-gtz v0, :cond_3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->fillChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkMultipart(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    rsub-int v0, v0, 0x1fa0

    :cond_5
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkUrlEncoded(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :goto_1
    if-lez v1, :cond_8

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentData:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isMultipart:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkMultipart(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    rsub-int v0, v0, 0x1fa0

    move v1, v0

    goto :goto_1

    :cond_7
    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->encodeNextChunkUrlEncoded(I)Lorg/jboss/netty/handler/codec/http/HttpChunk;

    move-result-object v0

    goto :goto_2

    :cond_8
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunk:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_9

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->isLastChunkSent:Z

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto :goto_1
.end method

.method public setBodyHttpDatas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder$ErrorDataEncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "datas"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->globalBodySize:J

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->bodyListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->duringMixedMode:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->multipartHttpDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestEncoder;->addBodyHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    goto :goto_0

    :cond_1
    return-void
.end method
