.class public Lcom/amap/api/col/sl/ea;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"


# static fields
.field static a:I

.field static b:Z

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/col/sl/dw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/amap/api/col/sl/ea;->a:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/col/sl/ea;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/ea;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static declared-synchronized a(IZ)V
    .locals 2

    const-class v1, Lcom/amap/api/col/sl/ea;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/amap/api/col/sl/ea;->a:I

    sput-boolean p1, Lcom/amap/api/col/sl/ea;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/ea$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/ea$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static declared-synchronized a(Lcom/amap/api/col/sl/dz;Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/amap/api/col/sl/ea;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/amap/api/col/sl/ea$1;

    invoke-direct {v2, p1, p0}, Lcom/amap/api/col/sl/ea$1;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/dz;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
