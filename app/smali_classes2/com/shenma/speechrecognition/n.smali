.class Lcom/shenma/speechrecognition/n;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Landroid/media/AudioRecord;

.field private final b:Ljava/util/UUID;

.field private final c:Lcom/shenma/speechrecognition/l;

.field private final d:Lcom/shenma/speechrecognition/v;

.field private final e:Lcom/shenma/speechrecognition/ae;

.field private final f:I

.field private final g:[B

.field private volatile h:Lcom/shenma/speechrecognition/g;

.field private i:Lcom/shenma/speechrecognition/m;


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord;Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object v0, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    iput-object p1, p0, Lcom/shenma/speechrecognition/n;->a:Landroid/media/AudioRecord;

    iput-object p2, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    iput-object p3, p0, Lcom/shenma/speechrecognition/n;->c:Lcom/shenma/speechrecognition/l;

    iput-object p4, p0, Lcom/shenma/speechrecognition/n;->d:Lcom/shenma/speechrecognition/v;

    iput-object p5, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    const/16 v0, 0x280

    iput v0, p0, Lcom/shenma/speechrecognition/n;->f:I

    iget v0, p0, Lcom/shenma/speechrecognition/n;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shenma/speechrecognition/n;->g:[B

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "Start audio record thread. current recording status:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    new-instance v0, Lcom/shenma/speechrecognition/m;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/shenma/speechrecognition/n;->c:Lcom/shenma/speechrecognition/l;

    iget-object v3, p0, Lcom/shenma/speechrecognition/n;->d:Lcom/shenma/speechrecognition/v;

    iget-object v4, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shenma/speechrecognition/m;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/n;->i:Lcom/shenma/speechrecognition/m;

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->i:Lcom/shenma/speechrecognition/m;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/m;->a()V

    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Stop audio record thread. current recording status:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Release audio record thread. current recording status:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    invoke-virtual {v3}, Lcom/shenma/speechrecognition/g;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->i:Lcom/shenma/speechrecognition/m;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/m;->b()V
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
    .locals 14

    const/4 v13, 0x3

    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v0, "start new audio record."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    const-string v0, "audioRecord uninitialized."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1, v13}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v1

    :cond_2
    iget-object v6, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    sget-object v8, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-eq v6, v8, :cond_4

    :goto_1
    const-string v0, "Last block size:%d, finish collecting %d-th packet data."

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    neg-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/ae;->b(Ljava/util/UUID;)V

    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->i:Lcom/shenma/speechrecognition/m;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->g:[B

    neg-int v2, v3

    invoke-virtual {v0, v1, v5, v2}, Lcom/shenma/speechrecognition/m;->a([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "startRecording() called on an uninitialized AudioRecord."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/shenma/speechrecognition/n;->a:Landroid/media/AudioRecord;

    iget-object v8, p0, Lcom/shenma/speechrecognition/n;->g:[B

    iget v9, p0, Lcom/shenma/speechrecognition/n;->f:I

    sub-int/2addr v9, v5

    invoke-virtual {v6, v8, v5, v9}, Landroid/media/AudioRecord;->read([BII)I

    move-result v9

    const-string v6, "seq:%d; Request len:%d; Size read from record:%d"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v1

    iget v10, p0, Lcom/shenma/speechrecognition/n;->f:I

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v12

    invoke-static {v6, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v9, :cond_f

    move v6, v1

    move v8, v7

    :goto_2
    if-ge v6, v9, :cond_5

    iget-object v10, p0, Lcom/shenma/speechrecognition/n;->g:[B

    aget-byte v10, v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    int-to-float v6, v9

    div-float v6, v8, v6

    :goto_3
    const-string v8, "seq:%d volume:%f."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v8, v10}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_9

    const/16 v8, 0x14

    if-lt v2, v8, :cond_6

    const-string v0, "No audio data exception."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/ae;->c(Ljava/util/UUID;)V

    goto/16 :goto_0

    :cond_6
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_7

    if-gez v9, :cond_a

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/shenma/speechrecognition/n;->h:Lcom/shenma/speechrecognition/g;

    sget-object v8, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-eq v6, v8, :cond_2

    goto/16 :goto_1

    :cond_9
    if-ltz v9, :cond_8

    :cond_a
    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    if-eqz v0, :cond_c

    if-ne v3, v4, :cond_b

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v2, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;)V

    :cond_b
    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v2, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    invoke-virtual {v0, v2, v6}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;F)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v2, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    iget-object v6, p0, Lcom/shenma/speechrecognition/n;->g:[B

    invoke-virtual {v0, v2, v6}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;[B)V

    :cond_c
    add-int/2addr v5, v9

    const-string v0, "readOffset:%d;readBufferSize:%d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    iget v6, p0, Lcom/shenma/speechrecognition/n;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/shenma/speechrecognition/n;->f:I

    if-ne v5, v0, :cond_e

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->i:Lcom/shenma/speechrecognition/m;

    iget-object v2, p0, Lcom/shenma/speechrecognition/n;->g:[B

    invoke-virtual {v0, v2, v5, v3}, Lcom/shenma/speechrecognition/m;->a([BII)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->g:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    move v2, v1

    move v5, v1

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/n;->e:Lcom/shenma/speechrecognition/ae;

    iget-object v1, p0, Lcom/shenma/speechrecognition/n;->b:Ljava/util/UUID;

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;I)V

    goto/16 :goto_0

    :cond_e
    move v0, v4

    move v2, v1

    goto :goto_4

    :cond_f
    move v6, v7

    goto/16 :goto_3
.end method
