.class public final Lcom/amap/api/col/sl/cm;
.super Lcom/amap/api/col/sl/cj;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/sl/cm;->f:Ljava/util/Set;

    new-instance v0, Lcom/amap/api/col/sl/cm$2;

    invoke-direct {v0}, Lcom/amap/api/col/sl/cm$2;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/cm;->h:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/amap/api/col/sl/cj;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/sl/cm;->d:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/cm;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/cm;->c:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "com.loc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/cm;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/cm;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/cm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/cm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const-class v1, Lcom/amap/api/col/sl/cm;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "sdk info is null"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v2, "sdk name is invalid"

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/amap/api/col/sl/co;

    invoke-direct {v0}, Lcom/amap/api/col/sl/co;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amap/api/col/sl/co;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/amap/api/col/sl/cm;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amap/api/col/sl/bz;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    check-cast v0, Lcom/amap/api/col/sl/cm;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_3
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/col/sl/cm;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/cm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    :goto_1
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    sget-object v2, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    iget-boolean v2, v2, Lcom/amap/api/col/sl/cj;->c:Z

    invoke-virtual {v0, p0, p1, v2}, Lcom/amap/api/col/sl/cj;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    check-cast v0, Lcom/amap/api/col/sl/cm;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_5
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/amap/api/col/sl/cj;->c:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public static a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Lcom/amap/api/col/sl/bo;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/col/sl/bo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amap/api/col/sl/bo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amap/api/col/sl/bo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/amap/api/col/sl/cm;->a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gsid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "networkError"

    invoke-virtual {v1, p0, v0, v2}, Lcom/amap/api/col/sl/cj;->a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v1, Lcom/amap/api/col/sl/cm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/cm;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/cm;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    invoke-static {}, Lcom/amap/api/col/sl/di;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sget-object v2, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    iget-object v0, v0, Lcom/amap/api/col/sl/cj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    iget-object v0, v0, Lcom/amap/api/col/sl/cj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static b(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/col/sl/cj;->a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/cm;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/col/sl/cm;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/col/sl/cm;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/ck;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/cj;->a()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized d()Ljava/util/concurrent/ExecutorService;
    .locals 10

    const-class v9, Lcom/amap/api/col/sl/cm;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/cm;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/sl/cm;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x100

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v8, Lcom/amap/api/col/sl/cm;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/amap/api/col/sl/cm;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/col/sl/cm;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized e()Lcom/amap/api/col/sl/cm;
    .locals 2

    const-class v1, Lcom/amap/api/col/sl/cm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/cj;->a:Lcom/amap/api/col/sl/cj;

    check-cast v0, Lcom/amap/api/col/sl/cm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/ck;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/amap/api/col/sl/cm$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/col/sl/cm$1;-><init>(Lcom/amap/api/col/sl/cm;Landroid/content/Context;Lcom/amap/api/col/sl/bz;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final a(Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->d:Landroid/content/Context;

    invoke-static {p1, v0, p3, p2}, Lcom/amap/api/col/sl/cn;->b(Lcom/amap/api/col/sl/bz;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/amap/api/col/sl/cn;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amap/api/col/sl/cm;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/amap/api/col/sl/cm;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/sl/cm;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
