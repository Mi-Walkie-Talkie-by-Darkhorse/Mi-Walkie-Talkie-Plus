.class public Lcom/xiaomi/mistatistic/sdk/network/c;
.super Ljava/net/HttpURLConnection;
.source "MIHttpConnection.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/xiaomi/mistatistic/sdk/network/f;

.field private i:Lcom/xiaomi/mistatistic/sdk/network/e;

.field private j:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Z

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/network/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/network/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/network/e;->a()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/network/f;->a()I

    move-result v1

    :cond_0
    add-int/lit16 v0, v0, 0x44c

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/network/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/network/c$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/network/c$1;-><init>(Lcom/xiaomi/mistatistic/sdk/network/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "MHC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get ip exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->b()V

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J

    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 6

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Z

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->f()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setIp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    :cond_0
    return-void
.end method

.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b()V
    .locals 7

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->f:Z

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->b:J

    sub-long/2addr v2, v4

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->c()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->f()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJI)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setIp(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setFirstPacketCost(J)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setRequestId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->b()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->g()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/e;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/e;-><init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->h()V

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->d()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->i:Lcom/xiaomi/mistatistic/sdk/network/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->e()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->g()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/network/f;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/network/f;-><init>(Lcom/xiaomi/mistatistic/sdk/network/c;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->h()V

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->d()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->h:Lcom/xiaomi/mistatistic/sdk/network/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->e()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->g()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:I

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/network/c;->h()V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->e:I
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFixedLengthStreamingMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "x-mistats-header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
