.class public Lcom/amap/api/col/l3/ik;
.super Ljava/lang/Object;


# static fields
.field static a:I = 0x3e8

.field static b:Z = false

.field static c:I = 0x14

.field private static d:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/col/l3/ig;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/ik;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static declared-synchronized a(IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/amap/api/col/l3/ik;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/amap/api/col/l3/ik;->a:I

    sput-boolean p1, Lcom/amap/api/col/l3/ik;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(IZI)V
    .locals 1

    const-class v0, Lcom/amap/api/col/l3/ik;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/amap/api/col/l3/ik;->a:I

    sput-boolean p1, Lcom/amap/api/col/l3/ik;->b:Z

    const/16 p0, 0xa

    if-lt p2, p0, :cond_0

    const/16 p0, 0x64

    if-le p2, p0, :cond_1

    :cond_0
    const/16 p2, 0x14

    :cond_1
    sput p2, Lcom/amap/api/col/l3/ik;->c:I

    div-int/lit8 p0, p2, 0x5

    sget p1, Lcom/amap/api/col/l3/ik;->e:I

    if-le p0, p1, :cond_2

    div-int/lit8 p2, p2, 0x5

    sput p2, Lcom/amap/api/col/l3/ik;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/l3/gv;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3/ik$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/ik$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static declared-synchronized a(Lcom/amap/api/col/l3/ij;Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/amap/api/col/l3/ik;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/gv;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/amap/api/col/l3/ik$1;

    invoke-direct {v2, p1, p0}, Lcom/amap/api/col/l3/ik$1;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/ij;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/amap/api/col/l3/ik;->e:I

    return v0
.end method
