.class public Lcom/amap/api/col/l3/aw;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/aw$a;,
        Lcom/amap/api/col/l3/aw$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z = false

.field public static d:Ljava/lang/String; = ""

.field private static volatile k:Lcom/amap/api/col/l3/aw;


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/av;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/api/col/l3/aw$b;

.field public f:Lcom/amap/api/col/l3/ba;

.field g:Lcom/amap/api/col/l3/bc;

.field h:Lcom/amap/api/col/l3/az;

.field private i:Landroid/content/Context;

.field private j:Z

.field private l:Lcom/amap/api/col/l3/aw$a;

.field private m:Lcom/amap/api/col/l3/bf;

.field private n:Lcom/amap/api/col/l3/bl;

.field private o:Ljava/util/concurrent/ExecutorService;

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/util/concurrent/ExecutorService;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/aw;->j:Z

    .line 3
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->o:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->p:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->q:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->e:Lcom/amap/api/col/l3/aw$b;

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->h:Lcom/amap/api/col/l3/az;

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/col/l3/aw;->r:Z

    .line 10
    iput-object p1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/aw;Ljava/lang/String;)Lcom/amap/api/col/l3/av;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;
    .locals 2

    .line 4
    sget-object v0, Lcom/amap/api/col/l3/aw;->k:Lcom/amap/api/col/l3/aw;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/amap/api/col/l3/aw;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/aw;->k:Lcom/amap/api/col/l3/aw;

    if-nez v1, :cond_0

    .line 7
    sget-boolean v1, Lcom/amap/api/col/l3/aw;->b:Z

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/amap/api/col/l3/aw;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/aw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/col/l3/aw;->k:Lcom/amap/api/col/l3/aw;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/col/l3/aw;->k:Lcom/amap/api/col/l3/aw;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/bl;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/api/col/l3/aw;->n:Lcom/amap/api/col/l3/bl;

    return-object p0
.end method

