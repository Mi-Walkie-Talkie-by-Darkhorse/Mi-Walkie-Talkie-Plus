.class public Lcom/xiaomi/channel/commonutils/misc/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/misc/g$b;,
        Lcom/xiaomi/channel/commonutils/misc/g$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/channel/commonutils/misc/g;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->d:Ljava/lang/Object;

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->e:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/misc/g;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/g;
    .locals 2

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/g;->a:Lcom/xiaomi/channel/commonutils/misc/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/channel/commonutils/misc/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/g;->a:Lcom/xiaomi/channel/commonutils/misc/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/g;->a:Lcom/xiaomi/channel/commonutils/misc/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/g;->a:Lcom/xiaomi/channel/commonutils/misc/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_job_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/xiaomi/channel/commonutils/misc/g$a;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/misc/g$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(Lcom/xiaomi/channel/commonutils/misc/g$a;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Lcom/xiaomi/channel/commonutils/misc/g$a;II)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/xiaomi/channel/commonutils/misc/g$a;II)Z
    .locals 7

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Lcom/xiaomi/channel/commonutils/misc/g$a;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/misc/g$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/channel/commonutils/misc/h;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaomi/channel/commonutils/misc/h;-><init>(Lcom/xiaomi/channel/commonutils/misc/g;Lcom/xiaomi/channel/commonutils/misc/g$a;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/misc/g;->e:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-int v0, p2, p3

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    int-to-long v4, p2

    sub-long v2, v4, v2

    long-to-int p3, v2

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/g;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/misc/g;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/misc/g$a;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
