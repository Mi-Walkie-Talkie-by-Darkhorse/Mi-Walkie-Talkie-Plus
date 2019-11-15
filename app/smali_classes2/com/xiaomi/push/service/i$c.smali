.class final Lcom/xiaomi/push/service/i$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/i$c$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:Z

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Lcom/xiaomi/push/service/i$c$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/i$c;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->b:Z

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/i$c;->c:J

    new-instance v0, Lcom/xiaomi/push/service/i$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/i$c$a;-><init>(Lcom/xiaomi/push/service/j;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/i$c;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/i$c;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/i$c;->start()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/i$c;)Lcom/xiaomi/push/service/i$c$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/i$c;Lcom/xiaomi/push/service/i$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/i$c;->a(Lcom/xiaomi/push/service/i$d;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/i$d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/i$c$a;->a(Lcom/xiaomi/push/service/i$d;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/i$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/push/service/i$c;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/push/service/i$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->d:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->d:Z

    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i$c$a;->c()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/i$c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->d:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i$c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/i;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/i$c$a;->a()Lcom/xiaomi/push/service/i$d;

    move-result-object v2

    iget-object v3, v2, Lcom/xiaomi/push/service/i$d;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v4, v2, Lcom/xiaomi/push/service/i$d;->b:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/i$c$a;->c(I)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_5
    iget-wide v4, v2, Lcom/xiaomi/push/service/i$d;->c:J

    sub-long v0, v4, v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_6

    :try_start_6
    iget-wide v2, p0, Lcom/xiaomi/push/service/i$c;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    iget-wide v0, p0, Lcom/xiaomi/push/service/i$c;->c:J

    :cond_4
    iget-wide v2, p0, Lcom/xiaomi/push/service/i$c;->c:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaomi/push/service/i$c;->c:J

    iget-wide v2, p0, Lcom/xiaomi/push/service/i$c;->c:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/xiaomi/push/service/i$c;->c:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    :cond_6
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/i$c;->c:J

    iget-object v1, v2, Lcom/xiaomi/push/service/i$d;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v0, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/i$c$a;->a()Lcom/xiaomi/push/service/i$d;

    move-result-object v3

    iget-wide v4, v3, Lcom/xiaomi/push/service/i$d;->c:J

    iget-wide v6, v2, Lcom/xiaomi/push/service/i$d;->c:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/i$c$a;->a(Lcom/xiaomi/push/service/i$c$a;Lcom/xiaomi/push/service/i$d;)I

    move-result v0

    :cond_7
    iget-boolean v3, v2, Lcom/xiaomi/push/service/i$d;->b:Z

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    iget-object v3, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-static {v3, v2}, Lcom/xiaomi/push/service/i$c$a;->a(Lcom/xiaomi/push/service/i$c$a;Lcom/xiaomi/push/service/i$d;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/i$c$a;->c(I)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_d
    iget-wide v4, v2, Lcom/xiaomi/push/service/i$d;->c:J

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/i$d;->a(J)V

    iget-object v3, p0, Lcom/xiaomi/push/service/i$c;->f:Lcom/xiaomi/push/service/i$c$a;

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/service/i$c$a;->c(I)V

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/xiaomi/push/service/i$d;->c:J

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/i$c;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->b:Z

    iget-object v0, v2, Lcom/xiaomi/push/service/i$d;->d:Lcom/xiaomi/push/service/i$b;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/i$b;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/i$c;->b:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/xiaomi/push/service/i$c;->d:Z

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_4
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method
