.class Lpl/droidsonroids/gif/k;
.super Lpl/droidsonroids/gif/l;
.source "RenderTask.java"


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/l;-><init>(Lpl/droidsonroids/gif/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v1, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v1, v1, Lpl/droidsonroids/gif/c;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, v2, Lpl/droidsonroids/gif/c;->c:J

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-boolean v2, v2, Lpl/droidsonroids/gif/c;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-boolean v2, v2, Lpl/droidsonroids/gif/c;->h:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v2, v2, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v3, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v3, v3, Lpl/droidsonroids/gif/c;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v2, Lpl/droidsonroids/gif/c;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->d()I

    move-result v0

    iget-object v1, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v1, v1, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    iget-object v1, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/c;->e()I

    move-result v1

    iget-object v2, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-wide v2, v2, Lpl/droidsonroids/gif/c;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/g;->sendEmptyMessageAtTime(IJ)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    invoke-virtual {v0, v6}, Lpl/droidsonroids/gif/g;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/g;

    invoke-virtual {v0, v6, v8, v9}, Lpl/droidsonroids/gif/g;->sendEmptyMessageAtTime(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v0, Lpl/droidsonroids/gif/c;->c:J

    iget-object v0, p0, Lpl/droidsonroids/gif/k;->c:Lpl/droidsonroids/gif/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lpl/droidsonroids/gif/c;->b:Z

    goto :goto_0
.end method
