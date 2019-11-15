.class public final Lcom/amap/api/col/sl/dg;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/dg$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/amap/api/col/sl/dg;

.field private static final d:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/sl/cz;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/sl/dg$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/col/sl/dg;

    invoke-direct {v0}, Lcom/amap/api/col/sl/dg;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/dg;->a:Lcom/amap/api/col/sl/dg;

    new-instance v0, Lcom/amap/api/col/sl/dg$1;

    invoke-direct {v0}, Lcom/amap/api/col/sl/dg$1;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/dg;->d:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/dg;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/dg;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/dg;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b()Lcom/amap/api/col/sl/dg;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/dg;->a:Lcom/amap/api/col/sl/dg;

    return-object v0
.end method

.method private static b(Lcom/amap/api/col/sl/bz;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/sl/bz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/cz;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Lcom/amap/api/col/sl/dg;->b(Lcom/amap/api/col/sl/bz;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/dg;->b:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/cz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v1, Lcom/amap/api/col/sl/de;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Lcom/amap/api/col/sl/de;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->b:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amap/api/col/sl/dc;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/dc;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method final a(Lcom/amap/api/col/sl/bz;)Lcom/amap/api/col/sl/dg$a;
    .locals 4

    iget-object v2, p0, Lcom/amap/api/col/sl/dg;->c:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/sl/dg;->b(Lcom/amap/api/col/sl/bz;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/dg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/amap/api/col/sl/dg$a;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/dg$a;-><init>(Lcom/amap/api/col/sl/dg;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->c:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method final a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amap/api/col/sl/dg;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/dg;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/sl/dg;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
