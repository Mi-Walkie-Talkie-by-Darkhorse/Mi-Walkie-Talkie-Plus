.class Lcom/shenma/speechrecognition/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/shenma/speechrecognition/g;

.field private final b:Lcom/shenma/speechrecognition/ae;

.field private c:Lcom/shenma/speechrecognition/n;

.field private d:Lcom/shenma/speechrecognition/z;

.field private e:Landroid/media/AudioRecord;

.field private f:I

.field private g:Z

.field private final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/shenma/speechrecognition/ae;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/k;->g:Z

    new-instance v0, Lcom/shenma/speechrecognition/d;

    invoke-direct {v0, p0}, Lcom/shenma/speechrecognition/d;-><init>(Lcom/shenma/speechrecognition/k;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->h:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/shenma/speechrecognition/k;->b:Lcom/shenma/speechrecognition/ae;

    return-void
.end method

.method private d()I
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/speechrecognition/k;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/16 v4, 0x3e80

    const/16 v3, 0x10

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    if-eq v0, v1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-static {v4, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x2

    if-eq v1, v0, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    :cond_1
    const-string v1, "AudioRecord.getMinBufferSize error:%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    goto :goto_0

    :cond_2
    const v1, 0x3e800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/shenma/speechrecognition/k;->f:I

    const-string v1, "minBufferSize:%d, mRecordBufferSize:%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    iget v0, p0, Lcom/shenma/speechrecognition/k;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/shenma/speechrecognition/k;->d()I

    move-result v1

    const-string v0, "AudioSource:%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/shenma/speechrecognition/k;->f:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    const-string v0, "AudioRecord audioSource:%d, sampleRate:%d, channels:%d, audioEncoding:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const/16 v3, 0x3e80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v6, :cond_3

    sget-object v0, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_4

    move v0, v6

    :goto_2
    move v6, v0

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, "Initialize audio device error with state:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Initialize audio error"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_2
.end method

.method public a(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    if-eq v0, v1, :cond_0

    const-string v0, "Recorder state error, can not normally open."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v7

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/shenma/speechrecognition/l;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/shenma/speechrecognition/k;->g:Z

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/k;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/shenma/speechrecognition/z;

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->b:Lcom/shenma/speechrecognition/ae;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/shenma/speechrecognition/z;-><init>(Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->d:Lcom/shenma/speechrecognition/z;

    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->d:Lcom/shenma/speechrecognition/z;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/z;->a()V

    :goto_2
    sget-object v0, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-ne v0, v1, :cond_3

    move v0, v6

    :goto_4
    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/shenma/speechrecognition/n;

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/shenma/speechrecognition/k;->b:Lcom/shenma/speechrecognition/ae;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/shenma/speechrecognition/n;-><init>(Landroid/media/AudioRecord;Ljava/util/UUID;Lcom/shenma/speechrecognition/l;Lcom/shenma/speechrecognition/v;Lcom/shenma/speechrecognition/ae;)V

    iput-object v0, p0, Lcom/shenma/speechrecognition/k;->c:Lcom/shenma/speechrecognition/n;

    iget-object v0, p0, Lcom/shenma/speechrecognition/k;->c:Lcom/shenma/speechrecognition/n;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/n;->a()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Start audio recording error"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v0, v7

    goto :goto_4
.end method

.method public b()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v2, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    if-eq v1, v2, :cond_1

    const-string v1, "Recorder state error, can not normally shut down."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/shenma/speechrecognition/k;->g:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->d:Lcom/shenma/speechrecognition/z;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->d:Lcom/shenma/speechrecognition/z;

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/z;->b()V

    :cond_2
    :goto_1
    sget-object v1, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    iput-object v1, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v2, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    :cond_4
    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->c:Lcom/shenma/speechrecognition/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->c:Lcom/shenma/speechrecognition/n;

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/n;->b()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Stop audio recording error"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shenma/speechrecognition/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v2, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    if-ne v1, v2, :cond_1

    const-string v1, "Recorder state error, can not normally release it."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/shenma/speechrecognition/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/shenma/speechrecognition/k;->g:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->d:Lcom/shenma/speechrecognition/z;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->d:Lcom/shenma/speechrecognition/z;

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/z;->c()V

    :cond_2
    :goto_1
    sget-object v1, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    iput-object v1, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->a:Lcom/shenma/speechrecognition/g;

    sget-object v2, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->e:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_4
    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->c:Lcom/shenma/speechrecognition/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/speechrecognition/k;->c:Lcom/shenma/speechrecognition/n;

    invoke-virtual {v1}, Lcom/shenma/speechrecognition/n;->c()V

    goto :goto_1
.end method
