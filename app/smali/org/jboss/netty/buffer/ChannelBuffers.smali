.class public final Lorg/jboss/netty/buffer/ChannelBuffers;
.super Ljava/lang/Object;
.source "ChannelBuffers.java"


# static fields
.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private static final HEXDUMP_TABLE:[C

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    new-instance v1, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-direct {v1, v0}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>(I)V

    sput-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/16 v1, 0x400

    new-array v1, v1, [C

    sput-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    shl-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v1, v4

    aput-char v4, v2, v3

    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v0, 0xf

    aget-char v4, v1, v4

    aput-char v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_3

    if-nez p1, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;-><init>(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 17

    invoke-interface/range {p0 .. p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x2

    and-int/lit8 v4, v3, 0x3

    invoke-interface/range {p0 .. p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    if-ne v6, v9, :cond_2

    move/from16 v16, v2

    move v2, v3

    move v3, v5

    move/from16 v5, v16

    :goto_0
    if-lez v5, :cond_5

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-lez v6, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    cmp-long v6, v10, v12

    if-gez v6, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v3

    move v3, v6

    goto :goto_0

    :cond_2
    move/from16 v16, v2

    move v2, v3

    move v3, v5

    move/from16 v5, v16

    :goto_2
    if-lez v5, :cond_5

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v6

    int-to-long v12, v6

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    cmp-long v6, v10, v12

    if-lez v6, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    cmp-long v6, v10, v12

    if-gez v6, :cond_4

    const/4 v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v3

    move v3, v6

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    move v4, v3

    move v3, v2

    move/from16 v2, v16

    :goto_3
    if-lez v2, :cond_8

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v6

    if-le v5, v6, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    if-ge v5, v6, :cond_7

    const/4 v2, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_8
    sub-int v2, v7, v8

    goto :goto_1
.end method

.method private static compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;Z)",
            "Lorg/jboss/netty/buffer/ChannelBuffer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-static {p0, v0, v1, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p0, v0, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->encodeString(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    return-object v1
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_1
    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs copiedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 7

    const/4 v1, 0x0

    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    array-length v3, p1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p1, v0

    const v5, 0x7fffffff

    sub-int/2addr v5, v2

    array-length v6, v4

    if-ge v5, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The total length of the specified arrays is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_1
    return-object v0

    :pswitch_1
    aget-object v0, p1, v1

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1

    :cond_0
    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1

    :cond_3
    new-array v3, v2, [B

    move v0, v1

    move v2, v1

    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_4

    aget-object v4, p1, v2

    array-length v5, v4

    invoke-static {v4, v1, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static copiedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method

.method public static copiedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, p0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs copiedBuffer([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    array-length v0, p0

    new-array v2, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_1
    return-object v0

    :pswitch_1
    aget-object v0, p0, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs copiedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    array-length v0, p0

    new-array v2, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_1
    return-object v0

    :pswitch_1
    aget-object v0, p0, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs copiedBuffer([[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method static decodeString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lorg/jboss/netty/util/CharsetUtil;->getDecoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static directBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    goto :goto_0
.end method

.method public static dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicBuffer(ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-object v0
.end method

.method public static dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;I)V

    return-object v0
.end method

.method public static dynamicBuffer(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-object v0
.end method

.method public static dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2, p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-object v0
.end method

.method static encodeString(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;
    .locals 6

    invoke-static {p1}, Lorg/jboss/netty/util/CharsetUtil;->getEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static equals(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)Z
    .locals 11

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-eq v1, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    move v10, v0

    move v0, v1

    move v1, v4

    move v4, v10

    :goto_1
    if-lez v4, :cond_4

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v6

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v10, v0

    move v0, v1

    move v1, v4

    move v4, v10

    :goto_2
    if-lez v4, :cond_4

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v6

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapLong(J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v1

    move v1, v5

    goto :goto_2

    :cond_4
    move v10, v3

    move v3, v1

    move v1, v0

    move v0, v10

    :goto_3
    if-lez v0, :cond_6

    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v4

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ge v0, p2, :cond_3

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    if-ne v2, p3, :cond_1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ge v0, p2, :cond_3

    invoke-interface {p3, p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static hashCode(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 7

    const/4 v2, 0x1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    ushr-int/lit8 v0, v1, 0x2

    and-int/lit8 v3, v1, 0x3

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    move v4, v0

    move v0, v1

    move v1, v2

    :goto_0
    if-lez v4, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_0
    move v4, v0

    move v0, v1

    move v1, v2

    :goto_1
    if-lez v4, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v1

    move v1, v5

    goto :goto_1

    :cond_1
    move v6, v3

    move v3, v0

    move v0, v1

    move v1, v6

    :goto_2
    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v3

    move v3, v4

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public static hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;II)Ljava/lang/String;
    .locals 6

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    add-int v1, p1, p2

    shl-int/lit8 v0, p2, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_1
    if-ge p1, v1, :cond_2

    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static hexDump(Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 7

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I
    .locals 1

    if-gt p1, p2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    if-gt p1, p2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    goto :goto_0
.end method

.method private static lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I
    .locals 3

    const/4 v1, -0x1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, p2, :cond_3

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    if-eq v2, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 3

    const/4 v1, -0x1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, p2, :cond_3

    invoke-interface {p3, p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static swapInt(I)I
    .locals 3

    int-to-short v0, p0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapShort(S)S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    ushr-int/lit8 v1, p0, 0x10

    int-to-short v1, v1

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapShort(S)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static swapLong(J)J
    .locals 6

    const/16 v2, 0x20

    long-to-int v0, p0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    ushr-long v2, p0, v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static swapMedium(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static swapShort(S)S
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static unmodifiableBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    instance-of v0, p0, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;->unwrap()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>([B)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_3

    array-length v0, p1

    if-nez v0, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;-><init>([B)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_3

    array-length v0, p1

    if-ne p3, v0, :cond_1

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-nez p3, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0
.end method

.method public static varargs wrappedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 6

    const/4 v1, 0x0

    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    if-nez v4, :cond_1

    :cond_0
    invoke-static {p0, v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    aget-object v0, p1, v1

    array-length v0, v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v5, v4

    if-lez v5, :cond_2

    invoke-static {p0, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :pswitch_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static wrappedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method

.method public static varargs wrappedBuffer(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 7

    const/4 v0, 0x0

    array-length v1, p1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v0, v2, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inconsistent byte order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    :cond_3
    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :pswitch_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 7

    const/4 v0, 0x0

    array-length v1, p1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, p1

    move v3, v0

    move-object v0, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, p1, v3

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0, v4, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inconsistent byte order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    move-object v2, v0

    :goto_2
    instance-of v0, v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :pswitch_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
