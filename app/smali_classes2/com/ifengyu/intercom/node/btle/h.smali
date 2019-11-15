.class public Lcom/ifengyu/intercom/node/btle/h;
.super Ljava/lang/Object;
.source "DataReceiver.java"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private b:[B

.field private c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

.field private d:Lcom/ifengyu/intercom/node/btle/i;

.field private e:Lcom/ifengyu/intercom/node/btle/d;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[B

.field private l:[B

.field private m:I

.field private final n:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/i;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->e:Lcom/ifengyu/intercom/node/btle/d;

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->n:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "DataReceiver"

    const-string v3, "generatorUpdateResponse"

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    aget-byte v3, v3, v2

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    aget-byte v3, v3, v2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->values()[Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    aget-byte v3, v3, v1

    if-nez v3, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    invoke-static {v2}, Lcom/ifengyu/intercom/node/transport/e;->e([B)I

    move-result v2

    const-string v3, "DataReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->b()V

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->setState(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v3, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->setResult(Z)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->setAck(I)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->setUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/btle/h;)[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    return-object v0
.end method

.method private b()V
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

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    return-void
.end method

.method private c([B)V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataReceiver"

    const-string v1, "processSealWireData: "

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v0, p1

    if-lt v0, v6, :cond_3

    aget-byte v0, p1, v5

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    aget-byte v0, p1, v2

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    const-string v0, "DataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got packet id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->a([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    array-length v1, p1

    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v4, [B

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v3, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v2, v2, -0x8

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v6, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    const/16 v2, 0x4e22

    if-ne v1, v2, :cond_4

    const-string v1, "DataReceiver"

    const-string v2, "receive Command is ECI_ConnectResp Command"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->e:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    goto/16 :goto_0

    :cond_4
    :try_start_0
    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/m;->a([BI)Lcom/ifengyu/intercom/node/m;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    const-string v3, ""

    invoke-interface {v0, v3, v1}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DataReceiver"

    const-string v2, "parse protobuf error!!!"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const-string v0, "DataReceiver"

    const-string v1, "Crc16 check error!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private d([B)V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v0, "DataReceiver"

    const-string v1, "processSharkWireData:"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    if-lt v0, v6, :cond_2

    aget-byte v0, p1, v5

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    aget-byte v0, p1, v2

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    const-string v0, "DataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got packet id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->a([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    array-length v1, p1

    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v4, [B

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v3, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v2, v2, -0x8

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v6, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    const/16 v2, 0x4e22

    if-ne v1, v2, :cond_3

    const-string v1, "DataReceiver"

    const-string v2, "receive Command is ECI_ConnectResp Command"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->e:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    goto/16 :goto_0

    :cond_3
    :try_start_0
    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/n;->a([BI)Lcom/ifengyu/intercom/node/n;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    const-string v3, ""

    invoke-interface {v0, v3, v1}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/n;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DataReceiver"

    const-string v2, "parse protobuf error!!!"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const-string v0, "DataReceiver"

    const-string v1, "Crc16 check error!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private e([B)V
    .locals 7

    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v0, "DataReceiver"

    const-string v1, "processBtKeyWireData:"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    if-lt v0, v6, :cond_2

    aget-byte v0, p1, v5

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    aget-byte v0, p1, v2

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    const-string v0, "DataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got packet id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->a([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    array-length v1, p1

    invoke-static {p1, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v4, [B

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v3, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/c;->a([B)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/transport/b;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v2, v2, -0x8

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v6, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    const/16 v2, 0x4e22

    if-ne v1, v2, :cond_3

    const-string v1, "DataReceiver"

    const-string v2, "receive Command is ECI_ConnectResp Command"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->e:Lcom/ifengyu/intercom/node/btle/d;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->l:[B

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    goto/16 :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DataReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/c;->a([BI)Lcom/ifengyu/intercom/node/c;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    const-string v3, ""

    invoke-interface {v0, v3, v1}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;Lcom/ifengyu/intercom/node/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "DataReceiver"

    const-string v2, "parse data error!!"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const-string v0, "DataReceiver"

    const-string v1, "Crc16 check error!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private f([B)V
    .locals 9

    const/16 v8, 0x2719

    const/16 v7, 0x2718

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataReceiver"

    const-string v1, "processDolphinWireData:"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v0, p1

    if-lt v0, v6, :cond_8

    aget-byte v0, p1, v4

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->b([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    const-string v0, "DataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got packet id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->f:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    array-length v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->m:I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->a([B)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    const-string v0, "DataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received cmdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecvDataLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    if-ne v0, v8, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-gt v0, v5, :cond_6

    array-length v0, p1

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    const/4 v1, 0x4

    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    invoke-static {p1, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    if-ne v0, v8, :cond_c

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-gt v0, v5, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->e:Lcom/ifengyu/intercom/node/btle/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/d;->a([B)V

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ifengyu/intercom/node/btle/h$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/node/btle/h$1;-><init>(Lcom/ifengyu/intercom/node/btle/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    const-string v0, "DataReceiver"

    const-string v1, "reading from peer is done"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    array-length v1, p1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p1, v6, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    array-length v1, p1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p1, v6, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    if-ne v0, v8, :cond_a

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->g:I

    if-gt v0, v5, :cond_9

    const-string v0, "DataReceiver"

    const-string v1, "first blood is comming!!!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    array-length v1, p1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->k:[B

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->m:I

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->m:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/h;->m:I

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    add-int/lit8 v1, v1, -0x8

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "DataReceiver"

    const-string v1, "receive update response error!"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->j:I

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->b:[B

    array-length v0, v0

    if-lez v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/h;->i:I

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/h;->h:I

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/h;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/h;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/ifengyu/intercom/node/btle/h$2;

    invoke-direct {v2, p0, v0}, Lcom/ifengyu/intercom/node/btle/h$2;-><init>(Lcom/ifengyu/intercom/node/btle/h;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/h;->c()V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/btle/d;Lcom/ifengyu/intercom/node/btle/i;)V
    .locals 0

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/h;->d:Lcom/ifengyu/intercom/node/btle/i;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/h;->e:Lcom/ifengyu/intercom/node/btle/d;

    return-void
.end method

.method public a([B)V
    .locals 2

    const-string v0, "DataReceiver"

    const-string v1, "handleIncomingUpdate"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->f([B)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->c([B)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->d([B)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/h;->e([B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public b([B)V
    .locals 3

    const-string v0, "DataReceiver"

    const-string v1, "handlePttKeyEvent"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/b;->b([B)I

    move-result v1

    invoke-static {}, Lcom/ifengyu/intercom/node/a/d;->a()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/intercom/node/a/d;->e:Lcom/ifengyu/intercom/node/q;

    iget-object v0, v0, Lcom/ifengyu/intercom/node/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/node/h;->b(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
