.class public Lcom/xiaomi/stats/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/d;


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field b:Lcom/xiaomi/smack/a;

.field private c:I

.field private d:Ljava/lang/Exception;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->f:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->g:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->h:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->i:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->j:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->k:J

    iput-object p1, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/network/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stats/e;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/stats/e;->c()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/stats/e;->k:J

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->j:J

    return-void
.end method

.method private c()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->g:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->i:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->f:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->f:J

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->h:J

    :cond_1
    return-void
.end method

.method private declared-synchronized d()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat connpt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stats/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " netDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/stats/e;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ChannelDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/stats/e;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channelConnectedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/stats/e;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/thrift/b;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/b;-><init>()V

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/b;->a:B

    sget-object v1, Lcom/xiaomi/push/thrift/a;->h:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    iget-object v1, p0, Lcom/xiaomi/stats/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->d(I)Lcom/xiaomi/push/thrift/b;

    iget-wide v2, p0, Lcom/xiaomi/stats/e;->g:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->b(I)Lcom/xiaomi/push/thrift/b;

    iget-wide v2, p0, Lcom/xiaomi/stats/e;->i:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->c(I)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V

    invoke-direct {p0}, Lcom/xiaomi/stats/e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stats/e;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method public a(Lcom/xiaomi/smack/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/stats/e;->b()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->h:J

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->l()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stats/h;->a(IILjava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;ILjava/lang/Exception;)V
    .locals 8

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/xiaomi/stats/e;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stats/e;->d:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iput p2, p0, Lcom/xiaomi/stats/e;->c:I

    iput-object p3, p0, Lcom/xiaomi/stats/e;->d:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/stats/h;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    iget-wide v0, p0, Lcom/xiaomi/stats/e;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->g()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/xiaomi/stats/e;->h:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Lcom/xiaomi/smack/g;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/xiaomi/stats/e;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->i:J

    iput-wide v2, p0, Lcom/xiaomi/stats/e;->h:J

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/stats/e;->b()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats rx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/xiaomi/stats/e;->k:J

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/xiaomi/stats/e;->j:J

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/xiaomi/stats/e;->k:J

    iput-wide v0, p0, Lcom/xiaomi/stats/e;->j:J

    return-void
.end method

.method public a(Lcom/xiaomi/smack/a;Ljava/lang/Exception;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/xiaomi/push/thrift/a;->d:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaomi/smack/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v0}, Lcom/xiaomi/stats/h;->a(IIILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/stats/e;->b()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 10

    const-wide/16 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/network/d;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/stats/e;->f:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/xiaomi/stats/e;->g:J

    iget-wide v6, p0, Lcom/xiaomi/stats/e;->f:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/stats/e;->g:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/stats/e;->f:J

    :cond_2
    iget-wide v4, p0, Lcom/xiaomi/stats/e;->h:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/xiaomi/stats/e;->i:J

    iget-wide v6, p0, Lcom/xiaomi/stats/e;->h:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/stats/e;->i:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/stats/e;->h:J

    :cond_3
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stats/e;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v4, p0, Lcom/xiaomi/stats/e;->g:J

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    :cond_4
    iget-wide v4, p0, Lcom/xiaomi/stats/e;->g:J

    const-wide/32 v6, 0x5265c0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/stats/e;->d()V

    :cond_6
    iput-object v0, p0, Lcom/xiaomi/stats/e;->e:Ljava/lang/String;

    iget-wide v0, p0, Lcom/xiaomi/stats/e;->f:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    iput-wide v2, p0, Lcom/xiaomi/stats/e;->f:J

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/stats/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/xiaomi/stats/e;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/xiaomi/smack/a;)V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/stats/e;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stats/e;->d:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/xiaomi/stats/e;->b:Lcom/xiaomi/smack/a;

    sget-object v0, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/stats/h;->a(II)V

    return-void
.end method
