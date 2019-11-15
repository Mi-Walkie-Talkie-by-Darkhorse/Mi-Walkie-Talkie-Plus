.class public Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;
.super Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;
.source "HttpContentCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpContentCompressor$1;
    }
.end annotation


# instance fields
.field private final compressionLevel:I

.field private final memLevel:I

.field private final windowBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/16 v1, 0x9

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

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
    if-lt p2, v1, :cond_2

    const/16 v0, 0xf

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    if-lt p3, v0, :cond_4

    if-le p3, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iput p2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iput p3, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    return-void
.end method

.method private static determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;
    .locals 13

    const/4 v1, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v5, v0

    move v2, v6

    move v3, v6

    move v4, v6

    :goto_0
    if-ge v5, v8, :cond_3

    aget-object v9, v7, v5

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    add-int/lit8 v0, v10, 0x1

    :try_start_0
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_1
    const/16 v10, 0x2a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_1

    move v12, v2

    move v2, v3

    move v3, v0

    move v0, v12

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    cmpl-float v10, v0, v3

    if-lez v10, :cond_2

    move v3, v4

    move v12, v0

    move v0, v2

    move v2, v12

    goto :goto_2

    :cond_2
    const-string v10, "deflate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    cmpl-float v9, v0, v2

    if-lez v9, :cond_9

    move v2, v3

    move v3, v4

    goto :goto_2

    :cond_3
    cmpl-float v0, v3, v1

    if-gtz v0, :cond_4

    cmpl-float v0, v2, v1

    if-lez v0, :cond_6

    :cond_4
    cmpl-float v0, v3, v2

    if-ltz v0, :cond_5

    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    :goto_3
    return-object v0

    :cond_5
    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_3

    :cond_6
    cmpl-float v0, v4, v1

    if-lez v0, :cond_8

    cmpl-float v0, v3, v6

    if-nez v0, :cond_7

    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_3

    :cond_7
    cmpl-float v0, v2, v6

    if-nez v0, :cond_8

    sget-object v0, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method protected getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor$1;->$SwitchMap$org$jboss$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "gzip"

    goto :goto_0

    :pswitch_1
    const-string v0, "deflate"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newContentEncoder(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "identity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    new-array v2, v3, [Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    new-instance v3, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;

    iget v4, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    invoke-direct {v3, v1, v4}, Lorg/jboss/netty/handler/codec/compression/JdkZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;I)V

    aput-object v3, v2, v7

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelDownstreamHandler;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    new-array v2, v3, [Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    new-instance v3, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;

    iget v4, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iget v5, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iget v6, p0, Lorg/jboss/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    invoke-direct {v3, v1, v4, v5, v6}, Lorg/jboss/netty/handler/codec/compression/ZlibEncoder;-><init>(Lorg/jboss/netty/handler/codec/compression/ZlibWrapper;III)V

    aput-object v3, v2, v7

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;-><init>([Lorg/jboss/netty/channel/ChannelDownstreamHandler;)V

    goto :goto_0
.end method
