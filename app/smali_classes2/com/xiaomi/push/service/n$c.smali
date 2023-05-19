.class final Lcom/xiaomi/push/service/n$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/n$c$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private a:Lcom/xiaomi/push/service/n$c$a;

.field private volatile a:Z

.field private b:J

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->a:Z

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    new-instance v0, Lcom/xiaomi/push/service/n$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/n$c$a;-><init>(Lcom/xiaomi/push/service/o;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;)Lcom/xiaomi/push/service/n$c$a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;Lcom/xiaomi/push/service/n$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$d;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/n$d;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$d;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/push/service/n$c;->c:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$c$a;->a()V

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

.method public a()Z
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/n$c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 10

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->c:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :catch_0
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/push/service/n;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/n$c$a;->a()Lcom/xiaomi/push/service/n$d;

    move-result-object v2

    iget-object v3, v2, Lcom/xiaomi/push/service/n$d;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-boolean v4, v2, Lcom/xiaomi/push/service/n$d;->a:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    monitor-exit v3

    goto :goto_1

    :cond_3
    iget-wide v6, v2, Lcom/xiaomi/push/service/n$d;->a:J

    sub-long/2addr v6, v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/16 v0, 0x32

    const-wide/16 v3, 0x0

    cmp-long v8, v6, v3

    if-lez v8, :cond_6

    :try_start_4
    iget-wide v2, p0, Lcom/xiaomi/push/service/n$c;->b:J

    cmp-long v4, v6, v2

    if-lez v4, :cond_4

    move-wide v6, v2

    :cond_4
    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/xiaomi/push/service/n$c;->b:J

    const-wide/16 v0, 0x1f4

    cmp-long v4, v2, v0

    if-lez v4, :cond_5

    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_5
    :try_start_5
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :cond_6
    :try_start_6
    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    iget-object v0, v2, Lcom/xiaomi/push/service/n$d;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/n$c$a;->a()Lcom/xiaomi/push/service/n$d;

    move-result-object v1

    iget-wide v6, v1, Lcom/xiaomi/push/service/n$d;->a:J

    iget-wide v8, v2, Lcom/xiaomi/push/service/n$d;->a:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$c$a;Lcom/xiaomi/push/service/n$d;)I

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    iget-boolean v6, v2, Lcom/xiaomi/push/service/n$d;->a:Z

    if-eqz v6, :cond_8

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$c$a;Lcom/xiaomi/push/service/n$d;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    monitor-exit v0

    goto :goto_1

    :cond_8
    iget-wide v6, v2, Lcom/xiaomi/push/service/n$d;->a:J

    invoke-virtual {v2, v6, v7}, Lcom/xiaomi/push/service/n$d;->a(J)V

    iget-object v6, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v6, v1}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    iput-wide v3, v2, Lcom/xiaomi/push/service/n$d;->a:J

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v0, 0x1

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaomi/push/service/n$c;->a:J

    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->a:Z

    iget-object v1, v2, Lcom/xiaomi/push/service/n$d;->a:Lcom/xiaomi/push/service/n$b;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-boolean v5, p0, Lcom/xiaomi/push/service/n$c;->a:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-enter p0

    :try_start_a
    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0
.end method
