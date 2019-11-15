.class Lcom/shenma/speechrecognition/r;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private volatile b:Z

.field private final c:Ljava/util/UUID;

.field private final d:Lcom/shenma/speechrecognition/ae;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/ae;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/r;->b:Z

    iput-object p1, p0, Lcom/shenma/speechrecognition/r;->c:Ljava/util/UUID;

    iput-object p3, p0, Lcom/shenma/speechrecognition/r;->d:Lcom/shenma/speechrecognition/ae;

    iput-object p4, p0, Lcom/shenma/speechrecognition/r;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/r;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/r;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/r;->g:Ljava/lang/String;

    const/16 v0, 0x1900

    iput v0, p0, Lcom/shenma/speechrecognition/r;->h:I

    const/16 v0, 0x7d00

    iput v0, p0, Lcom/shenma/speechrecognition/r;->i:I

    const v0, 0x35200

    iput v0, p0, Lcom/shenma/speechrecognition/r;->j:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/shenma/speechrecognition/r;->b:Z

    invoke-virtual {p0}, Lcom/shenma/speechrecognition/r;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 20

    const-string v2, "start vader."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, -0x14

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v9, Lcom/shenma/speechjni/ShenmaVad;

    invoke-direct {v9}, Lcom/shenma/speechjni/ShenmaVad;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shenma/speechrecognition/r;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/shenma/speechrecognition/r;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/shenma/speechrecognition/r;->g:Ljava/lang/String;

    invoke-virtual {v9, v4, v5, v6}, Lcom/shenma/speechjni/ShenmaVad;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "VAD initialization failure. FbPath:%s, FtPath:%s, NnPath:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/shenma/speechrecognition/r;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/shenma/speechrecognition/r;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/shenma/speechrecognition/r;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v9}, Lcom/shenma/speechjni/ShenmaVad;->reset()I

    const-string v4, "VAD has been initialized for %dms."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    new-instance v10, Lorg/apache/http/util/ByteArrayBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/shenma/speechrecognition/r;->h:I

    invoke-direct {v10, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/shenma/speechrecognition/r;->h:I

    new-array v12, v2, [B

    const/4 v2, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shenma/speechrecognition/r;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/speechrecognition/f;

    const-string v8, "VAD process %d-th packet length[%d] take %dms."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v16

    invoke-static {v8, v13}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/f;->a()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gez v8, :cond_3

    :cond_2
    :goto_2
    invoke-virtual {v10}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    const/4 v2, 0x0

    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v9}, Lcom/shenma/speechjni/ShenmaVad;->release()I

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/shenma/speechrecognition/r;->b:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/shenma/speechrecognition/f;->b()[B

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/shenma/speechrecognition/f;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v8, v13, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/shenma/speechrecognition/r;->h:I

    add-int/2addr v2, v3

    invoke-virtual {v10}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v8

    if-gt v2, v8, :cond_1

    const-string v2, "Copy %d length array from total length %d subscript %d."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/shenma/speechrecognition/r;->h:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x1

    invoke-virtual {v10}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v13, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    invoke-static {v2, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/shenma/speechrecognition/r;->h:I

    invoke-static {v2, v3, v12, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string v2, "Copied buffer length: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v13, 0x0

    array-length v0, v12

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v13

    invoke-static {v2, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v2, v12

    invoke-virtual {v9, v12, v2}, Lcom/shenma/speechjni/ShenmaVad;->check([BI)[I

    move-result-object v13

    const-string v2, "VAD processing uses %d ms."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v8, v16

    invoke-static {v2, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/shenma/speechrecognition/r;->h:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v11, v3, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_3
    array-length v8, v13

    if-ge v3, v8, :cond_5

    if-lez v3, :cond_4

    const-string v8, " , "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    aget v8, v13, v3

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const-string v3, "}"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Effective VAD check: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    invoke-static {v3, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v3, v13

    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    const/4 v3, 0x0

    aget v3, v13, v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    aget v3, v13, v3

    if-ltz v3, :cond_2

    const/4 v3, 0x0

    aget v8, v13, v3

    const/4 v3, 0x1

    aget v13, v13, v3

    if-nez v4, :cond_7

    if-lez v13, :cond_6

    const/4 v4, 0x1

    move v3, v4

    move v4, v8

    :goto_4
    array-length v5, v12

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    add-int v5, v6, v13

    sub-int v6, v7, v4

    sub-int v14, v6, v5

    const-string v15, "total_length=%d, valid_length=%d, header_silence_length=%d, tail_silence_length=%d, current_valid_length=%d, start_pos=%d, hasSpeechVoice=%d, vadTailThreshold=%d, vadSilenceThreshold=%d"

    const/16 v6, 0x9

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v6

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v6

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v6

    const/4 v6, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v6

    const/4 v6, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v6

    const/4 v6, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v16, v6

    const/4 v8, 0x6

    if-eqz v3, :cond_8

    const/4 v6, 0x1

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v16, v8

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/shenma/speechrecognition/r;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v16, v6

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/shenma/speechrecognition/r;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v16, v6

    invoke-static/range {v15 .. v16}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_9

    mul-int/lit8 v6, v14, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/shenma/speechrecognition/r;->i:I

    if-lt v6, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shenma/speechrecognition/r;->d:Lcom/shenma/speechrecognition/ae;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shenma/speechrecognition/r;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/shenma/speechrecognition/ae;->c(Ljava/util/UUID;)V

    goto/16 :goto_2

    :cond_6
    const-string v3, "start_pos=%d, current_valid_length=%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v3, v14}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move v3, v4

    move v4, v5

    goto/16 :goto_4

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    mul-int/lit8 v6, v14, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/shenma/speechrecognition/r;->j:I

    if-lt v6, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/shenma/speechrecognition/r;->d:Lcom/shenma/speechrecognition/ae;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shenma/speechrecognition/r;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/shenma/speechrecognition/ae;->c(Ljava/util/UUID;)V

    goto/16 :goto_2

    :cond_a
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
