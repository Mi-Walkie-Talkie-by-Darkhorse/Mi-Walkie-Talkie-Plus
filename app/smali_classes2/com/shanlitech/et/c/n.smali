.class public Lcom/shanlitech/et/c/n;
.super Ljava/lang/Object;
.source "TimeInernetNow.java"


# static fields
.field private static volatile a:Lcom/shanlitech/et/c/n;

.field private static b:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/c/n;->b:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/c/n;->c()V

    return-void
.end method

.method public static a()Lcom/shanlitech/et/c/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/c/n;->a:Lcom/shanlitech/et/c/n;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shanlitech/et/c/n;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/c/n;->a:Lcom/shanlitech/et/c/n;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shanlitech/et/c/n;

    invoke-direct {v1}, Lcom/shanlitech/et/c/n;-><init>()V

    sput-object v1, Lcom/shanlitech/et/c/n;->a:Lcom/shanlitech/et/c/n;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shanlitech/et/c/n;->a:Lcom/shanlitech/et/c/n;

    return-object v0
.end method

.method private c()V
    .locals 4

    const-string v0, "http://www.baidu.com"

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x1388

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/c/n;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/shanlitech/et/c/n;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
