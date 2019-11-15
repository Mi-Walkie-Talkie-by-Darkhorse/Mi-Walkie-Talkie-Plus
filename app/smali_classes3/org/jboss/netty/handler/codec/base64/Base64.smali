.class public final Lorg/jboss/netty/handler/codec/base64/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alphabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->alphabet:[B

    return-object v0
.end method

.method private static breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->breakLinesByDefault:Z

    return v0
.end method

.method private static decodabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->decodabet:[B

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 10

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decodabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v5

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {p4, v2, v0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    const/4 v0, 0x4

    new-array v7, v0, [B

    move v4, p1

    move v2, v1

    move v3, v1

    :goto_0
    add-int v0, p1, p2

    if-ge v4, v0, :cond_7

    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v8, v0

    aget-byte v0, v5, v8

    const/4 v9, -0x5

    if-lt v0, v9, :cond_3

    const/4 v9, -0x1

    if-lt v0, v9, :cond_6

    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v7, v2

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    invoke-static {v7, v1, v6, v3, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode4to3([BILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)I

    move-result v0

    add-int/2addr v0, v3

    const/16 v2, 0x3d

    if-ne v8, v2, :cond_4

    :goto_1
    invoke-interface {v6, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad Base64 input character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v2, v0

    move v0, v1

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_1
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-object v0
.end method

.method private static decode4to3([BILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)I
    .locals 3

    const/16 v2, 0x3d

    invoke-static {p4}, Lorg/jboss/netty/handler/codec/base64/Base64;->decodabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-interface {p2, p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    invoke-interface {p2, p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-interface {p2, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    :try_start_0
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    invoke-interface {p2, p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-interface {p2, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p3, 0x2

    int-to-byte v0, v0

    invoke-interface {p2, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    const/4 v0, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not encoded in Base64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-static {p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 6

    invoke-static {p3}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZ)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 6

    sget-object v4, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 6

    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 10

    const/4 v6, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    mul-int/lit8 v0, p2, 0x4

    div-int/lit8 v1, v0, 0x3

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_4

    const/4 v0, 0x4

    :goto_0
    add-int v3, v1, v0

    if-eqz p3, :cond_5

    div-int/lit8 v0, v1, 0x4c

    :goto_1
    add-int/2addr v0, v3

    invoke-interface {p5, v2, v0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    add-int/lit8 v9, p2, -0x2

    move v7, v6

    move v4, v6

    move v8, v6

    :goto_2
    if-ge v8, v9, :cond_6

    add-int v1, v8, p1

    const/4 v2, 0x3

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode3to4(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)V

    add-int/lit8 v0, v7, 0x4

    if-eqz p3, :cond_3

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    invoke-interface {v3, v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v4, v4, 0x1

    move v0, v6

    :cond_3
    add-int/lit8 v1, v8, 0x3

    add-int/lit8 v4, v4, 0x4

    move v7, v0

    move v8, v1

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_1

    :cond_6
    if-ge v8, p2, :cond_7

    add-int v1, v8, p1

    sub-int v2, p2, v8

    move-object v0, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode3to4(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)V

    add-int/lit8 v4, v4, 0x4

    :cond_7
    invoke-interface {v3, v6, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/base64/Base64;->breakLines(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;Z)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lorg/jboss/netty/buffer/ChannelBuffer;ZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 6

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;IIZLorg/jboss/netty/handler/codec/base64/Base64Dialect;Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-object v0
.end method

.method private static encode3to4(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBuffer;ILorg/jboss/netty/handler/codec/base64/Base64Dialect;)V
    .locals 5

    const/16 v4, 0x3d

    const/4 v0, 0x0

    invoke-static {p5}, Lorg/jboss/netty/handler/codec/base64/Base64;->alphabet(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v3

    if-lez p2, :cond_1

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_0
    or-int/2addr v0, v1

    packed-switch p2, :pswitch_data_0

    :goto_2
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    invoke-interface {p3, p4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    invoke-interface {p3, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    invoke-interface {p3, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    invoke-interface {p3, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    goto :goto_2

    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    invoke-interface {p3, p4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    invoke-interface {p3, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    invoke-interface {p3, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v0, p4, 0x3

    invoke-interface {p3, v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    goto :goto_2

    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    invoke-interface {p3, p4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    invoke-interface {p3, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v0, p4, 0x2

    invoke-interface {p3, v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v0, p4, 0x3

    invoke-interface {p3, v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
