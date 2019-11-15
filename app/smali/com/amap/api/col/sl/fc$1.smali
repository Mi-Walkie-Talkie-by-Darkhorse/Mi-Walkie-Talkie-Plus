.class final Lcom/amap/api/col/sl/fc$1;
.super Ljava/util/TimerTask;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/sl/fc;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/fc;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/sl/fc$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v2}, Lcom/amap/api/col/sl/fc;->a(Lcom/amap/api/col/sl/fc;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v2}, Lcom/amap/api/col/sl/fc;->b(Lcom/amap/api/col/sl/fc;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v2}, Lcom/amap/api/col/sl/fc;->c(Lcom/amap/api/col/sl/fc;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v2}, Lcom/amap/api/col/sl/fc;->d(Lcom/amap/api/col/sl/fc;)V

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v0}, Lcom/amap/api/col/sl/fc;->e(Lcom/amap/api/col/sl/fc;)Lcom/amap/api/col/sl/fe;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v0}, Lcom/amap/api/col/sl/fc;->e(Lcom/amap/api/col/sl/fc;)Lcom/amap/api/col/sl/fe;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v1}, Lcom/amap/api/col/sl/fc;->f(Lcom/amap/api/col/sl/fc;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    iget v1, p0, Lcom/amap/api/col/sl/fc$1;->a:I

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fc;->a(Lcom/amap/api/col/sl/fc;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fc$1;->b:Lcom/amap/api/col/sl/fc;

    invoke-static {v0}, Lcom/amap/api/col/sl/fc;->d(Lcom/amap/api/col/sl/fc;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
