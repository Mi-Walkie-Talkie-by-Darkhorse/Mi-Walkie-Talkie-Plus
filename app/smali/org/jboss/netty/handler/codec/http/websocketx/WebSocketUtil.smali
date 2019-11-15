.class final Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static base64(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static base64([B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static md5(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "MD5 not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static md5([B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "MD5 not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static randomBytes(I)[B
    .locals 4

    const/4 v1, 0x0

    new-array v2, p0, [B

    move v0, v1

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v3, 0xff

    invoke-static {v1, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static randomNumber(II)I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    int-to-double v2, p0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static sha1(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "SHA-1 not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sha1([B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "SHA-1 not supported on this platform"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
