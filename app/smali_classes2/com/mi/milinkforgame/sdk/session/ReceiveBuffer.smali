.class public Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;
.super Ljava/lang/Object;
.source "ReceiveBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;
    }
.end annotation


# static fields
.field private static CLASSTAG:Ljava/lang/String; = null

.field private static final INTEGER_LENGTH:I = 0x4

.field private static final MAX_HTTP_PACKAGE_HEADER_LENGTH:I = 0x800

.field private static final MIN_TCP_PACKAGE_HEADER_LENGTH:I = 0x8

.field private static final MNS_CONTENT_B2_LENGTH_POS:I = 0x1a

.field private static final MNS_CONTENT_FLAG_POS:I = 0xa

.field private static final MNS_CONTENT_VERSION_POS:I = 0x8

.field private static final SHORT_LENGTH:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCreatorSessionNO:I

.field private mPosition:I

.field private mSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ReceiveBuffer"

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->CLASSTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    iput v3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    :try_start_0
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput p3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mCreatorSessionNO:I

    const-string v0, "[No:%d]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->CLASSTAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v2, "ReceiveBuffer init failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPacketLen()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/16 v7, 0x800

    const/16 v6, 0x8

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPacketLen start, mPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    if-ge v2, v6, :cond_1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPacketLen [position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] < TCP_PACKAGE_HEADER_LENGTH("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->isHttpHead([B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v3, "getPacketLen isHttpHead"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->findHttpHeaderEndFromByte([B)I

    move-result v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    if-le v2, v7, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP CONTENT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2, v7}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->bytesToASCIIString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;

    const-string v1, "wrong packet\uff0ccannot find http header end"

    invoke-direct {v0, v1, v5}, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->removeToBegin(I)V

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/BufferUtil;->isMNSHead([B)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no mns head: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    const v3, 0x1f4000

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->bytesToHexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no mns head , try to get string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;

    const-string v1, "wrong packet\uff0cno mns head"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    invoke-static {v0, v5}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->bytesToUint([BI)J

    move-result-wide v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private parseNormalPacket()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;
        }
    .end annotation

    const/16 v7, 0x1a

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getSetting()Lcom/mi/milinkforgame/sdk/config/Settings;

    move-result-object v1

    const-string v2, "MaxPacketSize"

    const-wide/32 v4, 0x200000

    invoke-virtual {v1, v2, v4, v5}, Lcom/mi/milinkforgame/sdk/config/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->getPacketLen()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseNormalPacket start, packetLen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v4, 0x8

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wrong packetlen = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wrong packetlen = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    if-lt v1, v7, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    const/16 v4, 0x8

    aget-byte v1, v1, v4

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    invoke-static {v1, v7}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->bytesToShort([BI)S

    move-result v1

    iget v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    add-int/lit8 v5, v1, 0x1c

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x4

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[package size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    add-int/lit8 v1, v1, 0x1c

    add-int/lit8 v1, v1, 0x4

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/base/data/Convert;->bytesToInt([BI)I

    move-result v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mCreatorSessionNO:I

    invoke-interface {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;->onAddTimeout(II)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseNormalPacket [packetLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v1, v2

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    long-to-int v5, v2

    invoke-static {v4, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    long-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->removeToBegin(I)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mSink:Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mCreatorSessionNO:I

    invoke-interface {v0, v2, v1}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer$ReceiveBufferSink;->onRecvDownStream(I[B)Z

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private parsePacket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v1, "parsePacket start"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->parseNormalPacket()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private removeToBegin(I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    sub-int/2addr v1, p1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public append([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milinkforgame/sdk/session/InvalidPacketExecption;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v2, "buffer need to be increased"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->parsePacket()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v2, "append new byte fail "

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mBuffer:[B

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/ReceiveBuffer;->mPosition:I

    return-void
.end method
