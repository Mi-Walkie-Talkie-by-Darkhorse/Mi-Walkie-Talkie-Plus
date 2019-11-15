.class Lcom/shenma/speechrecognition/j;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/shenma/speechrecognition/ab;

.field private final b:Ljava/util/concurrent/BlockingQueue;

.field private final c:Ljava/util/concurrent/BlockingQueue;

.field private volatile d:Z

.field private final e:Lcom/shenma/speechrecognition/l;

.field private final f:Lcom/shenma/speechjni/OpusEncoder;

.field private final g:I

.field private h:I

.field private final i:[S

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7

    const/16 v6, 0x3e80

    const/4 v5, 0x4

    const/4 v3, 0x1

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v4, p0, Lcom/shenma/speechrecognition/j;->d:Z

    iput-wide v0, p0, Lcom/shenma/speechrecognition/j;->k:J

    iput-wide v0, p0, Lcom/shenma/speechrecognition/j;->l:J

    iput-wide v0, p0, Lcom/shenma/speechrecognition/j;->m:J

    iput-wide v0, p0, Lcom/shenma/speechrecognition/j;->n:J

    iput-object p2, p0, Lcom/shenma/speechrecognition/j;->e:Lcom/shenma/speechrecognition/l;

    iput-object p3, p0, Lcom/shenma/speechrecognition/j;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p4, p0, Lcom/shenma/speechrecognition/j;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/shenma/speechrecognition/ab;

    iget-object v1, p0, Lcom/shenma/speechrecognition/j;->e:Lcom/shenma/speechrecognition/l;

    invoke-direct {v0, p1, v1, v3}, Lcom/shenma/speechrecognition/ab;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Z)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/j;->a:Lcom/shenma/speechrecognition/ab;

    const-string v0, "sample rate:%d quality:%d complexity:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/shenma/speechrecognition/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/shenma/speechjni/OpusEncoder;

    sget v1, Lcom/shenma/speechrecognition/c;->b:I

    invoke-direct {v0, v6, v1, v5}, Lcom/shenma/speechjni/OpusEncoder;-><init>(III)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/j;->f:Lcom/shenma/speechjni/OpusEncoder;

    const/16 v0, 0x140

    iput v0, p0, Lcom/shenma/speechrecognition/j;->g:I

    iget v0, p0, Lcom/shenma/speechrecognition/j;->g:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/shenma/speechrecognition/j;->i:[S

    iput v4, p0, Lcom/shenma/speechrecognition/j;->j:I

    iput v4, p0, Lcom/shenma/speechrecognition/j;->h:I

    return-void
.end method

.method private b()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/shenma/speechrecognition/j;->k:J

    long-to-double v0, v0

    const-wide v2, 0x40cf400000000000L    # 16000.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/shenma/speechrecognition/j;->l:J

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    div-double v0, v2, v0

    const-string v2, "Totally encode [%d] shorts total cost: %d ns"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/shenma/speechrecognition/j;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, p0, Lcom/shenma/speechrecognition/j;->l:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "CostPerSec:%f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->a:Lcom/shenma/speechrecognition/ab;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/ab;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/j;->d:Z

    invoke-virtual {p0}, Lcom/shenma/speechrecognition/j;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I[BI)[B
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-lez p3, :cond_5

    const/4 v2, 0x0

    invoke-static {p2, v2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "length of remaining=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/shenma/speechrecognition/j;->g:I

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_4

    const-string v3, "Try to read %d bytes of seq: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/shenma/speechrecognition/j;->g:I

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/shenma/speechrecognition/j;->i:[S

    iget v4, p0, Lcom/shenma/speechrecognition/j;->g:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v0, p0, Lcom/shenma/speechrecognition/j;->g:I

    iput v0, p0, Lcom/shenma/speechrecognition/j;->j:I

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    :cond_1
    sget-boolean v1, Lcom/shenma/speechrecognition/aa;->a:Z

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/shenma/speechrecognition/j;->k:J

    iget v1, p0, Lcom/shenma/speechrecognition/j;->j:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shenma/speechrecognition/j;->k:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shenma/speechrecognition/j;->m:J

    :cond_2
    const-string v1, "Try to encode %d bytes of seq: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/shenma/speechrecognition/j;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/shenma/speechrecognition/j;->f:Lcom/shenma/speechjni/OpusEncoder;

    iget-object v3, p0, Lcom/shenma/speechrecognition/j;->i:[S

    invoke-virtual {v1, v3}, Lcom/shenma/speechjni/OpusEncoder;->a([S)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "RealTime cost for encoding %d-th packet is %dms."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v3, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v3, Lcom/shenma/speechrecognition/aa;->a:Z

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shenma/speechrecognition/j;->n:J

    iget-wide v4, p0, Lcom/shenma/speechrecognition/j;->l:J

    iget-wide v6, p0, Lcom/shenma/speechrecognition/j;->n:J

    iget-wide v8, p0, Lcom/shenma/speechrecognition/j;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shenma/speechrecognition/j;->l:J

    :cond_3
    iget-object v3, p0, Lcom/shenma/speechrecognition/j;->i:[S

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([SS)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/shenma/speechrecognition/j;->j:I

    const-string v3, "Data length is: %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/shenma/speechrecognition/j;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    const-string v4, "Try to read remaining %d bytes of seq: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/shenma/speechrecognition/j;->i:[S

    invoke-virtual {v2, v4, v0, v3}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v4, p0, Lcom/shenma/speechrecognition/j;->j:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/shenma/speechrecognition/j;->j:I

    add-int/2addr v0, v3

    goto/16 :goto_1

    :cond_5
    if-gez p1, :cond_7

    iget v0, p0, Lcom/shenma/speechrecognition/j;->j:I

    if-lez v0, :cond_7

    const-string v0, "Try to encode %d bytes remaining of seq: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/shenma/speechrecognition/j;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->f:Lcom/shenma/speechjni/OpusEncoder;

    iget-object v1, p0, Lcom/shenma/speechrecognition/j;->i:[S

    invoke-virtual {v0, v1}, Lcom/shenma/speechjni/OpusEncoder;->a([S)[B

    move-result-object v1

    sget-boolean v0, Lcom/shenma/speechrecognition/aa;->a:Z

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shenma/speechrecognition/j;->n:J

    iget-wide v2, p0, Lcom/shenma/speechrecognition/j;->l:J

    iget-wide v4, p0, Lcom/shenma/speechrecognition/j;->n:J

    iget-wide v6, p0, Lcom/shenma/speechrecognition/j;->m:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/shenma/speechrecognition/j;->l:J

    :cond_6
    array-length v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->i:[S

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/speechrecognition/j;->j:I

    :cond_7
    const-string v0, "Size before encode %d size after encode %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_8

    invoke-direct {p0}, Lcom/shenma/speechrecognition/j;->b()V

    :cond_8
    return-object v1
.end method

.method public run()V
    .locals 14

    const-string v0, "start opus encoding processor."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x780

    invoke-direct {v2, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    move v1, v0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/f;

    const-string v3, "The %d-th packet length[%d] take %dms."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, p0, Lcom/shenma/speechrecognition/j;->h:I

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p0, Lcom/shenma/speechrecognition/j;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->b()[B

    move-result-object v8

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v3, v8, v9}, Lcom/shenma/speechrecognition/j;->a(I[BI)[B

    move-result-object v3

    const-string v8, "The %d-th packet compress to size %d, with time cost %dms"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    array-length v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v2, v3, v6, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    :cond_1
    iget v3, p0, Lcom/shenma/speechrecognition/j;->h:I

    const/16 v6, 0x2580

    if-ge v3, v6, :cond_2

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_0

    :cond_2
    const-string v3, "The %d-th packet after compression size %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/shenma/speechrecognition/f;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    invoke-direct {v3, v0, v6, v7}, Lcom/shenma/speechrecognition/f;-><init>(I[BI)V

    const-string v0, "The %d-th packet after compression size %d, with time cost %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v0, v6}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->a:Lcom/shenma/speechrecognition/ab;

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/f;->b()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/shenma/speechrecognition/ab;->a([BII)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->e:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/shenma/speechrecognition/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/j;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/speechrecognition/j;->h:I

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_3
    neg-int v0, v1

    goto :goto_1
.end method
