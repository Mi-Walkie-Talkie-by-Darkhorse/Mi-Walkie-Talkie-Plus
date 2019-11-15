.class public Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;
.super Ljava/lang/Object;
.source "HttpPostRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    }
.end annotation


# instance fields
.field private final bodyListHttpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation
.end field

.field private bodyListHttpDataRank:I

.field private final bodyMapHttpData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;>;"
        }
    .end annotation
.end field

.field private bodyToDecode:Z

.field private final charset:Ljava/nio/charset/Charset;

.field private currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

.field private currentFieldAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/handler/codec/http/multipart/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

.field private currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

.field private final factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

.field private isLastChunk:Z

.field private isMultipart:Z

.field private multipartDataBoundary:Ljava/lang/String;

.field private multipartMixedBoundary:Ljava/lang/String;

.field private final request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

.field private undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;-><init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lorg/jboss/netty/util/internal/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/util/internal/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

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
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->POST:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->PUT:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMethod;->PATCH:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyToDecode:Z

    :cond_4
    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->checkMultipart(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyToDecode:Z

    if-nez v0, :cond_6

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;

    const-string v1, "No Body to decode"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$IncompatibleDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->isChunked()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBody()V

    :cond_7
    return-void
.end method

.method private addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkMultipart(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->splitHeaderContentType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/form-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v0, v0, v3

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Needs a boundary value"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    goto :goto_0
.end method

.method private cleanMixedAttributes()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad string: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Should not be called with the current status"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Should not be called with the current status"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDelimiter(Ljava/lang/String;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v2

    :goto_0
    :pswitch_3
    return-object v2

    :pswitch_4
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDisposition()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->loadFieldMultipart(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_2 .. :try_end_2} :catch_4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_6
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartDataBoundary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->getFileUpload(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v2

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDelimiter(Ljava/lang/String;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v2

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->findMultipartDisposition()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->getFileUpload(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v2

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private findMultipartDelimiter(Ljava/lang/String;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipControlCharacters()V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipOneLine()Z

    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readDelimiter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "No Multipart delimiter found"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findMultipartDisposition()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/4 v3, 0x2

    const/16 v11, 0x3d

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    sget-object v4, Lorg/jboss/netty/util/internal/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/util/internal/CaseIgnoringComparator;

    invoke-direct {v0, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipOneLine()Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipControlCharacters()V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->splitMultipartHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v1

    const-string v7, "Content-Disposition"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v4, :cond_1

    aget-object v0, v6, v2

    const-string v4, "form-data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    move v0, v3

    :goto_2
    array-length v4, v6

    if-ge v0, v4, :cond_0

    aget-object v4, v6, v0

    invoke-static {v4, v11}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v4, v7

    invoke-static {v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v4, v4, v8

    const-string v8, "filename"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_3
    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v9, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v8, v9, v7, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_1
    aget-object v0, v6, v2

    const-string v4, "attachment"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, v6, v2

    const-string v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    aget-object v4, v6, v1

    const-string v7, "Content-Transfer-Encoding"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v7, "Content-Transfer-Encoding"

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v7, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v6, "Content-Transfer-Encoding"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    aget-object v4, v6, v1

    const-string v7, "Content-Length"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :try_start_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v7, "Content-Length"

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v7, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v6, "Content-Length"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_5
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    aget-object v4, v6, v1

    const-string v7, "Content-Type"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    aget-object v0, v6, v2

    const-string v4, "multipart/mixed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_8

    aget-object v0, v6, v3

    invoke-static {v0, v11}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->multipartMixedBoundary:Ljava/lang/String;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Mixed Multipart found in a previous Mixed Multipart"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v2

    :goto_5
    array-length v4, v6

    if-ge v0, v4, :cond_0

    aget-object v4, v6, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "charset"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    aget-object v4, v6, v0

    invoke-static {v4, v11}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    :try_start_5
    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const-string v9, "charset"

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-static {v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v8, v9, v4}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v4

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v8, "charset"

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_7
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :try_start_6
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v0

    invoke-interface {v4, v7, v8, v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_a

    move-result-object v4

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catch_9
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v2, :cond_e

    if-eqz v0, :cond_d

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    if-eqz v0, :cond_f

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDFILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDFILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Filename not found"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFileUpload(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT7:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    if-eqz v0, :cond_9

    :try_start_0
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT7:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->US_ASCII:Ljava/nio/charset/Charset;

    move-object v6, v1

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v2, "charset"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_8

    :try_start_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v5, :cond_3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Content-Type is absent but required"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT8:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BIT8:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    move-object v6, v0

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->BINARY:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;

    move-object v6, v0

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransferEncoding Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-wide v8

    :cond_4
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v9}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_5
    :try_start_4
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readFileUploadByteMultipart(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException; {:try_start_4 .. :try_end_4} :catch_6

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FILEUPLOAD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->HEADERDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFieldAttributes:Ljava/util/Map;

    :goto_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    iput-object v10, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    :goto_4
    return-object v0

    :catch_2
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    move-object v0, v10

    goto :goto_4

    :cond_6
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->MIXEDDELIMITER:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->cleanMixedAttributes()V

    goto :goto_3

    :cond_7
    move-object v0, v10

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_2

    :cond_8
    move-object v7, v1

    goto/16 :goto_1

    :cond_9
    move-object v6, v1

    move-object v1, v2

    goto/16 :goto_0
.end method

.method private loadFieldMultipart(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    :try_start_1
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v1, v2

    move v3, v4

    :cond_0
    :goto_0
    iget v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v7, v8, :cond_9

    iget-object v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v7, v7, v8

    if-eqz v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_0

    :goto_1
    invoke-virtual {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->getReadPosition(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v4, :cond_7

    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v3, v0, v6

    invoke-interface {v2, v6, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->loadFieldMultipartStandard(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-ne v7, v11, :cond_2

    :try_start_4
    iget v1, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v1, v3, :cond_8

    iget-object v1, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v3, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v7, v3, 0x1

    iput v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v1, v1, v3

    if-ne v1, v10, :cond_8

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_2
    if-ne v7, v10, :cond_3

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_3
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_4
    if-ne v7, v11, :cond_5

    iget v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v7, v8, :cond_0

    iget-object v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_0

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_5
    if-ne v7, v10, :cond_6

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_6
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_5
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v3, v0, v6

    invoke-interface {v2, v6, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    move v1, v2

    move v3, v2

    goto/16 :goto_0

    :cond_9
    move v4, v2

    goto/16 :goto_1
.end method

.method private loadFieldMultipartStandard(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    move v1, v2

    move v3, v4

    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    if-eqz v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-ne v6, v1, :cond_0

    :goto_1
    if-eqz v4, :cond_7

    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v3, v0, v5

    invoke-interface {v2, v5, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void

    :cond_1
    if-ne v6, v9, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    if-ne v1, v8, :cond_8

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_2
    if-ne v6, v8, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_4
    if-ne v6, v9, :cond_5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    if-ne v6, v8, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_5
    if-ne v6, v8, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_3
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v3, v0, v5

    invoke-interface {v2, v5, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    move v1, v2

    move v3, v2

    goto/16 :goto_0

    :cond_9
    move v4, v2

    goto/16 :goto_1
.end method

.method private parseBody()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBodyMultipart()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBodyAttributes()V

    goto :goto_0
.end method

.method private parseBodyAttributes()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/16 v9, 0x26

    const/16 v8, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v4, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v1, v5, :cond_0

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    :try_start_1
    iget v5, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v6, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v5, v6, :cond_c

    iget-object v5, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v6, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    move v10, v2

    move v2, v0

    move v0, v10

    :goto_1
    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v3, :cond_a

    if-le v2, v1, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v3, v2, v1

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_1
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    :try_start_2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    :try_end_2
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBodyAttributesStandard()V

    goto :goto_3

    :pswitch_0
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4

    :try_start_3
    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v5, v0, -0x1

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v5, v1

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v6, v1, v5, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move v1, v0

    goto :goto_0

    :cond_4
    if-ne v5, v9, :cond_1

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v5, v0, -0x1

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v5, v1

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v6, v1, v5, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const-string v6, ""

    invoke-interface {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move v1, v0

    goto/16 :goto_0

    :pswitch_1
    if-ne v5, v9, :cond_5

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v5, v0, -0x1

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v5, v1

    invoke-interface {v6, v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move v1, v0

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0xd

    if-ne v5, v6, :cond_8

    iget v5, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v6, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v5, v6, :cond_7

    iget-object v3, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v5, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    add-int/lit8 v0, v0, 0x1

    if-ne v3, v8, :cond_6

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v3, v1

    invoke-interface {v4, v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move v1, v0

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v2, "Bad end of line"

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v0

    :goto_4
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    throw v0

    :cond_7
    :try_start_4
    iget v5, v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-lez v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_8
    if-ne v5, v8, :cond_1

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v3, v1

    invoke-interface {v4, v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move v1, v0

    move v10, v0

    move v0, v2

    move v2, v10

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_4
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :goto_5
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    if-eqz v0, :cond_3

    :try_start_5
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v4, v2, v1

    invoke-interface {v3, v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    move v1, v2

    :cond_b
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_5
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move v1, v2

    goto :goto_5

    :catch_4
    move-exception v0

    move v1, v2

    goto :goto_4

    :cond_c
    move v2, v0

    move v0, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseBodyAttributesStandard()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/16 v9, 0x26

    const/16 v8, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v4, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->NOTSTARTED:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v4, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    :cond_0
    move v0, v1

    move v4, v3

    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v5

    int-to-char v5, v5

    add-int/lit8 v3, v3, 0x1

    sget-object v6, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$multipart$HttpPostRequestDecoder$MultiPartStatus:[I

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-virtual {v7}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_2

    sget-object v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v5, v3, -0x1

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v5, v4

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v6, v4, v5, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v6, v7, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v5

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move v4, v3

    goto :goto_0

    :cond_2
    if-ne v5, v9, :cond_1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v0, v3, -0x1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v0, v4

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v5, v4, v0, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const-string v5, ""

    invoke-interface {v0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    move v0, v1

    move v4, v3

    goto :goto_0

    :pswitch_1
    if-ne v5, v9, :cond_3

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->DISPOSITION:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v0, v3, -0x1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v0, v4

    invoke-interface {v5, v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move v0, v1

    move v4, v3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    int-to-char v5, v0

    add-int/lit8 v0, v3, 0x1

    if-ne v5, v8, :cond_4

    sget-object v3, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v3, v0, -0x2

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v3, v4

    invoke-interface {v5, v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move v3, v0

    move v4, v0

    move v0, v2

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v1, "Bad end of line"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    throw v0

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_6
    if-ne v5, v8, :cond_1

    :try_start_1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    add-int/lit8 v0, v3, -0x1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int/2addr v0, v4

    invoke-interface {v5, v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move v0, v2

    move v4, v3

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v1, :cond_b

    if-le v3, v4, :cond_a

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v1, v3, v4

    invoke-interface {v0, v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_1
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_2
    :try_start_2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    :try_end_2
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    :goto_3
    return-void

    :cond_a
    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_3
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->FIELD:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v2, v3, v4

    invoke-interface {v1, v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    move v4, v3

    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_4
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_2
    move-exception v0

    move v4, v3

    goto :goto_4

    :catch_3
    move-exception v0

    move v4, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseBodyMultipart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->PREEPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeMultipart(Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    goto :goto_0
.end method

.method private readDelimiter(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    const/16 v10, 0xd

    const/16 v9, 0x2d

    const/16 v8, 0xa

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v6, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v5, v6, :cond_1

    if-ge v0, v3, :cond_1

    iget-object v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v6, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v5, v5, v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readDelimiterStandard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_1
    iget v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v0, v3, :cond_9

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v3

    if-ne v0, v10, :cond_3

    iget v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v0, v3, :cond_2

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v3

    if-ne v0, v8, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_3
    if-ne v0, v8, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne v0, v9, :cond_9

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v0, v3, :cond_9

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v3

    if-ne v0, v9, :cond_9

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v0, v3, :cond_8

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v3

    if-ne v0, v10, :cond_6

    iget v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v0, v3, :cond_5

    iget-object v0, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v3, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v3

    if-ne v0, v8, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_6
    if-ne v0, v8, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method private readDelimiterStandard(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    const/16 v8, 0xd

    const/16 v7, 0x2d

    const/16 v6, 0xa

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_3
    if-ne v0, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_9

    const/16 v0, 0x2d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v7, :cond_9

    const/16 v0, 0x2d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_6
    if-ne v0, v6, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method private readFileUploadByteMultipart(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v1, v2

    move v3, v4

    :cond_0
    :goto_0
    iget v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v7, v8, :cond_b

    iget-object v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v7, v7, v8

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v1, :cond_0

    :goto_1
    invoke-virtual {v5, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->getReadPosition(I)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v2, v0, v6

    invoke-interface {v1, v6, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v4, :cond_9

    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readFileUploadByteMultipartStandard(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-ne v7, v11, :cond_3

    iget v1, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v3, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v1, v3, :cond_a

    iget-object v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v1, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v1

    if-ne v0, v10, :cond_2

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_2
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_3
    if-ne v7, v10, :cond_4

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_4
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_5
    if-ne v7, v11, :cond_7

    iget v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v7, v8, :cond_0

    iget-object v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v7, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v0, v0, v7

    if-ne v0, v10, :cond_6

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_6
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto/16 :goto_0

    :cond_7
    if-ne v7, v10, :cond_8

    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_8
    iget v0, v5, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :try_start_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move v1, v2

    move v3, v2

    goto/16 :goto_0

    :cond_b
    move v4, v2

    goto/16 :goto_1
.end method

.method private readFileUploadByteMultipartStandard(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    move v1, v2

    move v3, v4

    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v1, :cond_0

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    sub-int v2, v0, v5

    invoke-interface {v1, v5, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v4, :cond_9

    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    if-ne v6, v9, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_3
    if-ne v6, v8, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_5
    if-ne v6, v9, :cond_7

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto/16 :goto_0

    :cond_7
    if-ne v6, v8, :cond_8

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v4

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentFileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move v1, v2

    move v3, v2

    goto/16 :goto_0

    :cond_b
    move v4, v2

    goto/16 :goto_1
.end method

.method private readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    const/16 v6, 0xa

    :try_start_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    const/16 v2, 0x40

    :try_start_1
    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    :cond_0
    :goto_0
    iget v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v3, v4, :cond_4

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v4, v5, :cond_1

    iget-object v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v4, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v3, v3, v4

    if-ne v3, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->readLineStandard()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    if-ne v3, v6, :cond_3

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method private readLineStandard()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    const/16 v4, 0xa

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    const/16 v0, 0x40

    :try_start_0
    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0
.end method

.method private setFinalBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decodeAttribute(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->addHttpData(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentAttribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    return-void
.end method

.method private skipOneLine()Z
    .locals 5

    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0
.end method

.method private static splitHeaderContentType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v5}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findWhitespace(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v1, :cond_0

    new-array v0, v7, [Ljava/lang/String;

    aput-object p0, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v4

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    move-object v0, v1

    goto :goto_0
.end method

.method private static splitMultipartHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/16 v7, 0x3b

    const/16 v6, 0x3a

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v3}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-static {p0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-static {v0, v7}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    array-length v2, v0

    move v1, v3

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v1, v3

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    return-object v2
.end method


# virtual methods
.method public cleanFiles()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V

    return-void
.end method

.method public getBodyHttpData(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyHttpDatas()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    return-object v0
.end method

.method public getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyMapHttpData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->currentStatus:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;->EPILOGUE:Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultipart()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart:Z

    return v0
.end method

.method public next()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpData:Ljava/util/List;

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->bodyListHttpDataRank:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Lorg/jboss/netty/handler/codec/http/HttpChunk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_1

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isLastChunk:Z

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->parseBody()V

    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v3, v1, v2

    aput-object v0, v1, v4

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method

.method public removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->factory:Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->request:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;->removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    return-void
.end method

.method skipControlCharacters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iget v2, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    if-ge v1, v2, :cond_1

    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    iget v2, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->setReadPosition(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->skipControlCharactersStandard()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;

    const-string v1, "Access out of bounds"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method skipControlCharactersStandard()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->undecodedChunk:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method
