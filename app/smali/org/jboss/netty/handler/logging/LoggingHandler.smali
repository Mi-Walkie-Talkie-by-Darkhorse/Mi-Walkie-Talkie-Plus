.class public Lorg/jboss/netty/handler/logging/LoggingHandler;
.super Ljava/lang/Object;
.source "LoggingHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final BYTE2CHAR:[C

.field private static final BYTE2HEX:[Ljava/lang/String;

.field private static final BYTEPADDING:[Ljava/lang/String;

.field private static final DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

.field private static final HEXPADDING:[Ljava/lang/String;

.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field private final hexDump:Z

.field private final level:Lorg/jboss/netty/logging/InternalLogLevel;

.field private final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v3, 0x100

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/4 v4, 0x3

    const/4 v1, 0x0

    sget-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->DEBUG:Lorg/jboss/netty/logging/InternalLogLevel;

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    const-string v0, "%n"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    new-array v0, v3, [C

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    array-length v2, v2

    sub-int v3, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v3, 0x3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_3

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_5
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    array-length v2, v2

    sub-int v3, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    :goto_7
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    array-length v0, v0

    if-ge v1, v0, :cond_9

    const/16 v0, 0x1f

    if-le v1, v0, :cond_7

    const/16 v0, 0x7f

    if-lt v1, v0, :cond_8

    :cond_7
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    int-to-char v2, v1

    aput-char v2, v0, v1

    goto :goto_8

    :cond_9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jboss/netty/logging/InternalLogLevel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jboss/netty/logging/InternalLogLevel;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    iput-object p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    iput-object p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/logging/InternalLogLevel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    iput-object p1, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    iput-boolean p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    return-void
.end method

.method private static formatBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .locals 13

    const/16 v12, 0x7c

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    div-int/lit8 v1, v3, 0x10

    rem-int/lit8 v0, v3, 0xf

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x50

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         +-------------------------------------------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+--------+-------------------------------------------------+----------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_4

    sub-int v0, v1, v2

    and-int/lit8 v6, v0, 0xf

    if-nez v6, :cond_0

    sget-object v7, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v8, v0

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const-wide v10, 0x100000000L

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {v4, v0, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v7

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    if-ne v6, v0, :cond_3

    const-string v0, " |"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, -0xf

    :goto_2
    if-gt v0, v1, :cond_2

    sget-object v6, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    sub-int v0, v1, v2

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_6

    and-int/lit8 v2, v3, 0xf

    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v0, v1, v2

    :goto_3
    if-ge v0, v1, :cond_5

    sget-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v5

    aget-char v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+--------+-------------------------------------------------+----------------+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLevel()Lorg/jboss/netty/logging/InternalLogLevel;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    return-object v0
.end method

.method public getLogger()Lorg/jboss/netty/logging/InternalLogger;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;->log(Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;->log(Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public log(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4

    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->formatBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    instance-of v1, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    check-cast p1, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
