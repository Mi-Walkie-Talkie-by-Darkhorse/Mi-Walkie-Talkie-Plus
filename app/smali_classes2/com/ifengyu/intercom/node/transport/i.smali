.class public final Lcom/ifengyu/intercom/node/transport/i;
.super Ljava/lang/Object;
.source "TransportHelper.java"


# static fields
.field private static a:I = 0x1

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Lcom/ifengyu/intercom/node/transport/TransMode;)I
    .locals 2

    .line 28
    sget-object v0, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    const/16 v1, 0x2719

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/transport/TransMode;->b:Lcom/ifengyu/intercom/node/transport/TransMode;

    if-ne p0, v0, :cond_1

    const/16 v1, 0x2718

    :cond_1
    :goto_0
    return v1
.end method

.method public static a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;Lcom/ifengyu/intercom/node/transport/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    .line 60
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 61
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 62
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 65
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;I)V

    .line 66
    iget-object v1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    invoke-static {p1, v1, v0}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 67
    iget-object p0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    .line 68
    invoke-virtual {p3, p1}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    return v0
.end method

.method public static a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/ifengyu/intercom/node/btkey/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    .line 48
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 49
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 50
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 53
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    .line 54
    invoke-static {p1, v1, v0}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeLocalHeaderRealData :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransportHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    invoke-static {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->a([B)Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;

    move-result-object p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectResp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    return-object p0
.end method

.method public static a()Lcom/ifengyu/intercom/node/transport/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/node/transport/h;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/transport/h;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/ifengyu/intercom/node/transport/h;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le p1, v0, :cond_2

    :cond_0
    const v0, 0x3f8ccccd    # 1.1f

    int-to-float v1, p1

    mul-float v1, v1, v0

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    if-eqz v1, :cond_1

    .line 43
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureBuffersHaveSpace: incoming message size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte, increasing current buffer size from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TransportHelper"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    :cond_2
    return-void

    .line 46
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureBuffersHaveSpace: can not malloc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte memory."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;II[BLcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/transport/TransMode;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p5, p0}, Lcom/ifengyu/intercom/node/transport/j;->b(Z)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    const-string v1, "sending message of length "

    const-string v2, "TransportHelper"

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sending mode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-static {p2, p3, p4, p7, p6}, Lcom/ifengyu/intercom/node/transport/i;->a(II[BILcom/ifengyu/intercom/node/transport/TransMode;)[B

    move-result-object p3

    if-eq p2, p0, :cond_1

    .line 8
    array-length p0, p3

    invoke-static {p3, p0}, Lcom/ifengyu/intercom/node/transport/i;->a([BI)[B

    move-result-object p3

    .line 9
    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    const/4 p0, 0x0

    .line 10
    invoke-virtual {p5, p0}, Lcom/ifengyu/intercom/node/transport/j;->b(Z)V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is done."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->b()I

    move-result v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a()I

    move-result v3

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->c()[B

    move-result-object v4

    sget-object v6, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->c()[B

    move-result-object p2

    array-length v7, p2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;II[BLcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/transport/TransMode;I)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;[BLcom/ifengyu/intercom/node/transport/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v4, Lcom/ifengyu/intercom/node/transport/TransMode;->b:Lcom/ifengyu/intercom/node/transport/TransMode;

    array-length v5, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;[BLcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/transport/TransMode;I)V

    return-void
.end method

.method private static a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;[BLcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/transport/TransMode;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/node/transport/j;->b(Z)V

    add-int/lit8 v0, p5, 0x4

    .line 31
    invoke-static {p0, v0}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;I)V

    .line 32
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/i;->a(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    invoke-static {p2, v4, v1, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result p2

    const-string v1, "sending message of length "

    const-string v2, "TransportHelper"

    if-eqz p2, :cond_0

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sending mode "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    invoke-virtual {p1, p0, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 37
    invoke-virtual {p3, v4}, Lcom/ifengyu/intercom/node/transport/j;->b(Z)V

    .line 38
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is done."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/InputStream;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "TransportHelper"

    const-string v1, "read input data"

    .line 69
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    sub-int v2, p2, v1

    .line 70
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    .line 71
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "read fail. len = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", offset = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "connection closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "reading message of length "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is done."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private static a(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    int-to-long v1, p0

    const/4 p0, 0x2

    .line 76
    invoke-static {v0, v1, v2, p0, p0}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    return-object v0
.end method

.method private static a(IIII)[B
    .locals 2

    add-int/lit8 p0, p0, 0x8

    .line 18
    new-array p0, p0, [B

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 19
    aput-byte v1, p0, v0

    const/4 v0, 0x1

    .line 20
    aput-byte v0, p0, v0

    int-to-long v0, p1

    const/4 p1, 0x2

    .line 21
    invoke-static {p0, v0, v1, p1, p1}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    int-to-long v0, p2

    const/4 p2, 0x4

    .line 22
    invoke-static {p0, v0, v1, p2, p1}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    int-to-long p2, p3

    const/4 v0, 0x6

    .line 23
    invoke-static {p0, p2, p3, v0, p1}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    return-object p0
.end method

.method public static a(II[BILcom/ifengyu/intercom/node/transport/TransMode;)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p0, v1, :cond_0

    add-int/2addr p3, v2

    .line 13
    array-length p0, p2

    invoke-static {p4}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/TransMode;)I

    move-result p1

    sget p4, Lcom/ifengyu/intercom/node/transport/i;->a:I

    invoke-static {p0, p3, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(IIII)[B

    move-result-object p0

    .line 14
    array-length p1, p2

    invoke-static {p2, v0, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/2addr p3, v2

    add-int/lit8 p3, p3, 0x2

    .line 15
    array-length p0, p2

    sget p4, Lcom/ifengyu/intercom/node/transport/i;->b:I

    invoke-static {p0, p3, p1, p4}, Lcom/ifengyu/intercom/node/transport/i;->a(IIII)[B

    move-result-object p0

    .line 16
    array-length p1, p2

    invoke-static {p2, v0, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    sget p1, Lcom/ifengyu/intercom/node/transport/i;->b:I

    add-int/2addr p1, v1

    const p2, 0xffff

    rem-int/2addr p1, p2

    sput p1, Lcom/ifengyu/intercom/node/transport/i;->b:I

    :goto_0
    return-object p0
.end method

.method private static a([BI)[B
    .locals 3

    add-int/lit8 v0, p1, 0x2

    .line 24
    new-array v0, v0, [B

    .line 25
    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x2

    .line 27
    invoke-static {v1, v2, v0, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 8
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    .line 9
    invoke-static {p1, v1, v0}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeLocalHeaderRealData :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransportHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;

    move-result-object p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectResp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    return-object p0
.end method

.method public static b(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/SendDataWrap;Lcom/ifengyu/intercom/node/transport/j;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->b()I

    move-result v2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/SendDataWrap;->a()I

    move-result v3

    iget-object v0, p2, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v4

    sget-object v6, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    iget-object p2, p2, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    invoke-interface {p2}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/ifengyu/intercom/node/transport/i;->a(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/OutputStream;II[BLcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/transport/TransMode;I)V

    return-void
.end method

.method public static c(Lcom/ifengyu/intercom/node/transport/h;Ljava/io/InputStream;Lcom/ifengyu/intercom/node/transport/j;)Lcom/google/protobuf/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 7
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    .line 8
    invoke-static {p1, v1, v0}, Lcom/ifengyu/intercom/node/transport/i;->a(Ljava/io/InputStream;[BI)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeLocalHeaderRealData :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransportHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/ifengyu/intercom/node/transport/h;->b:[B

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;->parseFrom([B)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectResp:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/transport/j;->a(Z)V

    return-object p0
.end method
