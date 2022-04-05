.class Lcom/umeng/commonsdk/utils/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/utils/a;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget-object p1, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->a(Lcom/umeng/commonsdk/utils/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->b(Lcom/umeng/commonsdk/utils/a;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/utils/a;->c()V

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->c(Lcom/umeng/commonsdk/utils/a;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->c(Lcom/umeng/commonsdk/utils/a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->d(Lcom/umeng/commonsdk/utils/a;)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->e(Lcom/umeng/commonsdk/utils/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/a;->e(Lcom/umeng/commonsdk/utils/a;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-virtual {v0, v2, v3}, Lcom/umeng/commonsdk/utils/a;->a(J)V

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->d(Lcom/umeng/commonsdk/utils/a;)J

    move-result-wide v2

    add-long/2addr v6, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v6, v2

    :goto_0
    cmp-long v0, v6, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->d(Lcom/umeng/commonsdk/utils/a;)J

    move-result-wide v2

    add-long/2addr v6, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/a;->e(Lcom/umeng/commonsdk/utils/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/commonsdk/utils/a$1;->a:Lcom/umeng/commonsdk/utils/a;

    invoke-static {v2}, Lcom/umeng/commonsdk/utils/a;->e(Lcom/umeng/commonsdk/utils/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