.method private a(Lcom/amap/api/col/l3/av;Z)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->g:Lcom/amap/api/col/l3/bc;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/amap/api/col/l3/bc;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/bc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->g:Lcom/amap/api/col/l3/bc;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->p:Ljava/util/concurrent/ExecutorService;

    .line 41
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3/aw$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/col/l3/aw$2;-><init>(Lcom/amap/api/col/l3/aw;Lcom/amap/api/col/l3/av;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "requestDelete"

    const-string v0, "removeExcecRunnable"

    .line 42
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/amap/api/col/l3/aw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/aw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/aw;->g()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/aw;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/aw;->l:Lcom/amap/api/col/l3/aw$a;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/aw;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/aw;->j:Z

    return p0
.end method

.method private f(Lcom/amap/api/col/l3/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/amap/api/col/l3/aw;->g()V

    if-eqz p1, :cond_1

    .line 21
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->q:Ljava/util/concurrent/ExecutorService;

    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3/aw$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3/aw$3;-><init>(Lcom/amap/api/col/l3/aw;Lcom/amap/api/col/l3/av;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "startDownload"

    const-string v1, "downloadExcecRunnable"

    .line 24
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_1
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic f(Lcom/amap/api/col/l3/aw;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/aw;->j:Z

    return v0
.end method

.method private g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/av;

    .line 6
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 9
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(Ljava/lang/String;)Lcom/amap/api/col/l3/av;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/av;

    .line 4
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 6
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/amap/api/col/l3/bl;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->n:Lcom/amap/api/col/l3/bl;

    :try_start_0
    const-string v1, "000001"

    .line 14
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bl;->a(Ljava/lang/String;)Lcom/amap/api/col/l3/bg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->n:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/bl;->c(Ljava/lang/String;)V

    const-string v1, "100000"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bj;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->n:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/bl;->a(Lcom/amap/api/col/l3/bg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "changeBadCase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/amap/api/col/l3/aw$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3/aw$b;-><init>(Lcom/amap/api/col/l3/aw;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->e:Lcom/amap/api/col/l3/aw$b;

    .line 17
    new-instance v0, Lcom/amap/api/col/l3/ba;

    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/l3/ba;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    .line 18
    invoke-static {}, Lcom/amap/api/col/l3/bf;->a()Lcom/amap/api/col/l3/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->m:Lcom/amap/api/col/l3/bf;

    .line 19
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/aw;->a:Ljava/lang/String;

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "offlinemapv4.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    const-string v2, "offlinemapv4.png"

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/bt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/amap/api/col/l3/bt;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v1, :cond_6

    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/bt;->a(Lorg/json/JSONObject;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/ba;->a(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    const-string v0, "MapDownloadManager"

    const-string v2, "paseJson io"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    monitor-enter v0

    .line 23
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ba;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    .line 24
    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v3, :cond_8

    .line 25
    iget-object v4, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    new-instance v5, Lcom/amap/api/col/l3/av;

    iget-object v6, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/amap/api/col/l3/av;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 27
    new-instance v0, Lcom/amap/api/col/l3/az;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->h:Lcom/amap/api/col/l3/az;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_2
    move-exception v1

    .line 29
    monitor-exit v0

    throw v1
.end method

.method public final a(Lcom/amap/api/col/l3/av;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/aw;->a(Lcom/amap/api/col/l3/av;Z)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/aw$a;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amap/api/col/l3/aw;->l:Lcom/amap/api/col/l3/aw$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 30
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/aw;->l:Lcom/amap/api/col/l3/aw$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/aw$a;->b(Lcom/amap/api/col/l3/av;)V

    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/aw;->o:Ljava/util/concurrent/ExecutorService;

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/l3/aw$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3/aw$1;-><init>(Lcom/amap/api/col/l3/aw;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDownloadManager"

    const-string v1, "checkUpdate"

    .line 35
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->n:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bl;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3/bg;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v1, Lcom/amap/api/col/l3/bj;->l:I

    const/4 v3, 0x4

    const/4 v4, 0x7

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    if-ltz v2, :cond_1

    const/4 v2, 0x3

    iput v2, v1, Lcom/amap/api/col/l3/bj;->l:I

    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/aw;->g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v5, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/amap/api/col/l3/aw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Lcom/amap/api/col/l3/av;->a(I)V

    goto :goto_1

    :cond_2
    iget v3, v1, Lcom/amap/api/col/l3/bj;->l:I

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3/av;->a(I)V

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/l3/aw;->n:Lcom/amap/api/col/l3/bl;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bj;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amap/api/col/l3/bl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/av;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/ba;->a(Lcom/amap/api/col/l3/av;)V

    goto/16 :goto_0

    .line 3
    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->l:Lcom/amap/api/col/l3/aw$a;

    if-eqz v0, :cond_6

    .line 4
    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/col/l3/aw$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "verifyCallBack"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final b(Lcom/amap/api/col/l3/av;)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->m:Lcom/amap/api/col/l3/bf;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/col/l3/bf;->a(Lcom/amap/api/col/l3/be;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/amap/api/col/l3/bd;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/bd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bd;->a(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bx;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/ba;->a(Ljava/util/List;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ba;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    .line 10
    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 11
    iget-object v4, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3/av;

    .line 12
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    sget-object v7, Lcom/amap/api/col/l3/aw;->d:Ljava/lang/String;

    .line 15
    invoke-static {v7, v6}, Lcom/amap/api/col/l3/aw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v5}, Lcom/amap/api/col/l3/av;->j()V

    .line 17
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setCity(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setAdcode(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setSize(J)V

    .line 23
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setCode(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setJianpin(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c(Lcom/amap/api/col/l3/av;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ba;->a(Lcom/amap/api/col/l3/av;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->e:Lcom/amap/api/col/l3/aw$b;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 37
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/amap/api/col/l3/aw;->e:Lcom/amap/api/col/l3/aw$b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object p1

    if-nez p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->l:Lcom/amap/api/col/l3/aw$a;

    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/aw$a;->c(Lcom/amap/api/col/l3/av;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDownloadManager"

    const-string v1, "remove"

    .line 30
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/av;)V

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/aw;->a(Lcom/amap/api/col/l3/av;Z)V

    return-void
.end method

.method public final d()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/av;

    .line 4
    invoke-virtual {v2}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v3

    iget-object v4, v2, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v3

    iget-object v4, v2, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/av;)V

    .line 7
    invoke-virtual {v2}, Lcom/amap/api/col/l3/av;->g()V

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d(Lcom/amap/api/col/l3/av;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->m:Lcom/amap/api/col/l3/bf;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/bf;->a(Lcom/amap/api/col/l3/be;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/aw;->f(Lcom/amap/api/col/l3/av;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/aw;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/av;

    .line 4
    invoke-virtual {v2}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v3

    iget-object v4, v2, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/amap/api/col/l3/av;->g()V

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e(Lcom/amap/api/col/l3/av;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->m:Lcom/amap/api/col/l3/bf;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/bf;->b(Lcom/amap/api/col/l3/be;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->h(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->f(Lcom/amap/api/col/l3/av;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/aw;->g(Ljava/lang/String;)Lcom/amap/api/col/l3/av;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->o:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->h:Lcom/amap/api/col/l3/az;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->h:Lcom/amap/api/col/l3/az;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    :cond_2
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->h:Lcom/amap/api/col/l3/az;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->e:Lcom/amap/api/col/l3/aw$b;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->e:Lcom/amap/api/col/l3/aw$b;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->m:Lcom/amap/api/col/l3/bf;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bf;->b()V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/aw;->f:Lcom/amap/api/col/l3/ba;

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ba;->g()V

    .line 17
    :cond_6
    sput-object v1, Lcom/amap/api/col/l3/aw;->k:Lcom/amap/api/col/l3/aw;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/col/l3/aw;->b:Z

    .line 18
    iput-boolean v0, p0, Lcom/amap/api/col/l3/aw;->j:Z

    .line 19
    monitor-enter p0

    :try_start_0
    iput-object v1, p0, Lcom/amap/api/col/l3/aw;->l:Lcom/amap/api/col/l3/aw$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
