.class public Lcom/ifengyu/intercom/node/btle/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private b:[B

.field private c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

.field private d:Lcom/ifengyu/intercom/node/btle/d;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[B

.field private k:[B

.field private l:I

.field private final m:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    iput p2, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    iput p2, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/d;

    iput p2, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput p2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    iput p2, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->m:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/btle/h;)[B
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    return-object p0
.end method

.method private b()V
    .locals 6

    const-string v0, "DataReceiver"

    const-string v1, "generatorUpdateResponse"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    if-ltz v4, :cond_0

    aget-byte v2, v2, v3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/e;->a([B)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->setState(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->setResult(Z)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->setAck(I)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    :cond_2
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    return-void
.end method

.method private c([B)V
    .locals 7

    const-string v0, "DataReceiver"

    const-string v1, "processBtKeyWireData:"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    aget-byte v4, p1, v1

    if-ne v4, v1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->e([B)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got packet id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    iget v5, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    if-eq v4, v5, :cond_0

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    :cond_0
    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    add-int/2addr v4, v1

    const v1, 0xffff

    rem-int/2addr v4, v1

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    array-length v1, p1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    array-length v4, p1

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v5, p1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-ne p1, v1, :cond_5

    add-int/lit8 p1, v1, -0x2

    new-array p1, p1, [B

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    const/4 v5, 0x2

    sub-int/2addr v1, v5

    invoke-static {v4, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v5, [B

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v6, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    sub-int/2addr v6, v5

    invoke-static {v4, v6, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    add-int/lit8 v1, p1, -0x8

    sub-int/2addr v1, v5

    new-array v4, v1, [B

    iget-object v6, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    sub-int/2addr p1, v2

    sub-int/2addr p1, v5

    invoke-static {v6, v2, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    const/16 v2, 0x4e22

    if-ne p1, v2, :cond_2

    const-string p1, "receive Command is ECI_ConnectResp Command"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    add-int/lit8 p1, v1, 0x4

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v5, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v0, v2, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x4

    invoke-static {v4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "realData:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    invoke-static {v4, p1}, Lcom/ifengyu/intercom/node/b;->a([BI)Lcom/ifengyu/intercom/node/b;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    iget-object v1, v1, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/node/g;

    const-string v3, ""

    invoke-interface {v2, v3, p1}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "parse data error!!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string p1, "Crc16 check error!"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private d([B)V
    .locals 11

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    const-string v1, "DataReceiver"

    if-eqz v0, :cond_0

    const-string v0, "processDolphinWireData:"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v0, p1

    const/16 v2, 0x2718

    const/16 v3, 0x2719

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-lt v0, v6, :cond_4

    aget-byte v0, p1, v5

    const/4 v7, -0x2

    if-ne v0, v7, :cond_4

    const/4 v0, 0x1

    aget-byte v7, p1, v0

    if-ne v7, v0, :cond_4

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->e([B)I

    move-result v7

    iput v7, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got packet id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    iget v8, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    if-eq v7, v8, :cond_1

    iput v7, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    :cond_1
    iget v7, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    add-int/2addr v7, v0

    rem-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    array-length v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v0, p1

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received cmdId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mRecvDataLen="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    sub-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-gt v0, v4, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v6

    const/4 v7, 0x4

    add-int/2addr v0, v7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v8, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    iget-object v9, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    iget-object v10, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-static {v0, v8, v9, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    array-length v5, p1

    sub-int/2addr v5, v6

    invoke-static {p1, v6, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    sub-int/2addr v0, v6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    array-length v7, p1

    sub-int/2addr v7, v6

    invoke-static {p1, v6, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    sub-int/2addr v0, v6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    array-length v7, p1

    sub-int/2addr v7, v6

    invoke-static {p1, v6, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v7, p1

    add-int/2addr v0, v7

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    iget v7, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-ne v7, v3, :cond_6

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-gt v0, v4, :cond_5

    const-string v0, "first blood is comming!!!"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    array-length v6, p1

    invoke-static {p1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    iget v6, p0, Lcom/ifengyu/intercom/node/btle/h;->l:I

    array-length v7, p1

    invoke-static {p1, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:I

    goto :goto_0

    :cond_6
    if-ne v7, v2, :cond_8

    iget-object v7, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    if-eqz v7, :cond_7

    array-length v8, v7

    if-lez v8, :cond_7

    sub-int/2addr v0, v6

    array-length v6, p1

    invoke-static {p1, v5, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_7
    const-string p1, "receive update response error!"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    :cond_8
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-ne p1, v3, :cond_b

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-gt p1, v4, :cond_9

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:[B

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    :cond_9
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-eqz p1, :cond_d

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-ne p1, v0, :cond_d

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-le p1, v4, :cond_a

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/h$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/h$a;-><init>(Lcom/ifengyu/intercom/node/btle/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_a
    const-string p1, "reading from peer is done"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    goto :goto_1

    :cond_b
    if-ne p1, v2, :cond_d

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    if-eqz p1, :cond_d

    array-length p1, p1

    if-lez p1, :cond_d

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-eqz p1, :cond_d

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->b()V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-nez p1, :cond_c

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->m:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ifengyu/intercom/node/btle/h$b;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/node/btle/h$b;-><init>(Lcom/ifengyu/intercom/node/btle/h;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    :cond_d
    :goto_1
    return-void
.end method

.method private e([B)V
    .locals 7

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v0

    const-string v1, "DataReceiver"

    if-eqz v0, :cond_0

    const-string v0, "processSealWireData: "

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v0, p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    aget-byte v0, p1, v3

    const/4 v4, -0x2

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    aget-byte v4, p1, v0

    if-ne v4, v0, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->e([B)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got packet id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    iget v5, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    if-eq v4, v5, :cond_1

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    :cond_1
    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    add-int/2addr v4, v0

    const v0, 0xffff

    rem-int/2addr v4, v0

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    array-length v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    array-length v4, p1

    invoke-static {p1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v5, p1

    invoke-static {p1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-ne p1, v0, :cond_5

    add-int/lit8 p1, v0, -0x2

    new-array p1, p1, [B

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    const/4 v5, 0x2

    sub-int/2addr v0, v5

    invoke-static {v4, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v5, [B

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v6, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    sub-int/2addr v6, v5

    invoke-static {v4, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/node/transport/b;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    add-int/lit8 v0, p1, -0x8

    sub-int/2addr v0, v5

    new-array v4, v0, [B

    iget-object v6, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    sub-int/2addr p1, v2

    sub-int/2addr p1, v5

    invoke-static {v6, v2, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    const/16 v2, 0x4e22

    if-ne p1, v2, :cond_3

    const-string p1, "receive Command is ECI_ConnectResp Command"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    add-int/lit8 p1, v0, 0x4

    new-array p1, p1, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v5, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v1, v2, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    invoke-static {v4, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-static {v4, p1}, Lcom/ifengyu/intercom/node/l;->a([BI)Lcom/ifengyu/intercom/node/l;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/node/g;

    const-string v3, ""

    invoke-interface {v2, v3, p1}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/l;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "parse protobuf error!!!"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string p1, "Crc16 check error!"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method private f([B)V
    .locals 7

    const-string v0, "DataReceiver"

    const-string v1, "processSharkWireData:"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    aget-byte v4, p1, v1

    if-ne v4, v1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->e([B)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got packet id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    iget v5, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    if-eq v4, v5, :cond_0

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    :cond_0
    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    add-int/2addr v4, v1

    const v1, 0xffff

    rem-int/2addr v4, v1

    iput v4, p0, Lcom/ifengyu/intercom/node/btle/h;->e:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    array-length v1, p1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    array-length v4, p1

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v5, p1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-eqz p1, :cond_4

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-ne p1, v1, :cond_4

    add-int/lit8 p1, v1, -0x2

    new-array p1, p1, [B

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    const/4 v5, 0x2

    sub-int/2addr v1, v5

    invoke-static {v4, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v5, [B

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v6, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    sub-int/2addr v6, v5

    invoke-static {v4, v6, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    add-int/lit8 v1, p1, -0x8

    sub-int/2addr v1, v5

    new-array v4, v1, [B

    iget-object v6, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    sub-int/2addr p1, v2

    sub-int/2addr p1, v5

    invoke-static {v6, v2, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    const/16 v2, 0x4e22

    if-ne p1, v2, :cond_2

    const-string p1, "receive Command is ECI_ConnectResp Command"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    add-int/lit8 p1, v1, 0x4

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v5, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v0, v2, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x4

    invoke-static {v4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {v4, p1}, Lcom/ifengyu/intercom/node/m;->a([BI)Lcom/ifengyu/intercom/node/m;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    iget-object v1, v1, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/node/g;

    const-string v3, ""

    invoke-interface {v2, v3, p1}, Lcom/ifengyu/intercom/node/g;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "parse protobuf error!!!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string p1, "Crc16 check error!"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/d;

    return-void
.end method

.method public a([B)V
    .locals 2

    const-string v0, "DataReceiver"

    const-string v1, "handleIncomingUpdate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->c([B)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->e([B)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->f([B)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->d([B)V

    :goto_0
    return-void
.end method

.method public b([B)V
    .locals 2

    const-string v0, "DataReceiver"

    const-string v1, "handlePttKeyEvent"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/b;->b([B)I

    move-result p1

    invoke-static {}, Lcom/ifengyu/intercom/node/q/d;->c()Lcom/ifengyu/intercom/node/q/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q/d;->e:Lcom/ifengyu/intercom/node/p;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/g;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/g;->a(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
