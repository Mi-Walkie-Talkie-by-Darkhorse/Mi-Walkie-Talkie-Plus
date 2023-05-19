.class public Lcom/shanlitech/et/c/c;
.super Ljava/lang/Object;
.source "AlarmSchedule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/c/c$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "c"

.field private static i:Lcom/shanlitech/et/c/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/BroadcastReceiver;

.field private volatile c:J

.field private volatile d:J

.field private volatile e:Ljava/util/concurrent/TimeUnit;

.field private volatile f:Lcom/shanlitech/et/c/c$b;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xa

    .line 2
    iput-wide v0, p0, Lcom/shanlitech/et/c/c;->c:J

    const-wide/16 v0, 0x5

    .line 3
    iput-wide v0, p0, Lcom/shanlitech/et/c/c;->d:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shanlitech/et/c/c;->g:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    .line 7
    new-instance p1, Lcom/shanlitech/et/c/c$a;

    invoke-direct {p1, p0}, Lcom/shanlitech/et/c/c$a;-><init>(Lcom/shanlitech/et/c/c;)V

    iput-object p1, p0, Lcom/shanlitech/et/c/c;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/shanlitech/et/c/c;)Lcom/shanlitech/et/c/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/c/c;->f:Lcom/shanlitech/et/c/c$b;

    return-object p0
.end method

.method static synthetic b(Lcom/shanlitech/et/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/c/c;->e()V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p1, 0xe9

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/shanlitech/et/c/c;
    .locals 2

    const-class v0, Lcom/shanlitech/et/c/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/c/c;->i:Lcom/shanlitech/et/c/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/shanlitech/et/c/c;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/c/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shanlitech/et/c/c;->i:Lcom/shanlitech/et/c/c;

    .line 3
    :cond_0
    sget-object p0, Lcom/shanlitech/et/c/c;->i:Lcom/shanlitech/et/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/c/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    sget-object v0, Lcom/shanlitech/et/c/c;->h:Ljava/lang/String;

    const-string v1, "delay <= 0, cancel schedule!"

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    if-nez v4, :cond_1

    .line 4
    sget-object v0, Lcom/shanlitech/et/c/c;->h:Ljava/lang/String;

    const-string v1, "device dose not exist alarm service"

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v7, 0x0

    const-string v8, "shanli.tob.schedule.heartbeat"

    if-lt v5, v6, :cond_2

    .line 7
    iget-object v2, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/shanlitech/et/c/c;->c:J

    .line 8
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    .line 9
    invoke-static {v2, v8}, Lcom/shanlitech/et/c/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 10
    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x13

    if-lt v5, v6, :cond_4

    .line 11
    iget-wide v5, p0, Lcom/shanlitech/et/c/c;->d:J

    cmp-long v9, v5, v2

    if-gtz v9, :cond_3

    .line 12
    iget-object v2, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/shanlitech/et/c/c;->c:J

    .line 13
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    .line 14
    invoke-static {v2, v8}, Lcom/shanlitech/et/c/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 15
    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 16
    iget-object v2, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/shanlitech/et/c/c;->c:J

    .line 17
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long v6, v0, v2

    iget-object v0, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/shanlitech/et/c/c;->d:J

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    .line 19
    invoke-static {v2, v8}, Lcom/shanlitech/et/c/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    move-wide v8, v0

    .line 20
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/shanlitech/et/c/c;->c:J

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    .line 23
    invoke-static {v2, v8}, Lcom/shanlitech/et/c/c;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 24
    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/c/c;->g:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "shanli.tob.schedule.heartbeat"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/shanlitech/et/c/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-direct {p0}, Lcom/shanlitech/et/c/c;->e()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shanlitech/et/c/c;->g:Z

    :cond_0
    return-void
.end method

.method public g(Lcom/shanlitech/et/c/c$b;)Lcom/shanlitech/et/c/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/c/c;->f:Lcom/shanlitech/et/c/c$b;

    return-object p0
.end method

.method public h(JJLjava/util/concurrent/TimeUnit;)Lcom/shanlitech/et/c/c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/c/c;->c:J

    .line 2
    iput-wide p3, p0, Lcom/shanlitech/et/c/c;->d:J

    .line 3
    iput-object p5, p0, Lcom/shanlitech/et/c/c;->e:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shanlitech/et/c/c;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/c/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/shanlitech/et/c/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shanlitech/et/c/c;->g:Z

    :cond_0
    return-void
.end method
