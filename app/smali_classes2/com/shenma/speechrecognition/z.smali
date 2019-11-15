.class Lcom/shenma/speechrecognition/z;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Lcom/shenma/speechrecognition/l;

.field private final c:Lcom/shenma/speechrecognition/v;

.field private final d:Lcom/shenma/speechrecognition/ae;

.field private final e:I

.field private final f:[B

.field private volatile g:Z

.field private h:Lcom/shenma/speechrecognition/m;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/shenma/speechrecognition/z;->b:Lcom/shenma/speechrecognition/l;

    iput-object p3, p0, Lcom/shenma/speechrecognition/z;->c:Lcom/shenma/speechrecognition/v;

    iput-object p4, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    const/16 v0, 0x280

    iput v0, p0, Lcom/shenma/speechrecognition/z;->e:I

    iget v0, p0, Lcom/shenma/speechrecognition/z;->e:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/shenma/speechrecognition/z;->f:[B

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "Start input thread. current reading status:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/shenma/speechrecognition/z;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/z;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/z;->g:Z

    new-instance v0, Lcom/shenma/speechrecognition/m;

    iget-object v1, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    iget-object v2, p0, Lcom/shenma/speechrecognition/z;->b:Lcom/shenma/speechrecognition/l;

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->c:Lcom/shenma/speechrecognition/v;

    iget-object v4, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shenma/speechrecognition/m;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/z;->h:Lcom/shenma/speechrecognition/m;

    iget-object v0, p0, Lcom/shenma/speechrecognition/z;->h:Lcom/shenma/speechrecognition/m;

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
    const-string v0, "Stop input thread. current reading status:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/shenma/speechrecognition/z;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/z;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/z;->g:Z
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
    const-string v0, "Release input thread. current reading status:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/shenma/speechrecognition/z;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/z;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shenma/speechrecognition/z;->b()V

    :cond_0
    iget-object v0, p0, Lcom/shenma/speechrecognition/z;->h:Lcom/shenma/speechrecognition/m;

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
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "start new audio read."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/shenma/speechrecognition/z;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/l;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v2

    move v1, v4

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->f:[B

    iget v8, p0, Lcom/shenma/speechrecognition/z;->e:I

    sub-int/2addr v8, v1

    invoke-virtual {v5, v3, v1, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const-string v3, "seq:%d; Request len:%d; Size read from read:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/shenma/speechrecognition/z;->e:I

    sub-int/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v8, :cond_3

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    iget-object v6, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    invoke-virtual {v3, v6}, Lcom/shenma/speechrecognition/ae;->c(Ljava/util/UUID;)V

    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    const-string v3, "Last block size:%d, finish collecting %d-th packet data."

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/shenma/speechrecognition/ae;->b(Ljava/util/UUID;)V

    :cond_2
    iget-object v2, p0, Lcom/shenma/speechrecognition/z;->h:Lcom/shenma/speechrecognition/m;

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->f:[B

    neg-int v0, v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/shenma/speechrecognition/m;->a([BII)V

    return-void

    :cond_3
    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_4

    :try_start_2
    iget-object v9, p0, Lcom/shenma/speechrecognition/z;->f:[B

    aget-byte v9, v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v10, v9

    add-double/2addr v6, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    int-to-float v3, v8

    float-to-double v10, v3

    div-double/2addr v6, v10

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    if-eqz v3, :cond_6

    if-ne v0, v2, :cond_5

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    iget-object v9, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    invoke-virtual {v3, v9}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;)V

    :cond_5
    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    iget-object v9, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    double-to-float v10, v6

    invoke-virtual {v3, v9, v10}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;F)V

    iget-object v3, p0, Lcom/shenma/speechrecognition/z;->d:Lcom/shenma/speechrecognition/ae;

    iget-object v9, p0, Lcom/shenma/speechrecognition/z;->a:Ljava/util/UUID;

    iget-object v10, p0, Lcom/shenma/speechrecognition/z;->f:[B

    invoke-virtual {v3, v9, v10}, Lcom/shenma/speechrecognition/ae;->a(Ljava/util/UUID;[B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    add-int v3, v1, v8

    :try_start_3
    const-string v1, "sizeReadInTotal:%d;readBufferSize:%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/shenma/speechrecognition/z;->e:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/shenma/speechrecognition/z;->e:I

    if-ne v3, v1, :cond_7

    iget-object v8, p0, Lcom/shenma/speechrecognition/z;->h:Lcom/shenma/speechrecognition/m;

    iget-object v9, p0, Lcom/shenma/speechrecognition/z;->f:[B
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    add-int/lit8 v1, v0, 0x1

    :try_start_4
    invoke-virtual {v8, v9, v3, v0}, Lcom/shenma/speechrecognition/m;->a([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move v0, v1

    move v1, v4

    :goto_3
    const-wide/16 v8, 0xa

    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    :try_start_6
    iget-boolean v3, p0, Lcom/shenma/speechrecognition/z;->g:Z

    if-nez v3, :cond_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_1
    move-exception v3

    :goto_5
    const-string v3, "Input file not found:%s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shenma/speechrecognition/z;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v6}, Lcom/shenma/speechrecognition/l;->k()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move v0, v2

    move v1, v4

    :goto_6
    const-string v3, "Input file read exception:%s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shenma/speechrecognition/z;->b:Lcom/shenma/speechrecognition/l;

    invoke-virtual {v6}, Lcom/shenma/speechrecognition/l;->k()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_3
    move-exception v3

    goto :goto_6

    :catch_4
    move-exception v1

    move v1, v3

    goto :goto_6

    :catch_5
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_6

    :catch_6
    move-exception v0

    move v0, v2

    move v1, v4

    goto :goto_5

    :catch_7
    move-exception v1

    move v1, v3

    goto :goto_5

    :catch_8
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_3
.end method
