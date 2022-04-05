.class public Lcom/ifengyu/blelib/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String; = "d"

.field private static f:Lcom/ifengyu/blelib/c/d;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ifengyu/blelib/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/blelib/c/d;

    invoke-direct {v0}, Lcom/ifengyu/blelib/c/d;-><init>()V

    sput-object v0, Lcom/ifengyu/blelib/c/d;->f:Lcom/ifengyu/blelib/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->a:Z

    iput-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->b:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/blelib/c/d;->c:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/blelib/c/d;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/blelib/c/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/d;->f()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/blelib/c/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/blelib/c/d;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/blelib/c/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/d;->d()V

    return-void
.end method

.method public static c()Lcom/ifengyu/blelib/c/d;
    .locals 1

    sget-object v0, Lcom/ifengyu/blelib/c/d;->f:Lcom/ifengyu/blelib/c/d;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->b:Z

    iget-object v0, p0, Lcom/ifengyu/blelib/c/d;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ifengyu/blelib/c/d$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/blelib/c/d$a;-><init>(Lcom/ifengyu/blelib/c/d;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->a:Z

    return-void
.end method

.method private f()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/blelib/c/d;->c:Ljava/util/Map;

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

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/blelib/c/e;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/ifengyu/blelib/c/e;->a()J

    move-result-wide v5

    sub-long v5, v0, v5

    :try_start_0
    invoke-virtual {v4}, Lcom/ifengyu/blelib/c/e;->b()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-ltz v4, :cond_0

    sget-object v4, Lcom/ifengyu/blelib/c/d;->e:Ljava/lang/String;

    const-string v5, "ListenerQueue#find timeout msg"

    invoke-static {v4, v5}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ifengyu/blelib/c/d;->a(I)Lcom/ifengyu/blelib/c/e;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, -0x5

    invoke-virtual {v3, v4}, Lcom/ifengyu/blelib/c/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/ifengyu/blelib/c/d;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string v5, "ListenerQueue#timerImpl onTimeout is Error,exception is %s"

    invoke-static {v4, v5, v3}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/blelib/c/e;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/blelib/c/d;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/blelib/c/d;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/blelib/c/e;

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    sget-object v0, Lcom/ifengyu/blelib/c/d;->e:Ljava/lang/String;

    const-string v1, "ListenerQueue#onDestroy "

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/blelib/c/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/d;->e()V

    return-void
.end method

.method public a(ILcom/ifengyu/blelib/c/e;)V
    .locals 1

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/blelib/c/d;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/ifengyu/blelib/c/d;->e:Ljava/lang/String;

    const-string p2, "ListenerQueue#push error, cause by Illegal params"

    invoke-static {p1, p2}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lcom/ifengyu/blelib/c/d;->e:Ljava/lang/String;

    const-string v1, "ListenerQueue#onStart run"

    invoke-static {v0, v1}, Lcom/ifengyu/blelib/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/blelib/c/d;->a:Z

    invoke-direct {p0}, Lcom/ifengyu/blelib/c/d;->d()V

    return-void
.end method
