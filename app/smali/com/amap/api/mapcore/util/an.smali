.class public Lcom/amap/api/mapcore/util/an;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/an$a;,
        Lcom/amap/api/mapcore/util/an$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static d:Ljava/lang/String;

.field private static volatile k:Lcom/amap/api/mapcore/util/an;


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/am;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/api/mapcore/util/an$b;

.field public f:Lcom/amap/api/mapcore/util/ar;

.field g:Lcom/amap/api/mapcore/util/at;

.field h:Lcom/amap/api/mapcore/util/aq;

.field private i:Landroid/content/Context;

.field private j:Z

.field private l:Lcom/amap/api/mapcore/util/an$a;

.field private m:Lcom/amap/api/mapcore/util/aw;

.field private n:Lcom/amap/api/mapcore/util/bc;

.field private o:Ljava/util/concurrent/ExecutorService;

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/util/concurrent/ExecutorService;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/an;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/an;->b:Z

    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/an;->j:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->p:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/an;->r:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/an;Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/an;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/an;
    .locals 3

    sget-object v0, Lcom/amap/api/mapcore/util/an;->k:Lcom/amap/api/mapcore/util/an;

    if-nez v0, :cond_1

    const-class v1, Lcom/amap/api/mapcore/util/an;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/an;->k:Lcom/amap/api/mapcore/util/an;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amap/api/mapcore/util/an;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/an;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/util/an;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/an;->k:Lcom/amap/api/mapcore/util/an;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/an;->k:Lcom/amap/api/mapcore/util/an;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/bc;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    return-object v0
.end method

.method private a(Lcom/amap/api/mapcore/util/am;Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->g:Lcom/amap/api/mapcore/util/at;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/at;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->g:Lcom/amap/api/mapcore/util/at;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->p:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/an$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/mapcore/util/an$2;-><init>(Lcom/amap/api/mapcore/util/an;Lcom/amap/api/mapcore/util/am;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "requestDelete"

    const-string v2, "removeExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/an;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/an;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/an;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/an;->j:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/an;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/an;->k()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/an;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/an;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/an;->j:Z

    return v0
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/an;->k:Lcom/amap/api/mapcore/util/an;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/an;->b:Z

    return-void
.end method

.method private f(Lcom/amap/api/mapcore/util/am;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/an;->k()V

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/an$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/an$3;-><init>(Lcom/amap/api/mapcore/util/an;Lcom/amap/api/mapcore/util/am;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "startDownload"

    const-string v2, "downloadExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/amap/api/mapcore/util/an;->a:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .locals 3

    :try_start_0
    const-string v0, "000001"

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/bc;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/ax;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/bc;->c(Ljava/lang/String;)V

    const-string v0, "100000"

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ax;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bc;->a(Lcom/amap/api/mapcore/util/ax;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "changeBadCase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ar;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "offlinemapv4.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    const-string v2, "offlinemapv4.png"

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/an;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    const-string v1, "MapDownloadManager"

    const-string v2, "paseJson io"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/amap/api/mapcore/util/bk;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private j(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method private j()V
    .locals 6

    const/4 v5, 0x7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bc;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/ax;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget v2, v0, Lcom/amap/api/mapcore/util/ax;->l:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/amap/api/mapcore/util/ax;->l:I

    if-eq v2, v5, :cond_1

    iget v2, v0, Lcom/amap/api/mapcore/util/ax;->l:I

    if-ltz v2, :cond_1

    const/4 v2, 0x3

    iput v2, v0, Lcom/amap/api/mapcore/util/ax;->l:I

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/an;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/amap/api/mapcore/util/an;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v5}, Lcom/amap/api/mapcore/util/am;->a(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/am;->setVersion(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/bc;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    iget v3, v0, Lcom/amap/api/mapcore/util/ax;->l:I

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/am;->a(I)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ax;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/am;->setCompleteCode(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/am;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/ar;->a(Lcom/amap/api/mapcore/util/am;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bc;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->n:Lcom/amap/api/mapcore/util/bc;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/an;->h()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/an$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/an$b;-><init>(Lcom/amap/api/mapcore/util/an;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    new-instance v0, Lcom/amap/api/mapcore/util/ar;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/ar;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aw;->a(I)Lcom/amap/api/mapcore/util/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->g(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/an;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    new-instance v5, Lcom/amap/api/mapcore/util/am;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/amap/api/mapcore/util/am;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Lcom/amap/api/mapcore/util/aq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aq;->start()V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/am;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/am;Z)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/an$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->b(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/an$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/an$1;-><init>(Lcom/amap/api/mapcore/util/an;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "checkUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/ax;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/an;->j()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/an$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "verifyCallBack"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/au;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/au;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/au;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/au;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ar;->a(Ljava/util/List;)V

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->getPinyin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    sget-object v7, Lcom/amap/api/mapcore/util/an;->d:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/amap/api/mapcore/util/an;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->j()V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setCity(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getAdcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/amap/api/mapcore/util/am;->setSize(J)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getJianpin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setJianpin(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/am;->setPinyin(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public b(Lcom/amap/api/mapcore/util/am;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/aw;->a(Lcom/amap/api/mapcore/util/av;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/fn; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/an;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 5

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v3

    iget-object v4, v0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v3

    iget-object v4, v0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/am;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->g()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/am;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ar;->a(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/an$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/an$b;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/an;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/an$a;->c(Lcom/amap/api/mapcore/util/am;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "remove"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/am;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/am;Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v3

    iget-object v4, v0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->g()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/amap/api/mapcore/util/am;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/aw;->a(Lcom/amap/api/mapcore/util/av;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/an;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/an;->f(Lcom/amap/api/mapcore/util/am;)V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aq;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aq;->interrupt()V

    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->h:Lcom/amap/api/mapcore/util/aq;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/an$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/an;->e:Lcom/amap/api/mapcore/util/an$b;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->b()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->f:Lcom/amap/api/mapcore/util/ar;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ar;->g()V

    :cond_6
    invoke-static {}, Lcom/amap/api/mapcore/util/an;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/an;->j:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/an;->g()V

    return-void
.end method

.method public e(Lcom/amap/api/mapcore/util/am;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an;->m:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/aw;->b(Lcom/amap/api/mapcore/util/av;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/an;->j(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/an;->f(Lcom/amap/api/mapcore/util/am;)V

    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/an;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/util/am;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/am;->getAdcode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/an;->l:Lcom/amap/api/mapcore/util/an$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
