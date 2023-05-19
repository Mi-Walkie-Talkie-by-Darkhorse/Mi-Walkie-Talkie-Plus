.class public Lcom/ifengyu/blelib/b/b;
.super Ljava/lang/Object;
.source "ListenerQueue.java"


# static fields
.field private static final e:Ljava/lang/String; = "b"

.field private static f:Lcom/ifengyu/blelib/b/b;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/blelib/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/blelib/b/b;

    invoke-direct {v0}, Lcom/ifengyu/blelib/b/b;-><init>()V

    sput-object v0, Lcom/ifengyu/blelib/b/b;->f:Lcom/ifengyu/blelib/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->b:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/blelib/b/b;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/blelib/b/b;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/blelib/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/blelib/b/b;->k()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/blelib/b/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/blelib/b/b;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/ifengyu/blelib/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/blelib/b/b;->i()V

    return-void
.end method

.method public static d()Lcom/ifengyu/blelib/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/blelib/b/b;->f:Lcom/ifengyu/blelib/b/b;

    return-object v0
.end method

.method private i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->b:Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/blelib/b/b$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/blelib/b/b$a;-><init>(Lcom/ifengyu/blelib/b/b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->a:Z

    return-void
.end method

.method private k()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/ifengyu/blelib/b/b;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/blelib/b/c;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v4}, Lcom/ifengyu/blelib/b/c;->a()J

    move-result-wide v5

    sub-long v5, v0, v5

    .line 6
    :try_start_0
    invoke-virtual {v4}, Lcom/ifengyu/blelib/b/c;->b()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-ltz v4, :cond_0

    .line 7
    sget-object v4, Lcom/ifengyu/blelib/b/b;->e:Ljava/lang/String;

    const-string v5, "ListenerQueue#find timeout msg"

    invoke-static {v4, v5}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ifengyu/blelib/b/b;->g(I)Lcom/ifengyu/blelib/b/c;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, -0x5

    .line 9
    invoke-virtual {v3, v4}, Lcom/ifengyu/blelib/b/c;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 10
    sget-object v4, Lcom/ifengyu/blelib/b/b;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string v5, "ListenerQueue#timerImpl onTimeout is Error,exception is %s"

    invoke-static {v4, v5, v3}, Lcom/ifengyu/library/utils/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/blelib/b/b;->e:Ljava/lang/String;

    const-string v1, "ListenerQueue#onDestroy "

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/blelib/b/b;->j()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/blelib/b/b;->e:Ljava/lang/String;

    const-string v1, "ListenerQueue#onStart run"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/blelib/b/b;->a:Z

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/blelib/b/b;->i()V

    return-void
.end method

.method public g(I)Lcom/ifengyu/blelib/b/c;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/blelib/b/c;

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(ILcom/ifengyu/blelib/b/c;)V
    .locals 1

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/blelib/b/b;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_1
    :goto_0
    sget-object p1, Lcom/ifengyu/blelib/b/b;->e:Ljava/lang/String;

    const-string p2, "ListenerQueue#push error, cause by Illegal params"

    invoke-static {p1, p2}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
